// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33174,y:33323,varname:node_2865,prsc:2|emission-3517-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31938,y:33237,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31734,y:33441,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32415,y:33345,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-4219-UVOUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Append,id:1979,x:32680,y:33468,varname:node_1979,prsc:2|A-7542-R,B-240-G;n:type:ShaderForge.SFN_Append,id:3517,x:32745,y:33648,varname:node_3517,prsc:2|A-1979-OUT,B-1463-B;n:type:ShaderForge.SFN_Append,id:3431,x:31973,y:33628,varname:node_3431,prsc:2|A-4350-OUT,B-4350-OUT;n:type:ShaderForge.SFN_Vector1,id:1856,x:31734,y:33672,varname:node_1856,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Add,id:4773,x:32221,y:33546,varname:node_4773,prsc:2|A-3431-OUT,B-4219-UVOUT;n:type:ShaderForge.SFN_Subtract,id:8114,x:32221,y:33767,varname:node_8114,prsc:2|A-4219-UVOUT,B-3431-OUT;n:type:ShaderForge.SFN_Tex2d,id:240,x:32397,y:33526,varname:node_240,prsc:2,ntxv:0,isnm:False|UVIN-4773-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Tex2d,id:1463,x:32445,y:33756,varname:node_1463,prsc:2,ntxv:0,isnm:False|UVIN-8114-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_ValueProperty,id:4350,x:31664,y:33774,ptovrint:False,ptlb:shift,ptin:_shift,varname:node_4350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;proporder:4430-4350;pass:END;sub:END;*/

Shader "Shader Forge/ChannelShift" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _shift ("shift", Float ) = 0.001
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
            uniform float _shift;
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
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float2 node_3431 = float2(_shift,_shift);
                float2 node_4773 = (node_3431+i.uv0);
                float4 node_240 = tex2D(_MainTex,TRANSFORM_TEX(node_4773, _MainTex));
                float2 node_8114 = (i.uv0-node_3431);
                float4 node_1463 = tex2D(_MainTex,TRANSFORM_TEX(node_8114, _MainTex));
                float3 emissive = float3(float2(node_1672.r,node_240.g),node_1463.b);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
