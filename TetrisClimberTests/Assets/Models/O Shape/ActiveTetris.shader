// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5021-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31983,y:32740,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3677,x:31958,y:32947,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_3677,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:41784cca12cfca544b4df9fa64de4981,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1964,x:32222,y:32590,varname:node_1964,prsc:2|A-7241-RGB,B-3677-RGB;n:type:ShaderForge.SFN_OneMinus,id:4335,x:32152,y:32964,varname:node_4335,prsc:2|IN-3677-RGB;n:type:ShaderForge.SFN_Add,id:5021,x:32557,y:32941,varname:node_5021,prsc:2|A-6013-OUT,B-4395-OUT;n:type:ShaderForge.SFN_Multiply,id:6013,x:32459,y:32738,varname:node_6013,prsc:2|A-1964-OUT,B-3802-OUT;n:type:ShaderForge.SFN_Vector1,id:4130,x:32284,y:32772,varname:node_4130,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:4395,x:32280,y:33134,varname:node_4395,prsc:2|A-4335-OUT,B-9123-RGB;n:type:ShaderForge.SFN_Color,id:9123,x:32039,y:33187,ptovrint:False,ptlb:node_9123,ptin:_node_9123,varname:node_9123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3802,x:32295,y:32851,ptovrint:False,ptlb:em,ptin:_em,varname:node_3802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;proporder:7241-3677-9123-3802;pass:END;sub:END;*/

Shader "Shader Forge/ActiveTetris" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _tex ("tex", 2D) = "white" {}
        _node_9123 ("node_9123", Color) = (0,0,0,1)
        _em ("em", Float ) = 5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float4 _Color;
            uniform sampler2D _tex; uniform float4 _tex_ST;
            uniform float4 _node_9123;
            uniform float _em;
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
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(i.uv0, _tex));
                float3 emissive = (((_Color.rgb*_tex_var.rgb)*_em)+((1.0 - _tex_var.rgb)*_node_9123.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
