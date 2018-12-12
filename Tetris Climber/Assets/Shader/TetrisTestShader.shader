// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34079,y:32859,varname:node_3138,prsc:2|emission-9179-OUT,voffset-467-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32188,y:32736,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:3782,x:32486,y:32607,ptovrint:False,ptlb:Normal Color,ptin:_NormalColor,varname:node_3782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:9899,x:31844,y:33147,ptovrint:False,ptlb:Inactive Color,ptin:_InactiveColor,varname:node_9899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5471698,c2:0.5471698,c3:0.5471698,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6961,x:32048,y:33027,ptovrint:False,ptlb:em mask,ptin:_emmask,varname:node_6961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9cabc06a5e2c03d43b9584e1751e79a6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5021,x:32486,y:32791,varname:node_5021,prsc:2|A-7241-RGB,B-5591-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5591,x:32165,y:32927,ptovrint:False,ptlb:em intensity,ptin:_emintensity,varname:node_5591,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Lerp,id:9562,x:32854,y:32904,varname:node_9562,prsc:2|A-3782-RGB,B-9546-OUT,T-6961-R;n:type:ShaderForge.SFN_Time,id:98,x:32228,y:33195,varname:node_98,prsc:2;n:type:ShaderForge.SFN_Sin,id:9435,x:32553,y:33193,varname:node_9435,prsc:2|IN-9450-OUT;n:type:ShaderForge.SFN_Subtract,id:9546,x:32592,y:32954,varname:node_9546,prsc:2|A-5021-OUT,B-1673-OUT;n:type:ShaderForge.SFN_Multiply,id:9450,x:32412,y:33309,varname:node_9450,prsc:2|A-98-T,B-6266-OUT;n:type:ShaderForge.SFN_Vector1,id:6266,x:32141,y:33402,varname:node_6266,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:1673,x:32748,y:33239,varname:node_1673,prsc:2|A-9435-OUT,B-3356-OUT;n:type:ShaderForge.SFN_Vector1,id:3356,x:32586,y:33387,varname:node_3356,prsc:2,v1:10;n:type:ShaderForge.SFN_Lerp,id:467,x:33435,y:33308,varname:node_467,prsc:2|A-9433-OUT,B-2161-OUT,T-6286-OUT;n:type:ShaderForge.SFN_Slider,id:2525,x:33226,y:33799,ptovrint:False,ptlb:boom,ptin:_boom,varname:node_2525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:4753,x:31811,y:33563,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:9346,x:32446,y:33669,varname:node_9346,prsc:2|A-5598-OUT,B-7179-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7179,x:32217,y:33879,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_7179,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector3,id:9433,x:33106,y:33222,varname:node_9433,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:9179,x:33456,y:33069,varname:node_9179,prsc:2|A-9562-OUT,B-3746-OUT,T-6286-OUT;n:type:ShaderForge.SFN_Color,id:896,x:32824,y:32185,ptovrint:False,ptlb:glow,ptin:_glow,varname:node_896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.902581,c3:0.6556604,c4:1;n:type:ShaderForge.SFN_Multiply,id:3746,x:33229,y:32388,varname:node_3746,prsc:2|A-7668-OUT,B-2918-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2918,x:33038,y:32556,ptovrint:False,ptlb:glow intensity,ptin:_glowintensity,varname:node_2918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:1950,x:33121,y:33662,ptovrint:False,ptlb:boom2,ptin:_boom2,varname:node_1950,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:6286,x:33383,y:33621,varname:node_6286,prsc:2|A-1950-OUT,B-2525-OUT;n:type:ShaderForge.SFN_Add,id:1062,x:32100,y:33641,varname:node_1062,prsc:2|A-4753-OUT,B-7611-OUT;n:type:ShaderForge.SFN_Sin,id:1008,x:31724,y:33783,varname:node_1008,prsc:2|IN-4753-OUT;n:type:ShaderForge.SFN_Multiply,id:7611,x:31937,y:33837,varname:node_7611,prsc:2|A-1008-OUT,B-4863-OUT;n:type:ShaderForge.SFN_Vector1,id:4863,x:31664,y:33940,varname:node_4863,prsc:2,v1:0.01;n:type:ShaderForge.SFN_FragmentPosition,id:6577,x:32364,y:32282,varname:node_6577,prsc:2;n:type:ShaderForge.SFN_Sin,id:4643,x:32551,y:32323,varname:node_4643,prsc:2|IN-6577-XYZ;n:type:ShaderForge.SFN_Multiply,id:7668,x:33056,y:32361,varname:node_7668,prsc:2|A-896-RGB,B-1651-OUT;n:type:ShaderForge.SFN_Abs,id:7615,x:32693,y:32372,varname:node_7615,prsc:2|IN-4643-OUT;n:type:ShaderForge.SFN_Add,id:1651,x:32871,y:32476,varname:node_1651,prsc:2|A-7615-OUT,B-1547-OUT;n:type:ShaderForge.SFN_Vector1,id:1547,x:32693,y:32524,varname:node_1547,prsc:2,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:4046,x:31278,y:34131,varname:node_4046,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:1907,x:31278,y:34311,varname:node_1907,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2805,x:31443,y:34242,varname:node_2805,prsc:2|A-4046-XYZ,B-1907-XYZ;n:type:ShaderForge.SFN_Multiply,id:5598,x:32620,y:33939,varname:node_5598,prsc:2|A-8871-OUT,B-9697-OUT;n:type:ShaderForge.SFN_Vector1,id:9697,x:32529,y:34344,varname:node_9697,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:2161,x:32756,y:33694,varname:node_2161,prsc:2|A-9346-OUT,B-2362-OUT;n:type:ShaderForge.SFN_Vector1,id:2362,x:32599,y:33782,varname:node_2362,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:8871,x:32005,y:34118,varname:node_8871,prsc:2|A-2805-OUT,B-1598-OUT;n:type:ShaderForge.SFN_TexCoord,id:7701,x:31150,y:34493,varname:node_7701,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1598,x:32104,y:34290,varname:node_1598,prsc:2|A-8381-OUT,B-2441-OUT;n:type:ShaderForge.SFN_Vector1,id:2441,x:32176,y:34518,varname:node_2441,prsc:2,v1:2;n:type:ShaderForge.SFN_Sin,id:6050,x:31393,y:34594,varname:node_6050,prsc:2|IN-7701-V;n:type:ShaderForge.SFN_Cos,id:2820,x:31425,y:34441,varname:node_2820,prsc:2|IN-7701-U;n:type:ShaderForge.SFN_Multiply,id:1409,x:31601,y:34532,varname:node_1409,prsc:2|A-2820-OUT,B-6050-OUT;n:type:ShaderForge.SFN_Multiply,id:5953,x:31834,y:34593,varname:node_5953,prsc:2|A-1409-OUT,B-5734-OUT;n:type:ShaderForge.SFN_Vector1,id:5734,x:31632,y:34723,varname:node_5734,prsc:2,v1:1000;n:type:ShaderForge.SFN_Sin,id:8381,x:32011,y:34649,varname:node_8381,prsc:2|IN-5953-OUT;proporder:7241-3782-6961-5591-2525-7179-896-2918-1950;pass:END;sub:END;*/

