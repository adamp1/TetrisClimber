// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33654,y:33004,varname:node_3138,prsc:2|emission-6520-OUT,clip-1513-OUT;n:type:ShaderForge.SFN_Tex2d,id:8576,x:31823,y:32713,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_8576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6520,x:32660,y:32620,varname:node_6520,prsc:2|A-8576-RGB,B-2442-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2442,x:31854,y:32966,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:2415,x:31594,y:33396,varname:node_2415,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Sin,id:3712,x:32185,y:33442,varname:node_3712,prsc:2|IN-3403-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1631,x:32466,y:34377,ptovrint:False,ptlb:dot space,ptin:_dotspace,varname:node_1631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Multiply,id:3403,x:31992,y:33442,varname:node_3403,prsc:2|A-2415-UVOUT,B-1631-OUT;n:type:ShaderForge.SFN_Subtract,id:1033,x:32518,y:33664,varname:node_1033,prsc:2|A-6501-OUT,B-15-OUT;n:type:ShaderForge.SFN_Abs,id:6501,x:32174,y:33655,varname:node_6501,prsc:2|IN-3712-OUT;n:type:ShaderForge.SFN_Length,id:3519,x:32806,y:33205,varname:node_3519,prsc:2|IN-6501-OUT;n:type:ShaderForge.SFN_OneMinus,id:7718,x:32975,y:33246,varname:node_7718,prsc:2|IN-3519-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3072,x:31578,y:33788,ptovrint:False,ptlb:dot size,ptin:_dotsize,varname:node_3072,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Divide,id:15,x:31963,y:33991,varname:node_15,prsc:2|A-3072-OUT,B-1631-OUT;n:type:ShaderForge.SFN_Floor,id:8960,x:32720,y:33846,varname:node_8960,prsc:2|IN-1029-OUT;n:type:ShaderForge.SFN_Divide,id:1029,x:32508,y:33973,varname:node_1029,prsc:2|A-9658-UVOUT,B-1631-OUT;n:type:ShaderForge.SFN_TexCoord,id:9658,x:32339,y:34071,varname:node_9658,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:8544,x:32907,y:33971,varname:node_8544,prsc:2|A-8960-OUT,B-1631-OUT;n:type:ShaderForge.SFN_Add,id:1927,x:33124,y:34071,varname:node_1927,prsc:2|A-8544-OUT,B-8859-OUT;n:type:ShaderForge.SFN_Multiply,id:8859,x:32904,y:34283,varname:node_8859,prsc:2|A-1631-OUT,B-4362-OUT;n:type:ShaderForge.SFN_Vector1,id:4362,x:32721,y:34409,varname:node_4362,prsc:2,v1:0.5;n:type:ShaderForge.SFN_ComponentMask,id:5104,x:32698,y:33619,varname:node_5104,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1033-OUT;n:type:ShaderForge.SFN_Multiply,id:1513,x:32940,y:33456,varname:node_1513,prsc:2|A-5104-R,B-5104-G;n:type:ShaderForge.SFN_Multiply,id:235,x:33245,y:33616,varname:node_235,prsc:2|A-1513-OUT,B-3254-OUT;n:type:ShaderForge.SFN_Divide,id:3254,x:33196,y:33798,varname:node_3254,prsc:2|A-1927-OUT,B-5433-OUT;n:type:ShaderForge.SFN_Vector1,id:5433,x:33137,y:33971,varname:node_5433,prsc:2,v1:2;proporder:8576-2442-1631-3072;pass:END;sub:END;*/

Shader "Shader Forge/Dot Matrix Reklame" {
    Properties {
        _tex ("tex", 2D) = "white" {}
        _emission ("emission", Float ) = 1
        _dotspace ("dot space", Float ) = 8
        _dotsize ("dot size", Float ) = 3
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
            uniform float _dotspace;
            uniform float _dotsize;
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
                float2 node_3403 = (i.uv0*_dotspace);
                float2 node_6501 = abs(sin(node_3403));
                float2 node_5104 = (node_6501-(_dotsize/_dotspace)).rg;
                float node_1513 = (node_5104.r*node_5104.g);
                clip(node_1513 - 0.5);
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
            uniform float _dotspace;
            uniform float _dotsize;
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
                float2 node_3403 = (i.uv0*_dotspace);
                float2 node_6501 = abs(sin(node_3403));
                float2 node_5104 = (node_6501-(_dotsize/_dotspace)).rg;
                float node_1513 = (node_5104.r*node_5104.g);
                clip(node_1513 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
