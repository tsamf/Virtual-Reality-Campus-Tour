// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33782,y:32512,varname:node_3138,prsc:2|emission-5847-RGB,alpha-1388-OUT;n:type:ShaderForge.SFN_Color,id:4839,x:31932,y:33012,ptovrint:False,ptlb:Chroma Color,ptin:_ChromaColor,varname:node_4839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6941177,c2:0.7019608,c3:0.6509804,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2594,x:31735,y:32423,ptovrint:False,ptlb:Video,ptin:_Video,varname:node_2594,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:21ce91afdaaa28f4fa9f6787fb703a54,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5847,x:31938,y:32423,varname:node_5847,prsc:2,tex:21ce91afdaaa28f4fa9f6787fb703a54,ntxv:0,isnm:False|TEX-2594-TEX;n:type:ShaderForge.SFN_Multiply,id:1344,x:32315,y:32903,varname:node_1344,prsc:2|A-4839-R,B-5432-OUT;n:type:ShaderForge.SFN_Multiply,id:4570,x:32310,y:33051,varname:node_4570,prsc:2|A-4839-G,B-9634-OUT;n:type:ShaderForge.SFN_Multiply,id:8371,x:32310,y:33207,varname:node_8371,prsc:2|A-4839-B,B-6505-OUT;n:type:ShaderForge.SFN_Multiply,id:2098,x:32315,y:32477,varname:node_2098,prsc:2|A-5847-R,B-4985-OUT;n:type:ShaderForge.SFN_Multiply,id:8721,x:32315,y:32610,varname:node_8721,prsc:2|A-5847-G,B-4955-OUT;n:type:ShaderForge.SFN_Multiply,id:8110,x:32315,y:32742,varname:node_8110,prsc:2|A-5847-B,B-9672-OUT;n:type:ShaderForge.SFN_Vector1,id:5432,x:32154,y:32947,varname:node_5432,prsc:2,v1:255;n:type:ShaderForge.SFN_Vector1,id:6505,x:32149,y:33251,varname:node_6505,prsc:2,v1:255;n:type:ShaderForge.SFN_Vector1,id:9634,x:32149,y:33095,varname:node_9634,prsc:2,v1:255;n:type:ShaderForge.SFN_Vector1,id:4985,x:32154,y:32511,varname:node_4985,prsc:2,v1:255;n:type:ShaderForge.SFN_Vector1,id:4955,x:32154,y:32644,varname:node_4955,prsc:2,v1:255;n:type:ShaderForge.SFN_Vector1,id:9672,x:32154,y:32776,varname:node_9672,prsc:2,v1:255;n:type:ShaderForge.SFN_Subtract,id:4807,x:32791,y:32646,varname:node_4807,prsc:2|A-2098-OUT,B-1344-OUT;n:type:ShaderForge.SFN_Subtract,id:4885,x:32791,y:32794,varname:node_4885,prsc:2|A-8721-OUT,B-4570-OUT;n:type:ShaderForge.SFN_Subtract,id:3145,x:32791,y:32933,varname:node_3145,prsc:2|A-8110-OUT,B-8371-OUT;n:type:ShaderForge.SFN_Multiply,id:2222,x:32970,y:32646,varname:node_2222,prsc:2|A-4807-OUT,B-4807-OUT;n:type:ShaderForge.SFN_Multiply,id:442,x:32970,y:32794,varname:node_442,prsc:2|A-4885-OUT,B-4885-OUT;n:type:ShaderForge.SFN_Multiply,id:4729,x:32970,y:32933,varname:node_4729,prsc:2|A-3145-OUT,B-3145-OUT;n:type:ShaderForge.SFN_Add,id:5765,x:33159,y:32710,varname:node_5765,prsc:2|A-2222-OUT,B-442-OUT;n:type:ShaderForge.SFN_Add,id:7762,x:33159,y:32933,varname:node_7762,prsc:2|A-5765-OUT,B-4729-OUT;n:type:ShaderForge.SFN_Slider,id:6055,x:32865,y:33176,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_6055,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:113.5299,max:447;n:type:ShaderForge.SFN_Subtract,id:9619,x:33559,y:33040,varname:node_9619,prsc:2|A-6081-OUT,B-6055-OUT;n:type:ShaderForge.SFN_Sqrt,id:6081,x:33335,y:32965,varname:node_6081,prsc:2|IN-7762-OUT;n:type:ShaderForge.SFN_Clamp01,id:1388,x:33559,y:32851,varname:node_1388,prsc:2|IN-9619-OUT;proporder:2594-4839-6055;pass:END;sub:END;*/

Shader "Shader Forge/ChromaKeyShader" {
    Properties {
        _Video ("Video", 2D) = "white" {}
        _ChromaColor ("Chroma Color", Color) = (0.6941177,0.7019608,0.6509804,1)
        _Offset ("Offset", Range(0, 447)) = 113.5299
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _ChromaColor;
            uniform sampler2D _Video; uniform float4 _Video_ST;
            uniform float _Offset;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_5847 = tex2D(_Video,TRANSFORM_TEX(i.uv0, _Video));
                float3 emissive = node_5847.rgb;
                float3 finalColor = emissive;
                float node_4807 = ((node_5847.r*255.0)-(_ChromaColor.r*255.0));
                float node_4885 = ((node_5847.g*255.0)-(_ChromaColor.g*255.0));
                float node_3145 = ((node_5847.b*255.0)-(_ChromaColor.b*255.0));
                return fixed4(finalColor,saturate((sqrt((((node_4807*node_4807)+(node_4885*node_4885))+(node_3145*node_3145)))-_Offset)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
