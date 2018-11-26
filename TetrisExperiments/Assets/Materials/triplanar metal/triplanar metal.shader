// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6871,x:32700,y:33398,varname:node_6871,prsc:2|diff-7620-OUT,spec-1448-OUT,gloss-5023-OUT;n:type:ShaderForge.SFN_Slider,id:1448,x:32417,y:33039,ptovrint:False,ptlb:node_1448,ptin:_node_1448,varname:node_1448,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:7071,x:31137,y:32462,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:2908,x:31313,y:32462,varname:node_2908,prsc:2|IN-7071-OUT;n:type:ShaderForge.SFN_Multiply,id:5551,x:31527,y:32472,varname:node_5551,prsc:2|A-2908-OUT,B-2908-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2593,x:30902,y:32688,varname:node_2593,prsc:2;n:type:ShaderForge.SFN_Append,id:1283,x:31290,y:32613,varname:node_1283,prsc:2|A-2593-Y,B-2593-Z;n:type:ShaderForge.SFN_Append,id:1474,x:31290,y:32786,varname:node_1474,prsc:2|A-2593-Z,B-2593-X;n:type:ShaderForge.SFN_Append,id:5017,x:31290,y:32968,varname:node_5017,prsc:2|A-2593-X,B-2593-Y;n:type:ShaderForge.SFN_Tex2dAsset,id:6412,x:31044,y:32863,ptovrint:False,ptlb:87238,ptin:_87238,varname:node_6412,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ChannelBlend,id:7620,x:32182,y:32757,varname:node_7620,prsc:2,chbt:0|M-5551-OUT,R-2271-RGB,G-2541-RGB,B-7296-RGB;n:type:ShaderForge.SFN_Vector1,id:5561,x:32691,y:32796,varname:node_5561,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:2271,x:31735,y:32570,varname:node_2271,prsc:2,ntxv:0,isnm:False|UVIN-3265-OUT,TEX-6412-TEX;n:type:ShaderForge.SFN_Tex2d,id:2541,x:31748,y:32758,varname:node_2541,prsc:2,ntxv:0,isnm:False|UVIN-7249-OUT,TEX-6412-TEX;n:type:ShaderForge.SFN_Tex2d,id:7296,x:31726,y:32970,varname:node_7296,prsc:2,ntxv:0,isnm:False|UVIN-1437-OUT,TEX-6412-TEX;n:type:ShaderForge.SFN_Multiply,id:1437,x:31502,y:33076,varname:node_1437,prsc:2|A-5017-OUT,B-9184-OUT;n:type:ShaderForge.SFN_Slider,id:9184,x:30929,y:33204,ptovrint:False,ptlb:multi_9184,ptin:_multi_9184,varname:node_9184,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:100;n:type:ShaderForge.SFN_Multiply,id:7249,x:31502,y:32868,varname:node_7249,prsc:2|A-1474-OUT,B-9184-OUT;n:type:ShaderForge.SFN_Multiply,id:3265,x:31502,y:32687,varname:node_3265,prsc:2|A-1283-OUT,B-9184-OUT;n:type:ShaderForge.SFN_NormalVector,id:4404,x:31141,y:33481,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:7282,x:31317,y:33481,varname:node_7282,prsc:2|IN-4404-OUT;n:type:ShaderForge.SFN_Multiply,id:9503,x:31531,y:33491,varname:node_9503,prsc:2|A-7282-OUT,B-7282-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2063,x:30906,y:33707,varname:node_2063,prsc:2;n:type:ShaderForge.SFN_Append,id:1063,x:31294,y:33632,varname:node_1063,prsc:2|A-2063-Y,B-2063-Z;n:type:ShaderForge.SFN_Append,id:6058,x:31294,y:33805,varname:node_6058,prsc:2|A-2063-Z,B-2063-X;n:type:ShaderForge.SFN_Append,id:4927,x:31294,y:33987,varname:node_4927,prsc:2|A-2063-X,B-2063-Y;n:type:ShaderForge.SFN_ChannelBlend,id:9170,x:32186,y:33776,varname:node_9170,prsc:2,chbt:0|M-9503-OUT,R-9213-RGB,G-9975-RGB,B-6454-RGB;n:type:ShaderForge.SFN_Multiply,id:1047,x:31506,y:34095,varname:node_1047,prsc:2|A-4927-OUT,B-9819-OUT;n:type:ShaderForge.SFN_Slider,id:9819,x:30933,y:34223,ptovrint:False,ptlb:multi,ptin:_multi,varname:_node_9184_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:100;n:type:ShaderForge.SFN_Multiply,id:7800,x:31506,y:33887,varname:node_7800,prsc:2|A-6058-OUT,B-9819-OUT;n:type:ShaderForge.SFN_Multiply,id:3443,x:31506,y:33706,varname:node_3443,prsc:2|A-1063-OUT,B-9819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5023,x:32365,y:33755,varname:node_5023,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9170-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6378,x:30982,y:33928,ptovrint:False,ptlb:node_6378,ptin:_node_6378,varname:node_6378,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ec8591e724d659d49b78d453ccd9e586,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9213,x:31670,y:33692,varname:node_9213,prsc:2,tex:ec8591e724d659d49b78d453ccd9e586,ntxv:0,isnm:False|UVIN-3443-OUT,TEX-6378-TEX;n:type:ShaderForge.SFN_Tex2d,id:9975,x:31705,y:33887,varname:node_9975,prsc:2,tex:ec8591e724d659d49b78d453ccd9e586,ntxv:0,isnm:False|UVIN-7800-OUT,TEX-6378-TEX;n:type:ShaderForge.SFN_Tex2d,id:6454,x:31732,y:34116,varname:node_6454,prsc:2,tex:ec8591e724d659d49b78d453ccd9e586,ntxv:0,isnm:False|UVIN-1047-OUT,TEX-6378-TEX;proporder:1448-6412-9184-9819-6378;pass:END;sub:END;*/

