// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33124,y:32736,varname:node_3138,prsc:2|emission-9562-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32188,y:32736,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:3782,x:32486,y:32607,ptovrint:False,ptlb:Normal Color,ptin:_NormalColor,varname:node_3782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9899,x:31844,y:33147,ptovrint:False,ptlb:Inactive Color,ptin:_InactiveColor,varname:node_9899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5471698,c2:0.5471698,c3:0.5471698,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6961,x:32230,y:33069,ptovrint:False,ptlb:em mask,ptin:_emmask,varname:node_6961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9cabc06a5e2c03d43b9584e1751e79a6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5021,x:32384,y:32811,varname:node_5021,prsc:2|A-7241-RGB,B-5591-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5591,x:32165,y:32927,ptovrint:False,ptlb:em intensity,ptin:_emintensity,varname:node_5591,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Lerp,id:9562,x:32661,y:32787,varname:node_9562,prsc:2|A-3782-RGB,B-5021-OUT,T-6961-R;proporder:7241-3782-6961-5591;pass:END;sub:END;*/

Shader "Shader Forge/TetrisTestShader" {
    Properties {
        _GlowColor ("Glow Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _NormalColor ("Normal Color", Color) = (1,1,1,1)
        _emmask ("em mask", 2D) = "white" {}
        _emintensity ("em intensity", Float ) = 10
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
            uniform float4 _GlowColor;
            uniform float4 _NormalColor;
            uniform sampler2D _emmask; uniform float4 _emmask_ST;
            uniform float _emintensity;
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
                float4 _emmask_var = tex2D(_emmask,TRANSFORM_TEX(i.uv0, _emmask));
                float3 emissive = lerp(_NormalColor.rgb,(_GlowColor.rgb*_emintensity),_emmask_var.r);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
