// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9254,x:32770,y:32589,varname:node_9254,prsc:2|emission-8548-OUT,clip-9390-OUT;n:type:ShaderForge.SFN_Tex2d,id:4723,x:31731,y:32309,ptovrint:False,ptlb:color,ptin:_color,varname:node_4723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:406abd4c855c4234381f2c49040108f8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6940,x:31883,y:32944,ptovrint:False,ptlb:gradient,ptin:_gradient,varname:node_6940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:23ff164ab04da3b4bab145b5ba95b631,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3684,x:32369,y:32903,varname:node_3684,prsc:2|A-5318-OUT,B-6940-A;n:type:ShaderForge.SFN_Slider,id:2063,x:31960,y:33232,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_2063,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0.3097377,max:0.49;n:type:ShaderForge.SFN_Add,id:9390,x:32452,y:33121,varname:node_9390,prsc:2|A-3684-OUT,B-2063-OUT;n:type:ShaderForge.SFN_OneMinus,id:5318,x:32140,y:32815,varname:node_5318,prsc:2|IN-6940-R;n:type:ShaderForge.SFN_Multiply,id:8548,x:32433,y:32452,varname:node_8548,prsc:2|A-5559-RGB,B-2121-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2121,x:32259,y:32739,ptovrint:False,ptlb:emisson intensity,ptin:_emissonintensity,varname:node_2121,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Color,id:5559,x:31984,y:32434,ptovrint:False,ptlb:color,ptin:_color,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.9897842,c3:1,c4:1;proporder:6940-4723-2063-2121-5559;pass:END;sub:END;*/

Shader "Custom/slice2" {
    Properties {
        _gradient ("gradient", 2D) = "white" {}
        _color ("color", 2D) = "white" {}
        _alpha ("alpha", Range(-0.5, 0.49)) = 0.3097377
        _emissonintensity ("emisson intensity", Float ) = 3
        _color ("color", Color) = (0,0.9897842,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform float _alpha;
            uniform float _emissonintensity;
            uniform float4 _color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(i.uv0, _gradient));
                clip((((1.0 - _gradient_var.r)*_gradient_var.a)+_alpha) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_color.rgb*_emissonintensity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform float _alpha;
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
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(i.uv0, _gradient));
                clip((((1.0 - _gradient_var.r)*_gradient_var.a)+_alpha) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
