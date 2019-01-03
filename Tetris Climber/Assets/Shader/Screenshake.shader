// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-4676-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31675,y:33130,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31829,y:33827,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32477,y:33528,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-3385-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Multiply,id:4412,x:31912,y:33105,varname:node_4412,prsc:2|A-4219-UVOUT,B-2150-OUT;n:type:ShaderForge.SFN_Vector1,id:2150,x:31824,y:33249,varname:node_2150,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:3385,x:32295,y:33116,varname:node_3385,prsc:2|A-4412-OUT,B-7948-OUT;n:type:ShaderForge.SFN_Time,id:3757,x:30837,y:33404,varname:node_3757,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6862,x:30802,y:33569,varname:node_6862,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:4454,x:31009,y:33442,varname:node_4454,prsc:2|A-3757-T,B-6862-OUT;n:type:ShaderForge.SFN_Sin,id:5094,x:31398,y:33370,varname:node_5094,prsc:2|IN-4454-OUT;n:type:ShaderForge.SFN_Multiply,id:6916,x:32000,y:33473,varname:node_6916,prsc:2|A-7446-OUT,B-3612-OUT;n:type:ShaderForge.SFN_Append,id:7948,x:32241,y:33778,varname:node_7948,prsc:2|A-4286-OUT,B-6916-OUT;n:type:ShaderForge.SFN_Vector1,id:3129,x:31682,y:33496,varname:node_3129,prsc:2,v1:0.004;n:type:ShaderForge.SFN_Add,id:7161,x:31649,y:33789,varname:node_7161,prsc:2|A-4454-OUT,B-3439-R;n:type:ShaderForge.SFN_Tex2d,id:3439,x:31444,y:33789,ptovrint:False,ptlb:node_3439,ptin:_node_3439,varname:node_3439,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e7615bf14a6fc9b4e88755d6ac3fba67,ntxv:0,isnm:False|UVIN-6875-OUT;n:type:ShaderForge.SFN_Append,id:6875,x:31284,y:33787,varname:node_6875,prsc:2|A-4454-OUT,B-6200-OUT;n:type:ShaderForge.SFN_Vector1,id:6200,x:31051,y:33853,varname:node_6200,prsc:2,v1:0;n:type:ShaderForge.SFN_Frac,id:7446,x:31824,y:33385,varname:node_7446,prsc:2|IN-4419-OUT;n:type:ShaderForge.SFN_Multiply,id:4419,x:31649,y:33348,varname:node_4419,prsc:2|A-5094-OUT,B-1723-OUT;n:type:ShaderForge.SFN_Vector1,id:1723,x:31500,y:33521,varname:node_1723,prsc:2,v1:100;n:type:ShaderForge.SFN_Sin,id:6988,x:31468,y:34018,varname:node_6988,prsc:2|IN-4454-OUT;n:type:ShaderForge.SFN_Multiply,id:4286,x:32217,y:33993,varname:node_4286,prsc:2|A-6828-OUT,B-3612-OUT;n:type:ShaderForge.SFN_Vector1,id:5266,x:31782,y:34224,varname:node_5266,prsc:2,v1:0.004;n:type:ShaderForge.SFN_Frac,id:6828,x:31894,y:34033,varname:node_6828,prsc:2|IN-5498-OUT;n:type:ShaderForge.SFN_Multiply,id:5498,x:31719,y:33996,varname:node_5498,prsc:2|A-6988-OUT,B-8965-OUT;n:type:ShaderForge.SFN_Vector1,id:8965,x:31570,y:34169,varname:node_8965,prsc:2,v1:1000;n:type:ShaderForge.SFN_ValueProperty,id:3612,x:31649,y:33645,ptovrint:False,ptlb:shake intensity,ptin:_shakeintensity,varname:node_3612,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;proporder:4430-3439-3612;pass:END;sub:END;*/

Shader "Shader Forge/Screenshake" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _node_3439 ("node_3439", 2D) = "white" {}
        _shakeintensity ("shake intensity", Float ) = 0.01
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _shakeintensity;
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
                float4 node_3757 = _Time;
                float node_4454 = (node_3757.g*10.0);
                float node_6916 = (frac((sin(node_4454)*100.0))*_shakeintensity);
                float2 node_3385 = ((i.uv0*1.0)+float2((frac((sin(node_4454)*1000.0))*_shakeintensity),node_6916));
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_3385, _MainTex));
                float3 emissive = node_1672.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
