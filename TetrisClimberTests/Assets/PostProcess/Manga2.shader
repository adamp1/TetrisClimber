// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34019,y:33332,varname:node_2865,prsc:2|emission-8327-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31543,y:33190,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:31869,y:33181,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31512,y:33425,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:31943,y:33270,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Posterize,id:5330,x:32757,y:33493,varname:node_5330,prsc:2|IN-9686-OUT,STPS-8334-OUT;n:type:ShaderForge.SFN_Desaturate,id:9686,x:32542,y:33311,varname:node_9686,prsc:2|COL-7542-RGB;n:type:ShaderForge.SFN_Vector1,id:8334,x:32514,y:33572,varname:node_8334,prsc:2,v1:4;n:type:ShaderForge.SFN_Tex2d,id:6449,x:32752,y:33800,ptovrint:False,ptlb:hatch,ptin:_hatch,varname:node_6449,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5b6618f186737bd419e935361ba505f7,ntxv:0,isnm:False|UVIN-3416-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7151,x:31797,y:33706,varname:node_7151,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:85,x:31983,y:33767,varname:node_85,prsc:2|A-7151-UVOUT,B-5793-OUT;n:type:ShaderForge.SFN_Vector1,id:5793,x:31729,y:33924,varname:node_5793,prsc:2,v1:7.5;n:type:ShaderForge.SFN_Multiply,id:9885,x:33390,y:33878,varname:node_9885,prsc:2|A-5330-OUT,B-498-OUT;n:type:ShaderForge.SFN_Vector1,id:7559,x:32855,y:34082,varname:node_7559,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:498,x:33074,y:33968,varname:node_498,prsc:2|A-6449-RGB,B-7559-OUT;n:type:ShaderForge.SFN_Add,id:8767,x:32694,y:34082,varname:node_8767,prsc:2|A-85-OUT,B-3917-OUT;n:type:ShaderForge.SFN_Time,id:8800,x:31938,y:34134,varname:node_8800,prsc:2;n:type:ShaderForge.SFN_Floor,id:3917,x:32492,y:34204,varname:node_3917,prsc:2|IN-1332-OUT;n:type:ShaderForge.SFN_Sin,id:1245,x:32095,y:34209,varname:node_1245,prsc:2|IN-8800-T;n:type:ShaderForge.SFN_Multiply,id:6191,x:32679,y:34218,varname:node_6191,prsc:2|A-3917-OUT,B-782-OUT;n:type:ShaderForge.SFN_Vector1,id:782,x:32404,y:34435,varname:node_782,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:1332,x:32296,y:34232,varname:node_1332,prsc:2|A-1245-OUT,B-5448-OUT;n:type:ShaderForge.SFN_Vector1,id:5448,x:32090,y:34384,varname:node_5448,prsc:2,v1:10;n:type:ShaderForge.SFN_OneMinus,id:8252,x:32993,y:33266,varname:node_8252,prsc:2|IN-5330-OUT;n:type:ShaderForge.SFN_If,id:8227,x:33267,y:33305,varname:node_8227,prsc:2|A-8252-OUT,B-2162-OUT,GT-2162-OUT,EQ-2162-OUT,LT-317-OUT;n:type:ShaderForge.SFN_Vector1,id:317,x:33142,y:33475,varname:node_317,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2162,x:33011,y:33419,varname:node_2162,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9535,x:33342,y:33671,varname:node_9535,prsc:2|A-6449-R,B-9879-OUT;n:type:ShaderForge.SFN_Vector1,id:9879,x:33055,y:33812,varname:node_9879,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Lerp,id:8917,x:33492,y:33548,varname:node_8917,prsc:2|A-5330-OUT,B-9535-OUT,T-8227-OUT;n:type:ShaderForge.SFN_Clamp01,id:8327,x:33703,y:33565,varname:node_8327,prsc:2|IN-8917-OUT;n:type:ShaderForge.SFN_Tex2d,id:7481,x:31954,y:33450,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-2208-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Add,id:2208,x:31740,y:33450,varname:node_2208,prsc:2|A-3772-OUT,B-4219-UVOUT;n:type:ShaderForge.SFN_Vector2,id:3772,x:31594,y:33651,varname:node_3772,prsc:2,v1:0.01,v2:0.01;n:type:ShaderForge.SFN_ComponentMask,id:4196,x:32143,y:33832,varname:node_4196,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-85-OUT;n:type:ShaderForge.SFN_Multiply,id:797,x:32347,y:33960,varname:node_797,prsc:2|A-4196-R,B-5762-OUT;n:type:ShaderForge.SFN_Vector1,id:5762,x:32157,y:34048,varname:node_5762,prsc:2,v1:0.5625;n:type:ShaderForge.SFN_Append,id:3416,x:32528,y:33845,varname:node_3416,prsc:2|A-797-OUT,B-4196-G;n:type:ShaderForge.SFN_ScreenPos,id:3280,x:32304,y:34109,varname:node_3280,prsc:2,sctp:2;proporder:4430-6449;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
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
            uniform sampler2D _hatch; uniform float4 _hatch_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float node_8334 = 4.0;
                float node_5330 = floor(dot(node_1672.rgb,float3(0.3,0.59,0.11)) * node_8334) / (node_8334 - 1);
                float2 node_85 = (sceneUVs.rg*7.5);
                float2 node_4196 = node_85.rg;
                float2 node_3416 = float2((node_4196.r*0.5625),node_4196.g);
                float4 _hatch_var = tex2D(_hatch,TRANSFORM_TEX(node_3416, _hatch));
                float node_2162 = 1.0;
                float node_8227_if_leA = step((1.0 - node_5330),node_2162);
                float node_8227_if_leB = step(node_2162,(1.0 - node_5330));
                float node_8327 = saturate(lerp(node_5330,(_hatch_var.r*0.2),lerp((node_8227_if_leA*0.0)+(node_8227_if_leB*node_2162),node_2162,node_8227_if_leA*node_8227_if_leB)));
                float3 emissive = float3(node_8327,node_8327,node_8327);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
