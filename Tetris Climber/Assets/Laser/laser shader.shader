// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33066,y:32866,varname:node_3138,prsc:2|emission-4518-OUT,alpha-545-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32181,y:33128,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9485,x:32221,y:32858,ptovrint:False,ptlb:laser tex,ptin:_lasertex,varname:node_9485,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1e7d82bbec53fc84cbb7db633c4a74fa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5162,x:32464,y:32868,varname:node_5162,prsc:2|A-9485-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Multiply,id:4518,x:32642,y:32952,varname:node_4518,prsc:2|A-5162-OUT,B-4652-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4652,x:32410,y:33210,ptovrint:False,ptlb:em intensity,ptin:_emintensity,varname:node_4652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ComponentMask,id:545,x:32800,y:33090,varname:node_545,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4518-OUT;proporder:7241-9485-4652;pass:END;sub:END;*/

Shader "Shader Forge/laser shader" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _lasertex ("laser tex", 2D) = "white" {}
        _emintensity ("em intensity", Float ) = 4
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _lasertex; uniform float4 _lasertex_ST;
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
                float4 _lasertex_var = tex2D(_lasertex,TRANSFORM_TEX(i.uv0, _lasertex));
                float3 node_4518 = ((_lasertex_var.rgb*_Color.rgb)*_emintensity);
                float3 emissive = node_4518;
                float3 finalColor = emissive;
                return fixed4(finalColor,node_4518.r);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
