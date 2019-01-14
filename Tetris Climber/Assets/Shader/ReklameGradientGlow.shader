// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4940,x:33281,y:32636,varname:node_4940,prsc:2|emission-234-OUT,clip-2368-OUT;n:type:ShaderForge.SFN_Tex2d,id:838,x:32215,y:32658,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a428b61d325f4da4fa2f2dedd8117cdc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3902,x:32602,y:32798,ptovrint:False,ptlb:gradient,ptin:_gradient,varname:node_3902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9ea614f1f9348174f8139a55274f2265,ntxv:0,isnm:False|UVIN-8788-OUT;n:type:ShaderForge.SFN_Multiply,id:234,x:33041,y:32718,varname:node_234,prsc:2|A-8304-OUT,B-3902-RGB;n:type:ShaderForge.SFN_Append,id:8788,x:32566,y:32543,varname:node_8788,prsc:2|A-5827-OUT,B-838-R;n:type:ShaderForge.SFN_Vector1,id:5827,x:32324,y:32527,varname:node_5827,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8304,x:32805,y:32663,ptovrint:False,ptlb:emission power,ptin:_emissionpower,varname:node_8304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_If,id:2368,x:32540,y:32992,varname:node_2368,prsc:2|A-838-R,B-3114-OUT,GT-2504-OUT,EQ-3114-OUT,LT-3114-OUT;n:type:ShaderForge.SFN_Vector1,id:3114,x:31976,y:32941,varname:node_3114,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2504,x:31994,y:33076,varname:node_2504,prsc:2,v1:1;proporder:838-3902-8304;pass:END;sub:END;*/

Shader "Custom/ReklameGradientGlow" {
    Properties {
        _mask ("mask", 2D) = "white" {}
        _gradient ("gradient", 2D) = "white" {}
        _emissionpower ("emission power", Float ) = 2
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
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform float _emissionpower;
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
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv0, _mask));
                float node_3114 = 0.0;
                float node_2368_if_leA = step(_mask_var.r,node_3114);
                float node_2368_if_leB = step(node_3114,_mask_var.r);
                clip(lerp((node_2368_if_leA*node_3114)+(node_2368_if_leB*1.0),node_3114,node_2368_if_leA*node_2368_if_leB) - 0.5);
////// Lighting:
////// Emissive:
                float2 node_8788 = float2(0.0,_mask_var.r);
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(node_8788, _gradient));
                float3 emissive = (_emissionpower*_gradient_var.rgb);
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
            uniform sampler2D _mask; uniform float4 _mask_ST;
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
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv0, _mask));
                float node_3114 = 0.0;
                float node_2368_if_leA = step(_mask_var.r,node_3114);
                float node_2368_if_leB = step(node_3114,_mask_var.r);
                clip(lerp((node_2368_if_leA*node_3114)+(node_2368_if_leB*1.0),node_3114,node_2368_if_leA*node_2368_if_leB) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
