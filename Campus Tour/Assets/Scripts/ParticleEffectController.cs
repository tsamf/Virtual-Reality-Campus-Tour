using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ParticleEffectController : MonoBehaviour
{
    public AudioClip teleportClip;
    public AudioClip warpClip;
    public float teleportSpeed = 3.0f, warpSpeed = 1.0f;
    public float teleportTimePassed = 0f;
    public float warpTimePassed = 0f;

    private ParticleSystem portalParticleSystem, warpParticleSystem;
    private controller controllerScript;
    private AudioSource audioSource;
    private bool gazing;
    private float teleportMaxScale = 1.0f;
    private float teleportMinScale = .4f;
    private float warpScale = 6f;

    // Use this for initialization33
    void Start () {
        portalParticleSystem = GameObject.FindGameObjectWithTag("PS_Portal").GetComponent<ParticleSystem>();
        portalParticleSystem.transform.localScale = new Vector3(teleportMinScale, teleportMinScale, teleportMinScale);

        warpParticleSystem = GameObject.FindGameObjectWithTag("PS_Warp").GetComponent<ParticleSystem>();
        controllerScript = GameObject.FindGameObjectWithTag("GameController").GetComponent<controller>();

        audioSource = gameObject.GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update () {
        if (portalParticleSystem.IsAlive())
        {
            if (gazing)
            {
                //Increase portal size 
                if (portalParticleSystem.transform.localScale.x < teleportMaxScale)
                {
                    //expand portal while being gazed upon
                    teleportTimePassed += Time.deltaTime;
                    ResizeParticleSystem(new Vector3(teleportMinScale, teleportMinScale, teleportMinScale), new Vector3(teleportMaxScale, teleportMaxScale, teleportMaxScale), teleportSpeed, teleportTimePassed);
                }
                //Weve Hit Warp Size
                else if (portalParticleSystem.transform.localScale.x >= teleportMaxScale && portalParticleSystem.transform.localScale.x < warpScale)
                {
                    //Resize to warp scale
                    warpTimePassed += Time.deltaTime;
                    ResizeParticleSystem(new Vector3(teleportMaxScale, teleportMaxScale, teleportMaxScale), new Vector3(warpScale, warpScale, warpScale), warpSpeed, warpTimePassed);
                    if (!warpParticleSystem.isPlaying)
                    {
                        warpParticleSystem.Play(true);
                    }

                    //Switch to warp sound
                    if (audioSource.clip.name == teleportClip.name)
                    {
                        audioSource.loop = false;
                        audioSource.clip = warpClip;
                        audioSource.Play();
                    }
                }
                //Go to next scene after warp
                else if (portalParticleSystem.transform.localScale.x >= warpScale)
                {
                    /* go to the next point of interest
                    *   stop the warp effect
                    *   rescale portal to min scale
                    */
                    teleportTimePassed = 0;
                    warpTimePassed = 0;
                    controllerScript.GoToNextPointofInterest();
                    DeactivatePortal();
                    portalParticleSystem.transform.localScale = new Vector3(teleportMinScale, teleportMinScale, teleportMinScale);
                }
            }
            else //shrink portal 
            {
                teleportTimePassed -= Time.deltaTime;
                if (teleportTimePassed < 0)
                {
                    teleportTimePassed = 0;
                }
                warpTimePassed = 0;
                ResizeParticleSystem(new Vector3(teleportMinScale, teleportMinScale, teleportMinScale), new Vector3(teleportMaxScale, teleportMaxScale, teleportMaxScale), teleportSpeed, teleportTimePassed);

                //If warpClip was playing switch back to teleportClip
                if (audioSource.clip.name == warpClip.name)
                {
                    audioSource.loop = true;
                    audioSource.clip = teleportClip;
                    audioSource.Play();
                }
                
            }
        }
    }

    private void ResizeParticleSystem(Vector3 lerpFrom, Vector3 lerpTo, float speed, float timePassed)
    {
        portalParticleSystem.transform.localScale = Vector3.Lerp(lerpFrom, lerpTo, (timePassed / speed));
    }

    public void ActivatePortal()
    {
        //enable collider
        gameObject.GetComponent<SphereCollider>().enabled = true;

        //start particles
        portalParticleSystem.Play(true);

        //start sound
        audioSource.loop = true;
        audioSource.clip = teleportClip;
        audioSource.Play();
    }

    public void DeactivatePortal()
    {
        //disable collider 
        gameObject.GetComponent<SphereCollider>().enabled = false;
       
        //Stop particales
        portalParticleSystem.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
        warpParticleSystem.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);

        //Stop sound
        audioSource.loop = false;
        audioSource.Stop();
    }

    public bool GetPortalIsAlive()
    {
        return portalParticleSystem.IsAlive();
    }

    public void PointerEnter()
    {
        gazing = true;
    }

    public void PointerExit()
    {
        gazing = false;
    }
}
