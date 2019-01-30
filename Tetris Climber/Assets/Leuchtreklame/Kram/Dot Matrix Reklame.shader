// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33101,y:32659,varname:node_3138,prsc:2|emission-6520-OUT,clip-2188-OUT;n:type:ShaderForge.SFN_Tex2d,id:8576,x:31823,y:32713,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_8576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6520,x:32660,y:32620,varname:node_6520,prsc:2|A-8576-RGB,B-2442-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2442,x:31854,y:32966,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:4902,x:31789,y:33074,varname:node_4902,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:1264,x:32070,y:33115,varname:node_1264,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4902-UVOUT;n:type:ShaderForge.SFN_Length,id:5540,x:32606,y:33381,varname:node_5540,prsc:2|IN-7509-OUT;n:type:ShaderForge.SFN_Multiply,id:7192,x:32072,y:33395,varname:node_7192,prsc:2|A-1264-OUT,B-3372-OUT;n:type:ShaderForge.SFN_Frac,id:7509,x:32412,y:33381,varname:node_7509,prsc:2|IN-611-OUT;n:type:ShaderForge.SFN_Sin,id:5223,x:32211,y:33542,varname:node_5223,prsc:2|IN-7192-OUT;n:type:ShaderForge.SFN_Cos,id:1542,x:32149,y:33716,varname:node_1542,prsc:2|IN-7192-OUT;n:type:ShaderForge.SFN_Multiply,id:611,x:32365,y:33683,varname:node_611,prsc:2|A-5223-OUT,B-1542-OUT;n:type:ShaderForge.SFN_OneMinus,id:2188,x:32879,y:33274,varname:node_2188,prsc:2|IN-5540-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3372,x:31755,y:33471,ptovrint:False,ptlb:circles,ptin:_circles,varname:node_3372,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;proporder:8576-2442-3372;pass:END;sub:END;*/

Shader "Shader Forge/Dot Matrix Reklame" {
    Properties {
        _tex ("tex", 2D) = "white" {}
        _emission ("emission", Float ) = 1
        _circles ("circles", Float ) = 20
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _tex; uniform float4 _tex_ST;
            uniform float _emission;
            uniform float _circles;
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
                float2 node_1264 = (i.uv0*2.0+-1.0);
                float2 node_7192 = (node_1264*_circles);
                clip((1.0 - length(frac((sin(node_7192)*cos(node_7192))))) - 0.5);
////// Lighting:
////// Emissive:
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(i.uv0, _tex));
                float3 emissive = (_tex_var.rgb*_emission);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _circles;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_1264 = (i.uv0*2.0+-1.0);
                float2 node_7192 = (node_1264*_circles);
                clip((1.0 - length(frac((sin(node_7192)*cos(node_7192))))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
