// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2943,x:33545,y:32484,varname:node_2943,prsc:2|diff-6301-RGB,spec-6850-OUT,gloss-3264-OUT,normal-2788-OUT,emission-8657-OUT,alpha-9928-OUT,voffset-8269-OUT;n:type:ShaderForge.SFN_Color,id:6301,x:32064,y:32457,ptovrint:False,ptlb:node_6301,ptin:_node_6301,varname:node_6301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:3264,x:31935,y:32755,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:node_3264,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6850,x:31935,y:32651,ptovrint:False,ptlb:metallic,ptin:_metallic,varname:node_6850,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:9095,x:30758,y:33008,varname:node_9095,prsc:2;n:type:ShaderForge.SFN_Sin,id:2868,x:31248,y:32980,varname:node_2868,prsc:2|IN-5952-OUT;n:type:ShaderForge.SFN_Multiply,id:8269,x:32475,y:33086,varname:node_8269,prsc:2|A-1824-OUT,B-2669-OUT;n:type:ShaderForge.SFN_Vector3,id:2669,x:32475,y:33330,varname:node_2669,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:1824,x:32034,y:33098,varname:node_1824,prsc:2|A-9335-OUT,B-3937-OUT;n:type:ShaderForge.SFN_Vector1,id:3937,x:32143,y:33366,varname:node_3937,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:9335,x:31777,y:33059,varname:node_9335,prsc:2|A-2074-OUT,B-8800-OUT;n:type:ShaderForge.SFN_Cos,id:8605,x:31248,y:33186,varname:node_8605,prsc:2|IN-490-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7028,x:32225,y:32166,varname:node_7028,prsc:2;n:type:ShaderForge.SFN_DDX,id:9537,x:32525,y:32051,varname:node_9537,prsc:2|IN-7028-XYZ;n:type:ShaderForge.SFN_DDY,id:9812,x:32503,y:32309,varname:node_9812,prsc:2|IN-7028-XYZ;n:type:ShaderForge.SFN_Normalize,id:7723,x:32749,y:32129,varname:node_7723,prsc:2|IN-9537-OUT;n:type:ShaderForge.SFN_Normalize,id:5756,x:32741,y:32291,varname:node_5756,prsc:2|IN-9812-OUT;n:type:ShaderForge.SFN_Cross,id:2788,x:32971,y:32196,varname:node_2788,prsc:2|A-7723-OUT,B-5756-OUT;n:type:ShaderForge.SFN_Time,id:4661,x:29862,y:33387,varname:node_4661,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2541,x:30746,y:33277,varname:node_2541,prsc:2|A-7560-OUT,B-9760-OUT;n:type:ShaderForge.SFN_Vector1,id:9760,x:30491,y:33443,varname:node_9760,prsc:2,v1:4;n:type:ShaderForge.SFN_Add,id:5952,x:31000,y:32980,varname:node_5952,prsc:2|A-2541-OUT,B-9095-X;n:type:ShaderForge.SFN_Add,id:490,x:31017,y:33186,varname:node_490,prsc:2|A-9095-Z,B-2541-OUT;n:type:ShaderForge.SFN_Tex2d,id:4332,x:30149,y:33044,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_4332,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e7615bf14a6fc9b4e88755d6ac3fba67,ntxv:0,isnm:False|UVIN-2227-OUT;n:type:ShaderForge.SFN_Add,id:7560,x:30491,y:33168,varname:node_7560,prsc:2|A-4332-RGB,B-4661-T;n:type:ShaderForge.SFN_TexCoord,id:3138,x:29589,y:32986,varname:node_3138,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:2227,x:29881,y:33048,varname:node_2227,prsc:2|A-3138-UVOUT,B-5714-OUT;n:type:ShaderForge.SFN_Multiply,id:5714,x:29862,y:33208,varname:node_5714,prsc:2|A-6625-OUT,B-4661-T;n:type:ShaderForge.SFN_Vector1,id:6625,x:29560,y:33277,varname:node_6625,prsc:2,v1:0.1;n:type:ShaderForge.SFN_DepthBlend,id:9928,x:32631,y:32916,varname:node_9928,prsc:2|DIST-1449-OUT;n:type:ShaderForge.SFN_Vector1,id:1449,x:32274,y:32945,varname:node_1449,prsc:2,v1:1;n:type:ShaderForge.SFN_Abs,id:2074,x:31478,y:32909,varname:node_2074,prsc:2|IN-2868-OUT;n:type:ShaderForge.SFN_Abs,id:8800,x:31517,y:33218,varname:node_8800,prsc:2|IN-8605-OUT;n:type:ShaderForge.SFN_Color,id:7014,x:32768,y:32506,ptovrint:False,ptlb:em color,ptin:_emcolor,varname:node_7014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3443396,c3:0.3443396,c4:1;n:type:ShaderForge.SFN_Multiply,id:4676,x:33087,y:32542,varname:node_4676,prsc:2|A-7014-RGB,B-7562-OUT;n:type:ShaderForge.SFN_Vector1,id:7562,x:32751,y:32711,varname:node_7562,prsc:2,v1:100;n:type:ShaderForge.SFN_Lerp,id:8657,x:33350,y:32704,varname:node_8657,prsc:2|A-4676-OUT,B-4306-OUT,T-5499-OUT;n:type:ShaderForge.SFN_Vector3,id:4306,x:32978,y:32673,varname:node_4306,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_DepthBlend,id:5499,x:32716,y:32786,varname:node_5499,prsc:2|DIST-6884-OUT;n:type:ShaderForge.SFN_Vector1,id:6884,x:32416,y:32779,varname:node_6884,prsc:2,v1:0.2;proporder:6301-6850-3264-4332-7014;pass:END;sub:END;*/

