using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;

public class controller : MonoBehaviour {

    public GameObject[] PointsOfInterest;
	public GameObject player;
    public int startingPoint = 0;
    public RawImage rawImage;
    public ParticleEffectController peControllerScript;
    
    private int currentPoint;
    
	// Use this for initialization
	void Start () {
        SetPointsOfInterest();
        currentPoint = startingPoint;
        UpdateCameraPosition();
        PlayVideo();
    }
	
	// Update is called once per frame
	void Update () {
        if (!PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().isPlaying && !peControllerScript.GetPortalIsAlive())
        {
            // activate portal particle system
            peControllerScript.ActivatePortal(); 
        }
    }

	public void GoToNextPointofInterest()
    {
        //Set next point index
        if (currentPoint == (PointsOfInterest.Length - 1))
		{
			currentPoint = startingPoint;
		}
		else
		{
			currentPoint++;
        }

        //Move the camera 
        UpdateCameraPosition();

        //Start the video
        PlayVideo();
	 }

    public void PlayVideo()
    {
        RenderTexture renderTexture = new RenderTexture(640, 480, 24);
        rawImage.enabled = true;
        PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().targetTexture = renderTexture;
        rawImage.material.SetTexture("_Video", renderTexture);
        PointsOfInterest[currentPoint].GetComponent<VideoPlayer>().Play();
    }

    private void SetPointsOfInterest()
    {
        for(int i = 0; i < PointsOfInterest.Length; i++ )
        {
            PointsOfInterest[i].transform.position = new Vector3(0,0, i * -100); 
        }
    }

    private void UpdateCameraPosition()
    {
        player.transform.position = PointsOfInterest[currentPoint].transform.position;
    }
}
