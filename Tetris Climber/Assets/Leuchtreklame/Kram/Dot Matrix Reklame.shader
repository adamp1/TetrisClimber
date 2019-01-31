// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34472,y:34781,varname:node_3138,prsc:2|emission-2832-OUT;n:type:ShaderForge.SFN_Tex2d,id:8576,x:33230,y:34892,ptovrint:False,ptlb:tex,ptin:_tex,varname:node_8576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0ca481031c3f43f4fb4bf6fdb35486c8,ntxv:0,isnm:False|UVIN-7674-OUT;n:type:ShaderForge.SFN_Multiply,id:6520,x:33638,y:34764,varname:node_6520,prsc:2|A-8576-RGB,B-2442-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2442,x:33306,y:34484,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_2442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:2415,x:31594,y:33396,varname:node_2415,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Sin,id:3712,x:32147,y:33242,varname:node_3712,prsc:2|IN-3403-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1631,x:31748,y:35132,ptovrint:False,ptlb:dot count,ptin:_dotcount,varname:node_1631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:32;n:type:ShaderForge.SFN_Multiply,id:3403,x:31992,y:33442,varname:node_3403,prsc:2|A-2415-UVOUT,B-1631-OUT;n:type:ShaderForge.SFN_Subtract,id:1033,x:32497,y:33687,varname:node_1033,prsc:2|A-6501-OUT,B-15-OUT;n:type:ShaderForge.SFN_Abs,id:6501,x:32238,y:33669,varname:node_6501,prsc:2|IN-3712-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3072,x:31449,y:33819,ptovrint:False,ptlb:dot size,ptin:_dotsize,varname:node_3072,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Divide,id:15,x:32109,y:33884,varname:node_15,prsc:2|A-3072-OUT,B-1631-OUT;n:type:ShaderForge.SFN_TexCoord,id:9658,x:31181,y:34472,varname:node_9658,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:5104,x:32573,y:33907,varname:node_5104,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1033-OUT;n:type:ShaderForge.SFN_Multiply,id:1513,x:32849,y:34017,varname:node_1513,prsc:2|A-5104-R,B-5104-G;n:type:ShaderForge.SFN_TexCoord,id:1136,x:32087,y:34616,varname:node_1136,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Trunc,id:3947,x:31796,y:34431,varname:node_3947,prsc:2|IN-9209-OUT;n:type:ShaderForge.SFN_Divide,id:3874,x:32163,y:34231,varname:node_3874,prsc:2|A-3947-OUT,B-1631-OUT;n:type:ShaderForge.SFN_Multiply,id:9209,x:31624,y:34353,varname:node_9209,prsc:2|A-5399-OUT,B-9658-UVOUT;n:type:ShaderForge.SFN_Divide,id:5174,x:31256,y:34127,varname:node_5174,prsc:2|A-1631-OUT,B-7260-OUT;n:type:ShaderForge.SFN_Vector1,id:7260,x:30813,y:34233,varname:node_7260,prsc:2,v1:4;n:type:ShaderForge.SFN_Add,id:5399,x:31181,y:34321,varname:node_5399,prsc:2|A-5174-OUT,B-2598-OUT;n:type:ShaderForge.SFN_Vector1,id:2598,x:30849,y:34302,varname:node_2598,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9873,x:32797,y:34250,varname:node_9873,prsc:2|A-1513-OUT;n:type:ShaderForge.SFN_Trunc,id:1996,x:32560,y:34239,varname:node_1996,prsc:2|IN-5104-OUT;n:type:ShaderForge.SFN_Vector1,id:8228,x:33408,y:33274,varname:node_8228,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5513,x:32494,y:34732,varname:node_5513,prsc:2|A-1136-UVOUT,B-1631-OUT;n:type:ShaderForge.SFN_Trunc,id:7135,x:32862,y:34633,varname:node_7135,prsc:2|IN-5513-OUT;n:type:ShaderForge.SFN_Divide,id:7674,x:32505,y:35118,varname:node_7674,prsc:2|A-7135-OUT,B-1631-OUT;n:type:ShaderForge.SFN_Tex2d,id:3378,x:32796,y:35239,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_3378,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5513-OUT;n:type:ShaderForge.SFN_Step,id:7774,x:33071,y:35312,varname:node_7774,prsc:2|A-3378-R,B-5613-OUT;n:type:ShaderForge.SFN_Vector1,id:7338,x:32881,y:35413,varname:node_7338,prsc:2,v1:0.1;n:type:ShaderForge.SFN_OneMinus,id:8032,x:33334,y:35164,varname:node_8032,prsc:2|IN-7774-OUT;n:type:ShaderForge.SFN_Slider,id:5613,x:32741,y:35581,ptovrint:False,ptlb:mask size,ptin:_masksize,varname:node_5613,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:5802,x:33838,y:34927,varname:node_5802,prsc:2|A-6520-OUT,B-8032-OUT;n:type:ShaderForge.SFN_Lerp,id:2832,x:34162,y:35034,varname:node_2832,prsc:2|A-5802-OUT,B-9305-OUT,T-6482-OUT;n:type:ShaderForge.SFN_Slider,id:6482,x:33778,y:35510,ptovrint:False,ptlb:Variant,ptin:_Variant,varname:node_6482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Desaturate,id:3104,x:33776,y:35153,varname:node_3104,prsc:2|COL-5802-OUT;n:type:ShaderForge.SFN_Multiply,id:9305,x:33940,y:35198,varname:node_9305,prsc:2|A-3104-OUT,B-3263-RGB;n:type:ShaderForge.SFN_Color,id:3263,x:33586,y:35306,ptovrint:False,ptlb:tint color,ptin:_tintcolor,varname:node_3263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6231968,c3:0,c4:1;proporder:8576-2442-1631-3072-3378-5613-6482-3263;pass:END;sub:END;*/

Shader "Shader Forge/Dot Matrix Reklame" {
    Properties {
        _tex ("tex", 2D) = "white" {}
        _emission ("emission", Float ) = 1
        _dotcount ("dot count", Float ) = 32
        _dotsize ("dot size", Float ) = 3
        _mask ("mask", 2D) = "white" {}
        _masksize ("mask size", Range(0, 1)) = 0.1
        _Variant ("Variant", Range(0, 1)) = 0
        _tintcolor ("tint color", Color) = (1,0.6231968,0,1)
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
            uniform sampler2D _tex; uniform float4 _tex_ST;
            uniform float _emission;
            uniform float _dotcount;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform float _masksize;
            uniform float _Variant;
            uniform float4 _tintcolor;
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
                float2 node_5513 = (i.uv0*_dotcount);
                float2 node_7674 = (trunc(node_5513)/_dotcount);
                float4 _tex_var = tex2D(_tex,TRANSFORM_TEX(node_7674, _tex));
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(node_5513, _mask));
                float3 node_5802 = ((_tex_var.rgb*_emission)*(1.0 - step(_mask_var.r,_masksize)));
                float3 emissive = lerp(node_5802,(dot(node_5802,float3(0.3,0.59,0.11))*_tintcolor.rgb),_Variant);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