Shader "Shader Forge/TetrisTestShader" {
    Properties {
        _GlowColor ("Glow Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _NormalColor ("Normal Color", Color) = (1,1,1,1)
        _emmask ("em mask", 2D) = "white" {}
        _emintensity ("em intensity", Float ) = 10
        _boom ("boom", Range(0, 1)) = 0
        _offset ("offset", Float ) = 1
        _glow ("glow", Color) = (1,0.902581,0.6556604,1)
        _glowintensity ("glow intensity", Float ) = 10
        _boom2 ("boom2", Float ) = 0
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
            uniform float _boom;
            uniform float _offset;
            uniform float4 _glow;
            uniform float _glowintensity;
            uniform float _boom2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_2805 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb);
                float node_6286 = (_boom2+_boom);
                v.vertex.xyz += lerp(float3(0,0,0),((((node_2805*(sin(((cos(o.uv0.r)*sin(o.uv0.g))*1000.0))*2.0))*1.0)*_offset)+0.0),node_6286);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float4 node_98 = _Time;
                float4 _emmask_var = tex2D(_emmask,TRANSFORM_TEX(i.uv0, _emmask));
                float node_6286 = (_boom2+_boom);
                float3 emissive = lerp(lerp(_NormalColor.rgb,((_GlowColor.rgb*_emintensity)-(sin((node_98.g*5.0))/10.0)),_emmask_var.r),((_glow.rgb*(abs(sin(i.posWorld.rgb))+0.5))*_glowintensity),node_6286);
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
            uniform float _boom;
            uniform float _offset;
            uniform float _boom2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_2805 = (mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb);
                float node_6286 = (_boom2+_boom);
                v.vertex.xyz += lerp(float3(0,0,0),((((node_2805*(sin(((cos(o.uv0.r)*sin(o.uv0.g))*1000.0))*2.0))*1.0)*_offset)+0.0),node_6286);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
