// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-6520-OUT,clip-9868-OUT;n:type:ShaderForge.SFN_Tex2d,id:8576,x:31507,y:32762,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_8576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e06f1447864ae4d4e9c1884c221399b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6520,x:32476,y:32811,varname:node_6520,prsc:2|A-8576-RGB,B-9929-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2442,x:31578,y:32995,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_If,id:9868,x:32422,y:33066,varname:node_9868,prsc:2|A-8295-OUT,B-6759-OUT,GT-6828-OUT,EQ-6759-OUT,LT-6759-OUT;n:type:ShaderForge.SFN_Vector1,id:6759,x:32202,y:33110,varname:node_6759,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6828,x:32175,y:33174,varname:node_6828,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:8295,x:32266,y:32941,varname:node_8295,prsc:2|A-8576-R,B-8576-G,C-8576-B;n:type:ShaderForge.SFN_Frac,id:6893,x:32124,y:32357,varname:node_6893,prsc:2|IN-5046-OUT;n:type:ShaderForge.SFN_Sin,id:8867,x:31786,y:32397,varname:node_8867,prsc:2|IN-2775-OUT;n:type:ShaderForge.SFN_Dot,id:2775,x:31612,y:32397,varname:node_2775,prsc:2,dt:0|A-598-OUT,B-825-OUT;n:type:ShaderForge.SFN_Time,id:6317,x:30632,y:32437,varname:node_6317,prsc:2;n:type:ShaderForge.SFN_Append,id:598,x:31135,y:32426,varname:node_598,prsc:2|A-511-OUT,B-7615-OUT;n:type:ShaderForge.SFN_Vector2,id:825,x:31126,y:32622,varname:node_825,prsc:2,v1:12.98,v2:78.23;n:type:ShaderForge.SFN_Multiply,id:5046,x:31989,y:32487,varname:node_5046,prsc:2|A-8867-OUT,B-3814-OUT;n:type:ShaderForge.SFN_Vector1,id:3814,x:31777,y:32557,varname:node_3814,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Lerp,id:9929,x:32084,y:32809,varname:node_9929,prsc:2|A-8633-OUT,B-2442-OUT,T-6893-OUT;n:type:ShaderForge.SFN_Vector1,id:8633,x:31882,y:32628,varname:node_8633,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:3171,x:30890,y:32704,varname:node_3171,prsc:2|A-7233-X,B-7233-Y;n:type:ShaderForge.SFN_Add,id:511,x:30956,y:32839,varname:node_511,prsc:2|A-3171-OUT,B-7233-Z;n:type:ShaderForge.SFN_ObjectPosition,id:7233,x:30607,y:32692,varname:node_7233,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7615,x:30835,y:32474,varname:node_7615,prsc:2|A-6317-TSL,B-5490-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5490,x:30632,y:32617,ptovrint:False,ptlb:random speed,ptin:_randomspeed,varname:node_5490,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;proporder:8576-2442-5490;pass:END;sub:END;*/

Shader "Shader Forge/Leuchtreklame Easy Shader" {
    Properties {
        _tex ("tex", 2D) = "white" {}
        _emission ("emission", Float ) = 3
        _randomspeed ("random speed", Float ) = 0.1
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
            uniform float _randomspeed;
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
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(i.uv0, _tex));
                float node_6759 = 0.0;
                float node_9868_if_leA = step((_tex_var.r+_tex_var.g+_tex_var.b),node_6759);
                float node_9868_if_leB = step(node_6759,(_tex_var.r+_tex_var.g+_tex_var.b));
                clip(lerp((node_9868_if_leA*node_6759)+(node_9868_if_leB*1.0),node_6759,node_9868_if_leA*node_9868_if_leB) - 0.5);
////// Lighting:
////// Emissive:
                float4 node_6317 = _Time;
                float3 emissive = (_tex_var.rgb*lerp(0.0,_emission,frac((sin(dot(float2(((objPos.r+objPos.g)+objPos.b),(node_6317.r*_randomspeed)),float2(12.98,78.23)))*43758.55))));
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
