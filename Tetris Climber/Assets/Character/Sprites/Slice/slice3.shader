// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9254,x:33175,y:32854,varname:node_9254,prsc:2|emission-8548-OUT,clip-3055-OUT;n:type:ShaderForge.SFN_Tex2d,id:4723,x:31731,y:32309,ptovrint:False,ptlb:color,ptin:_color,varname:node_4723,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:406abd4c855c4234381f2c49040108f8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6940,x:32168,y:33019,ptovrint:False,ptlb:gradient,ptin:_gradient,varname:node_6940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:23ff164ab04da3b4bab145b5ba95b631,ntxv:0,isnm:False|UVIN-6753-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8548,x:32643,y:32461,varname:node_8548,prsc:2|A-2719-OUT,B-2121-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2121,x:32656,y:32719,ptovrint:False,ptlb:emisson intensity,ptin:_emissonintensity,varname:node_2121,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Color,id:5559,x:32051,y:32273,ptovrint:False,ptlb:color,ptin:_color,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.9897842,c3:1,c4:1;n:type:ShaderForge.SFN_Rotator,id:6753,x:31856,y:32973,varname:node_6753,prsc:2|UVIN-6761-UVOUT,ANG-6714-OUT;n:type:ShaderForge.SFN_TexCoord,id:6761,x:31578,y:32938,varname:node_6761,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:8553,x:31578,y:33188,varname:node_8553,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6714,x:31809,y:33208,varname:node_6714,prsc:2|A-8553-T,B-2154-OUT;n:type:ShaderForge.SFN_Multiply,id:364,x:32539,y:33140,varname:node_364,prsc:2|A-833-A,B-6940-A,C-8020-OUT;n:type:ShaderForge.SFN_Tex2d,id:833,x:31838,y:33548,ptovrint:False,ptlb:node_833,ptin:_node_833,varname:node_833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:23ff164ab04da3b4bab145b5ba95b631,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:2154,x:31741,y:33443,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_2154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:40;n:type:ShaderForge.SFN_Lerp,id:2719,x:32349,y:32548,varname:node_2719,prsc:2|A-5559-RGB,B-1228-RGB,T-7797-R;n:type:ShaderForge.SFN_Tex2d,id:7797,x:32077,y:32712,ptovrint:False,ptlb:color mask,ptin:_colormask,varname:node_7797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:38dc396092a73c045a656b5817bcb7ba,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:1228,x:31924,y:32453,ptovrint:False,ptlb:color 2,ptin:_color2,varname:node_1228,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6173745,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:3055,x:32846,y:33207,varname:node_3055,prsc:2|A-364-OUT,B-2628-OUT;n:type:ShaderForge.SFN_Slider,id:2628,x:32437,y:33419,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_2628,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0.45,max:0.45;n:type:ShaderForge.SFN_ValueProperty,id:652,x:32736,y:33627,ptovrint:False,ptlb:node_652,ptin:_node_652,varname:node_652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8020,x:32436,y:33692,varname:node_8020,prsc:2|A-2862-OUT,B-833-A;n:type:ShaderForge.SFN_OneMinus,id:2862,x:32141,y:33506,varname:node_2862,prsc:2|IN-833-R;proporder:6940-4723-2121-5559-833-2154-7797-1228-2628-652;pass:END;sub:END;*/

Shader "Custom/slice3" {
    Properties {
        _gradient ("gradient", 2D) = "white" {}
        _color ("color", 2D) = "white" {}
        _emissonintensity ("emisson intensity", Float ) = 3
        _color ("color", Color) = (0,0.9897842,1,1)
        _node_833 ("node_833", 2D) = "white" {}
        _speed ("speed", Float ) = 40
        _colormask ("color mask", 2D) = "white" {}
        _color2 ("color 2", Color) = (1,0.6173745,0,1)
        _alpha ("alpha", Range(-0.5, 0.45)) = 0.45
        _node_652 ("node_652", Float ) = 0
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
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform float _emissonintensity;
            uniform float4 _color;
            uniform sampler2D _node_833; uniform float4 _node_833_ST;
            uniform float _speed;
            uniform sampler2D _colormask; uniform float4 _colormask_ST;
            uniform float4 _color2;
            uniform float _alpha;
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
                float4 _node_833_var = tex2D(_node_833,TRANSFORM_TEX(i.uv0, _node_833));
                float4 node_8553 = _Time;
                float node_6753_ang = (node_8553.g*_speed);
                float node_6753_spd = 1.0;
                float node_6753_cos = cos(node_6753_spd*node_6753_ang);
                float node_6753_sin = sin(node_6753_spd*node_6753_ang);
                float2 node_6753_piv = float2(0.5,0.5);
                float2 node_6753 = (mul(i.uv0-node_6753_piv,float2x2( node_6753_cos, -node_6753_sin, node_6753_sin, node_6753_cos))+node_6753_piv);
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(node_6753, _gradient));
                clip(((_node_833_var.a*_gradient_var.a*((1.0 - _node_833_var.r)*_node_833_var.a))+_alpha) - 0.5);
////// Lighting:
////// Emissive:
                float4 _colormask_var = tex2D(_colormask,TRANSFORM_TEX(i.uv0, _colormask));
                float3 emissive = (lerp(_color.rgb,_color2.rgb,_colormask_var.r)*_emissonintensity);
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
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform sampler2D _node_833; uniform float4 _node_833_ST;
            uniform float _speed;
            uniform float _alpha;
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
                float4 _node_833_var = tex2D(_node_833,TRANSFORM_TEX(i.uv0, _node_833));
                float4 node_8553 = _Time;
                float node_6753_ang = (node_8553.g*_speed);
                float node_6753_spd = 1.0;
                float node_6753_cos = cos(node_6753_spd*node_6753_ang);
                float node_6753_sin = sin(node_6753_spd*node_6753_ang);
                float2 node_6753_piv = float2(0.5,0.5);
                float2 node_6753 = (mul(i.uv0-node_6753_piv,float2x2( node_6753_cos, -node_6753_sin, node_6753_sin, node_6753_cos))+node_6753_piv);
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(node_6753, _gradient));
                clip(((_node_833_var.a*_gradient_var.a*((1.0 - _node_833_var.r)*_node_833_var.a))+_alpha) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
