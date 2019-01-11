// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33440,y:33352,varname:node_2865,prsc:2|emission-4608-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31976,y:33159,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31734,y:33441,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32415,y:33345,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-4219-UVOUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Append,id:1979,x:32692,y:33438,varname:node_1979,prsc:2|A-7542-R,B-240-G;n:type:ShaderForge.SFN_Append,id:3517,x:32763,y:33651,varname:node_3517,prsc:2|A-1979-OUT,B-1463-B;n:type:ShaderForge.SFN_Append,id:3431,x:31973,y:33628,varname:node_3431,prsc:2|A-7782-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Add,id:4773,x:32221,y:33546,varname:node_4773,prsc:2|A-3431-OUT,B-4219-UVOUT;n:type:ShaderForge.SFN_Subtract,id:8114,x:32221,y:33767,varname:node_8114,prsc:2|A-4219-UVOUT,B-3431-OUT;n:type:ShaderForge.SFN_Tex2d,id:240,x:32415,y:33546,varname:node_240,prsc:2,ntxv:0,isnm:False|UVIN-4773-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Tex2d,id:1463,x:32499,y:33697,varname:node_1463,prsc:2,ntxv:0,isnm:False|UVIN-8114-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_ValueProperty,id:4350,x:31460,y:33852,ptovrint:False,ptlb:shift,ptin:_shift,varname:node_4350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Multiply,id:7782,x:31720,y:33752,varname:node_7782,prsc:2|A-4350-OUT,B-678-OUT;n:type:ShaderForge.SFN_Time,id:452,x:31208,y:33971,varname:node_452,prsc:2;n:type:ShaderForge.SFN_Sin,id:6090,x:31537,y:34004,varname:node_6090,prsc:2|IN-452-T;n:type:ShaderForge.SFN_Multiply,id:6167,x:31385,y:34058,varname:node_6167,prsc:2;n:type:ShaderForge.SFN_Vector1,id:678,x:31736,y:33986,varname:node_678,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:1620,x:32373,y:33906,ptovrint:False,ptlb:scanlines,ptin:_scanlines,varname:node_1620,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:75f4f2f58e068d5448486616816d67ba,ntxv:0,isnm:False|UVIN-909-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:909,x:32112,y:33917,varname:node_909,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:6010,x:32820,y:33831,varname:node_6010,prsc:2|A-1620-RGB,B-1651-OUT;n:type:ShaderForge.SFN_Slider,id:1651,x:32784,y:34264,ptovrint:False,ptlb:scanlines intensity,ptin:_scanlinesintensity,varname:node_1651,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:4608,x:33070,y:33542,varname:node_4608,prsc:2|A-3517-OUT,B-6010-OUT;n:type:ShaderForge.SFN_Tex2d,id:2810,x:32358,y:34126,ptovrint:False,ptlb:node_2810,ptin:_node_2810,varname:node_2810,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:75f4f2f58e068d5448486616816d67ba,ntxv:0,isnm:False|UVIN-7658-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:6397,x:31917,y:34038,varname:node_6397,prsc:2,sctp:2;n:type:ShaderForge.SFN_Rotator,id:7658,x:32137,y:34189,varname:node_7658,prsc:2|UVIN-6397-UVOUT,PIV-7391-OUT,ANG-2402-OUT;n:type:ShaderForge.SFN_Vector1,id:2402,x:31950,y:34350,varname:node_2402,prsc:2,v1:1.5708;n:type:ShaderForge.SFN_Vector2,id:7391,x:31914,y:34207,varname:node_7391,prsc:2,v1:0.5,v2:0.5;proporder:4430-4350-1620-1651-2810;pass:END;sub:END;*/

Shader "Shader Forge/ChannelShift" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _shift ("shift", Float ) = 0.001
        _scanlines ("scanlines", 2D) = "white" {}
        _scanlinesintensity ("scanlines intensity", Range(0, 1)) = 0
        _node_2810 ("node_2810", 2D) = "white" {}
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
            uniform float _shift;
            uniform sampler2D _scanlines; uniform float4 _scanlines_ST;
            uniform float _scanlinesintensity;
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
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_7782 = (_shift*1.0);
                float2 node_3431 = float2(node_7782,node_7782);
                float2 node_4773 = (node_3431+i.uv0);
                float4 node_240 = tex2D(_MainTex,TRANSFORM_TEX(node_4773, _MainTex));
                float2 node_8114 = (i.uv0-node_3431);
                float4 node_1463 = tex2D(_MainTex,TRANSFORM_TEX(node_8114, _MainTex));
                float3 node_3517 = float3(float2(node_1672.r,node_240.g),node_1463.b);
                float4 _scanlines_var = tex2D(_scanlines,TRANSFORM_TEX(sceneUVs.rg, _scanlines));
                float3 node_6010 = (_scanlines_var.rgb*_scanlinesintensity);
                float3 emissive = (node_3517+node_6010);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