Shader "Custom/triplanar metal" {
    Properties {
        _node_1448 ("node_1448", Range(0, 1)) = 1
        _87238 ("87238", 2D) = "white" {}
        _multi_9184 ("multi_9184", Range(1, 100)) = 1
        _multi ("multi", Range(1, 100)) = 1
        _node_6378 ("node_6378", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_1448;
            uniform sampler2D _87238; uniform float4 _87238_ST;
            uniform float _multi_9184;
            uniform float _multi;
            uniform sampler2D _node_6378; uniform float4 _node_6378_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float3 node_7282 = abs(i.normalDir);
                float3 node_9503 = (node_7282*node_7282);
                float2 node_3443 = (float2(i.posWorld.g,i.posWorld.b)*_multi);
                float4 node_9213 = tex2D(_node_6378,TRANSFORM_TEX(node_3443, _node_6378));
                float2 node_7800 = (float2(i.posWorld.b,i.posWorld.r)*_multi);
                float4 node_9975 = tex2D(_node_6378,TRANSFORM_TEX(node_7800, _node_6378));
                float2 node_1047 = (float2(i.posWorld.r,i.posWorld.g)*_multi);
                float4 node_6454 = tex2D(_node_6378,TRANSFORM_TEX(node_1047, _node_6378));
                float gloss = (node_9503.r*node_9213.rgb + node_9503.g*node_9975.rgb + node_9503.b*node_6454.rgb).r;
                float perceptualRoughness = 1.0 - (node_9503.r*node_9213.rgb + node_9503.g*node_9975.rgb + node_9503.b*node_6454.rgb).r;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _node_1448;
                float specularMonochrome;
                float3 node_2908 = abs(i.normalDir);
                float3 node_5551 = (node_2908*node_2908);
                float4 node_2271 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.g,i.posWorld.b)*_multi_9184), _87238));
                float4 node_2541 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.b,i.posWorld.r)*_multi_9184), _87238));
                float4 node_7296 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.r,i.posWorld.g)*_multi_9184), _87238));
                float3 diffuseColor = (node_5551.r*node_2271.rgb + node_5551.g*node_2541.rgb + node_5551.b*node_7296.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_1448;
            uniform sampler2D _87238; uniform float4 _87238_ST;
            uniform float _multi_9184;
            uniform float _multi;
            uniform sampler2D _node_6378; uniform float4 _node_6378_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float3 node_7282 = abs(i.normalDir);
                float3 node_9503 = (node_7282*node_7282);
                float2 node_3443 = (float2(i.posWorld.g,i.posWorld.b)*_multi);
                float4 node_9213 = tex2D(_node_6378,TRANSFORM_TEX(node_3443, _node_6378));
                float2 node_7800 = (float2(i.posWorld.b,i.posWorld.r)*_multi);
                float4 node_9975 = tex2D(_node_6378,TRANSFORM_TEX(node_7800, _node_6378));
                float2 node_1047 = (float2(i.posWorld.r,i.posWorld.g)*_multi);
                float4 node_6454 = tex2D(_node_6378,TRANSFORM_TEX(node_1047, _node_6378));
                float gloss = (node_9503.r*node_9213.rgb + node_9503.g*node_9975.rgb + node_9503.b*node_6454.rgb).r;
                float perceptualRoughness = 1.0 - (node_9503.r*node_9213.rgb + node_9503.g*node_9975.rgb + node_9503.b*node_6454.rgb).r;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _node_1448;
                float specularMonochrome;
                float3 node_2908 = abs(i.normalDir);
                float3 node_5551 = (node_2908*node_2908);
                float4 node_2271 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.g,i.posWorld.b)*_multi_9184), _87238));
                float4 node_2541 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.b,i.posWorld.r)*_multi_9184), _87238));
                float4 node_7296 = tex2D(_87238,TRANSFORM_TEX((float2(i.posWorld.r,i.posWorld.g)*_multi_9184), _87238));
                float3 diffuseColor = (node_5551.r*node_2271.rgb + node_5551.g*node_2541.rgb + node_5551.b*node_7296.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
