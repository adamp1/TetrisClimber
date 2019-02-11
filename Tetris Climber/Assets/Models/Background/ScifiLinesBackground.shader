// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8846,x:33196,y:32785,varname:node_8846,prsc:2|diff-5484-OUT,spec-2994-OUT,gloss-7953-OUT,emission-8105-OUT;n:type:ShaderForge.SFN_Tex2d,id:5824,x:32119,y:32882,ptovrint:False,ptlb:emissive mask,ptin:_emissivemask,varname:node_5824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a9e3828283aea8144965f45fadae2f32,ntxv:0,isnm:False|UVIN-1684-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1569,x:31434,y:32691,varname:node_1569,prsc:2;n:type:ShaderForge.SFN_Append,id:8841,x:31669,y:32738,varname:node_8841,prsc:2|A-1569-X,B-1569-Y;n:type:ShaderForge.SFN_Multiply,id:1684,x:31919,y:32865,varname:node_1684,prsc:2|A-8841-OUT,B-9094-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7305,x:31365,y:33009,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_7305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:450,x:31999,y:32565,ptovrint:False,ptlb:color,ptin:_color,varname:node_450,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:129,x:32179,y:32700,ptovrint:False,ptlb:metallic,ptin:_metallic,varname:node_129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:7953,x:32225,y:32779,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_7953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5811554,max:1;n:type:ShaderForge.SFN_Lerp,id:8105,x:32481,y:33292,varname:node_8105,prsc:2|A-982-OUT,B-3757-OUT,T-5824-R;n:type:ShaderForge.SFN_Vector1,id:982,x:32178,y:33302,varname:node_982,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:3757,x:32297,y:33413,varname:node_3757,prsc:2|A-2222-RGB,B-272-OUT;n:type:ShaderForge.SFN_Color,id:2222,x:32029,y:33379,ptovrint:False,ptlb:em color,ptin:_emcolor,varname:node_2222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.7923036,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:272,x:32111,y:33602,ptovrint:False,ptlb:em intensity,ptin:_emintensity,varname:node_272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Vector4Property,id:3406,x:31414,y:33212,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_3406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Append,id:9094,x:31693,y:33066,varname:node_9094,prsc:2|A-3406-X,B-3406-Y;n:type:ShaderForge.SFN_Lerp,id:5484,x:32530,y:32848,varname:node_5484,prsc:2|A-450-RGB,B-763-OUT,T-5824-R;n:type:ShaderForge.SFN_Vector1,id:763,x:32317,y:32882,varname:node_763,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:1526,x:32544,y:33055,varname:node_1526,prsc:2|A-196-OUT,B-5303-OUT,T-5824-R;n:type:ShaderForge.SFN_Vector1,id:196,x:32390,y:33021,varname:node_196,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5303,x:32339,y:33076,varname:node_5303,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:4728,x:32720,y:33124,varname:node_4728,prsc:2|IN-1526-OUT;n:type:ShaderForge.SFN_Lerp,id:2994,x:32879,y:32959,varname:node_2994,prsc:2|A-4949-OUT,B-4823-OUT,T-5824-R;n:type:ShaderForge.SFN_Vector1,id:4949,x:32708,y:32914,varname:node_4949,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4823,x:32693,y:32970,varname:node_4823,prsc:2,v1:1;proporder:450-129-7953-5824-7305-2222-272-3406;pass:END;sub:END;*/

Shader "Custom/ScifiLinesBackground" {
    Properties {
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _metallic ("metallic", Range(0, 1)) = 1
        _gloss ("gloss", Range(0, 1)) = 0.5811554
        _emissivemask ("emissive mask", 2D) = "white" {}
        _scale ("scale", Float ) = 1
        _emcolor ("em color", Color) = (0,0.7923036,1,1)
        _emintensity ("em intensity", Float ) = 4
        _scale ("scale", Vector) = (1,1,0,0)
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _emissivemask; uniform float4 _emissivemask_ST;
            uniform float4 _color;
            uniform float _gloss;
            uniform float4 _emcolor;
            uniform float _emintensity;
            uniform float4 _scale;
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
                float gloss = _gloss;
                float perceptualRoughness = 1.0 - _gloss;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float2 node_1684 = (float2(i.posWorld.r,i.posWorld.g)*float2(_scale.r,_scale.g));
                float4 _emissivemask_var = tex2D(_emissivemask,TRANSFORM_TEX(node_1684, _emissivemask));
                float3 specularColor = lerp(0.0,1.0,_emissivemask_var.r);
                float specularMonochrome;
                float node_763 = 0.0;
                float3 diffuseColor = lerp(_color.rgb,float3(node_763,node_763,node_763),_emissivemask_var.r); // Need this for specular when using metallic
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
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_982 = 0.0;
                float3 emissive = lerp(float3(node_982,node_982,node_982),(_emcolor.rgb*_emintensity),_emissivemask_var.r);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _emissivemask; uniform float4 _emissivemask_ST;
            uniform float4 _color;
            uniform float _gloss;
            uniform float4 _emcolor;
            uniform float _emintensity;
            uniform float4 _scale;
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
                float gloss = _gloss;
                float perceptualRoughness = 1.0 - _gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float2 node_1684 = (float2(i.posWorld.r,i.posWorld.g)*float2(_scale.r,_scale.g));
                float4 _emissivemask_var = tex2D(_emissivemask,TRANSFORM_TEX(node_1684, _emissivemask));
                float3 specularColor = lerp(0.0,1.0,_emissivemask_var.r);
                float specularMonochrome;
                float node_763 = 0.0;
                float3 diffuseColor = lerp(_color.rgb,float3(node_763,node_763,node_763),_emissivemask_var.r); // Need this for specular when using metallic
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