Shader "Custom/danger shader" {
    Properties {
        _node_6301 ("node_6301", Color) = (0,0,0,1)
        _metallic ("metallic", Range(0, 1)) = 0
        _gloss ("gloss", Range(0, 1)) = 0
        _noise ("noise", 2D) = "white" {}
        _emcolor ("em color", Color) = (1,0.3443396,0.3443396,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _node_6301;
            uniform float _gloss;
            uniform float _metallic;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float4 _emcolor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4661 = _Time;
                float2 node_2227 = (o.uv0+(0.1*node_4661.g));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_2227, _noise),0.0,0));
                float3 node_2541 = ((_noise_var.rgb+node_4661.g)*4.0);
                v.vertex.xyz += (((abs(sin((node_2541+mul(unity_ObjectToWorld, v.vertex).r)))+abs(cos((mul(unity_ObjectToWorld, v.vertex).b+node_2541))))*1.0)*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
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
                float3 specularColor = _metallic;
                float specularMonochrome;
                float3 diffuseColor = _node_6301.rgb; // Need this for specular when using metallic
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
                float3 emissive = lerp((_emcolor.rgb*100.0),float3(0,0,0),saturate((sceneZ-partZ)/0.2));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,saturate((sceneZ-partZ)/1.0));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _node_6301;
            uniform float _gloss;
            uniform float _metallic;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float4 _emcolor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4661 = _Time;
                float2 node_2227 = (o.uv0+(0.1*node_4661.g));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_2227, _noise),0.0,0));
                float3 node_2541 = ((_noise_var.rgb+node_4661.g)*4.0);
                v.vertex.xyz += (((abs(sin((node_2541+mul(unity_ObjectToWorld, v.vertex).r)))+abs(cos((mul(unity_ObjectToWorld, v.vertex).b+node_2541))))*1.0)*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb)));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
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
                float3 specularColor = _metallic;
                float specularMonochrome;
                float3 diffuseColor = _node_6301.rgb; // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * saturate((sceneZ-partZ)/1.0),0);
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _noise; uniform float4 _noise_ST;
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
                float4 node_4661 = _Time;
                float2 node_2227 = (o.uv0+(0.1*node_4661.g));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_2227, _noise),0.0,0));
                float3 node_2541 = ((_noise_var.rgb+node_4661.g)*4.0);
                v.vertex.xyz += (((abs(sin((node_2541+mul(unity_ObjectToWorld, v.vertex).r)))+abs(cos((mul(unity_ObjectToWorld, v.vertex).b+node_2541))))*1.0)*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
