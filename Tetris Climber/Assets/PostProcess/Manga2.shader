// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34175,y:33490,varname:node_2865,prsc:2|emission-8090-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31543,y:33190,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:31869,y:33181,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31512,y:33425,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:33252,y:32877,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Posterize,id:5330,x:32757,y:33493,varname:node_5330,prsc:2|IN-9686-OUT,STPS-8334-OUT;n:type:ShaderForge.SFN_Desaturate,id:9686,x:32542,y:33311,varname:node_9686,prsc:2|COL-7542-RGB;n:type:ShaderForge.SFN_Vector1,id:8334,x:32514,y:33572,varname:node_8334,prsc:2,v1:16;n:type:ShaderForge.SFN_Tex2d,id:6449,x:32752,y:33800,ptovrint:False,ptlb:hatch,ptin:_hatch,varname:node_6449,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5988a138cf0f9574ebc540c4092332e6,ntxv:0,isnm:False|UVIN-8767-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7151,x:32067,y:33731,varname:node_7151,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:85,x:32283,y:33784,varname:node_85,prsc:2|A-7151-UVOUT,B-5793-OUT;n:type:ShaderForge.SFN_Vector1,id:5793,x:31999,y:33949,varname:node_5793,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Multiply,id:9885,x:33390,y:33878,varname:node_9885,prsc:2|A-5330-OUT,B-498-OUT;n:type:ShaderForge.SFN_Vector1,id:7559,x:32855,y:34082,varname:node_7559,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:498,x:33074,y:33968,varname:node_498,prsc:2|A-6449-RGB,B-7559-OUT;n:type:ShaderForge.SFN_Add,id:8767,x:32521,y:33972,varname:node_8767,prsc:2|A-85-OUT,B-3917-OUT;n:type:ShaderForge.SFN_Time,id:8800,x:31938,y:34134,varname:node_8800,prsc:2;n:type:ShaderForge.SFN_Floor,id:3917,x:32492,y:34204,varname:node_3917,prsc:2|IN-1332-OUT;n:type:ShaderForge.SFN_Sin,id:1245,x:32095,y:34209,varname:node_1245,prsc:2|IN-8800-T;n:type:ShaderForge.SFN_Multiply,id:6191,x:32679,y:34218,varname:node_6191,prsc:2|A-3917-OUT,B-782-OUT;n:type:ShaderForge.SFN_Vector1,id:782,x:32404,y:34435,varname:node_782,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:1332,x:32296,y:34232,varname:node_1332,prsc:2|A-1245-OUT,B-5448-OUT;n:type:ShaderForge.SFN_Vector1,id:5448,x:32090,y:34384,varname:node_5448,prsc:2,v1:10;n:type:ShaderForge.SFN_OneMinus,id:8252,x:32993,y:33266,varname:node_8252,prsc:2|IN-5330-OUT;n:type:ShaderForge.SFN_If,id:8227,x:33267,y:33305,varname:node_8227,prsc:2|A-8252-OUT,B-2162-OUT,GT-2162-OUT,EQ-2162-OUT,LT-317-OUT;n:type:ShaderForge.SFN_Vector1,id:317,x:33108,y:33463,varname:node_317,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2162,x:32973,y:33407,varname:node_2162,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9535,x:33182,y:33711,varname:node_9535,prsc:2|A-6449-R,B-9879-OUT;n:type:ShaderForge.SFN_Vector1,id:9879,x:32993,y:33851,varname:node_9879,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Lerp,id:8917,x:33363,y:33711,varname:node_8917,prsc:2|A-5330-OUT,B-9535-OUT,T-8227-OUT;n:type:ShaderForge.SFN_Clamp01,id:8327,x:33378,y:33533,varname:node_8327,prsc:2|IN-5330-OUT;n:type:ShaderForge.SFN_Tex2d,id:7481,x:31985,y:33502,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-2208-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Add,id:2208,x:31740,y:33450,varname:node_2208,prsc:2|A-3772-OUT,B-4219-UVOUT;n:type:ShaderForge.SFN_Vector2,id:3772,x:31594,y:33651,varname:node_3772,prsc:2,v1:0.01,v2:0.01;n:type:ShaderForge.SFN_Vector1,id:2042,x:33400,y:33157,varname:node_2042,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:9014,x:33431,y:33275,varname:node_9014,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:8090,x:33794,y:33587,varname:node_8090,prsc:2|A-7014-OUT,B-7542-RGB,T-2832-OUT;n:type:ShaderForge.SFN_If,id:4166,x:33827,y:33273,varname:node_4166,prsc:2|A-7542-RGB,B-2042-OUT,GT-2042-OUT,EQ-2042-OUT,LT-9014-OUT;n:type:ShaderForge.SFN_Length,id:9236,x:33738,y:33069,varname:node_9236,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_If,id:2832,x:34197,y:33169,varname:node_2832,prsc:2|A-9236-OUT,B-5372-OUT,GT-5372-OUT,EQ-928-OUT,LT-928-OUT;n:type:ShaderForge.SFN_Vector1,id:5372,x:33888,y:33167,varname:node_5372,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:928,x:33991,y:33248,varname:node_928,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:7014,x:33571,y:33575,varname:node_7014,prsc:2|A-8327-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Vector1,id:3334,x:33524,y:33758,varname:node_3334,prsc:2,v1:0;proporder:4430-6449;pass:END;sub:END;*/

Shader "Shader Forge/Manga" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _hatch ("hatch", 2D) = "white" {}
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
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float node_8334 = 16.0;
                float node_5330 = floor(dot(node_1672.rgb,float3(0.3,0.59,0.11)) * node_8334) / (node_8334 - 1);
                float node_8327 = saturate(node_5330);
                float node_7014 = (node_8327+0.0);
                float node_5372 = 1.0;
                float node_2832_if_leA = step(length(node_1672.rgb),node_5372);
                float node_2832_if_leB = step(node_5372,length(node_1672.rgb));
                float node_928 = 0.0;
                float3 emissive = lerp(float3(node_7014,node_7014,node_7014),node_1672.rgb,lerp((node_2832_if_leA*node_928)+(node_2832_if_leB*node_5372),node_928,node_2832_if_leA*node_2832_if_leB));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
