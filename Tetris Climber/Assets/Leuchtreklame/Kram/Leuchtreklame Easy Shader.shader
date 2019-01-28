// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-6520-OUT,clip-9868-OUT;n:type:ShaderForge.SFN_Tex2d,id:8576,x:32062,y:32667,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_8576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e06f1447864ae4d4e9c1884c221399b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6520,x:32476,y:32811,varname:node_6520,prsc:2|A-8576-RGB,B-2442-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2442,x:31967,y:32968,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_If,id:9868,x:32422,y:33066,varname:node_9868,prsc:2|A-8295-OUT,B-6759-OUT,GT-6828-OUT,EQ-6759-OUT,LT-6759-OUT;n:type:ShaderForge.SFN_Vector1,id:6759,x:32202,y:33110,varname:node_6759,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6828,x:32175,y:33174,varname:node_6828,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:8295,x:32304,y:32877,varname:node_8295,prsc:2|A-8576-R,B-8576-G,C-8576-B;proporder:8576-2442;pass:END;sub:END;*/

Shader "Shader Forge/Leuchtreklame Easy Shader" {
    Properties {
        _tex ("tex", 2D) = "white" {}
        _emission ("emission", Float ) = 3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
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
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(i.uv0, _tex));
                float node_6759 = 0.0;
                float node_9868_if_leA = step((_tex_var.r+_tex_var.g+_tex_var.b),node_6759);
                float node_9868_if_leB = step(node_6759,(_tex_var.r+_tex_var.g+_tex_var.b));
                clip(lerp((node_9868_if_leA*node_6759)+(node_9868_if_leB*1.0),node_6759,node_9868_if_leA*node_9868_if_leB) - 0.5);
////// Lighting:
////// Emissive:
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
            uniform sampler2D _tex; uniform float4 _tex_ST;
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
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(i.uv0, _tex));
                float node_6759 = 0.0;
                float node_9868_if_leA = step((_tex_var.r+_tex_var.g+_tex_var.b),node_6759);
                float node_9868_if_leB = step(node_6759,(_tex_var.r+_tex_var.g+_tex_var.b));
                clip(lerp((node_9868_if_leA*node_6759)+(node_9868_if_leB*1.0),node_6759,node_9868_if_leA*node_9868_if_leB) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
