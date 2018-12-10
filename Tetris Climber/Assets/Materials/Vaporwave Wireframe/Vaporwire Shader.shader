// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32850,y:32780,varname:node_3138,prsc:2|emission-7742-OUT,alpha-5640-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31902,y:32745,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2032,x:32051,y:32960,ptovrint:False,ptlb:em mask,ptin:_emmask,varname:node_2032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0c1a269410898a04891e2fe28666fbdd,ntxv:0,isnm:False|UVIN-3975-OUT;n:type:ShaderForge.SFN_Multiply,id:1196,x:31656,y:33021,varname:node_1196,prsc:2|A-2861-OUT,B-9056-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:2861,x:31435,y:33001,ptovrint:False,ptlb:tile,ptin:_tile,varname:node_2861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:8840,x:32308,y:32878,varname:node_8840,prsc:2|A-7241-RGB,B-2032-R;n:type:ShaderForge.SFN_Multiply,id:7742,x:32511,y:32902,varname:node_7742,prsc:2|A-8840-OUT,B-7217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7217,x:32308,y:33040,ptovrint:False,ptlb:em intensity,ptin:_emintensity,varname:node_7217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_TexCoord,id:9056,x:31392,y:33167,varname:node_9056,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3683,x:31475,y:33327,varname:node_3683,prsc:2;n:type:ShaderForge.SFN_Add,id:3975,x:31843,y:33057,varname:node_3975,prsc:2|A-1196-OUT,B-7547-OUT;n:type:ShaderForge.SFN_Multiply,id:5198,x:31727,y:33344,varname:node_5198,prsc:2|A-3683-T,B-7751-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7751,x:31540,y:33504,ptovrint:False,ptlb:move speed,ptin:_movespeed,varname:node_7751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:3180,x:31727,y:33504,ptovrint:False,ptlb:dir,ptin:_dir,varname:node_3180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Append,id:4014,x:31904,y:33427,varname:node_4014,prsc:2|A-3180-X,B-3180-Y;n:type:ShaderForge.SFN_Multiply,id:7547,x:31972,y:33241,varname:node_7547,prsc:2|A-5198-OUT,B-4014-OUT;n:type:ShaderForge.SFN_Vector1,id:5640,x:32615,y:33087,varname:node_5640,prsc:2,v1:1;proporder:7241-2032-2861-7217-7751-3180;pass:END;sub:END;*/

Shader "Shader Forge/Vaporwire Shader" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _emmask ("em mask", 2D) = "white" {}
        _tile ("tile", Float ) = 10
        _emintensity ("em intensity", Float ) = 2
        _movespeed ("move speed", Float ) = 1
        _dir ("dir", Vector) = (0,1,0,0)
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
            uniform sampler2D _emmask; uniform float4 _emmask_ST;
            uniform float _tile;
            uniform float _emintensity;
            uniform float _movespeed;
            uniform float4 _dir;
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
                float4 node_3683 = _Time;
                float2 node_3975 = ((_tile*i.uv0)+((node_3683.g*_movespeed)*float2(_dir.r,_dir.g)));
                float4 _emmask_var = tex2D(_emmask,TRANSFORM_TEX(node_3975, _emmask));
                float3 emissive = ((_Color.rgb*_emmask_var.r)*_emintensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
