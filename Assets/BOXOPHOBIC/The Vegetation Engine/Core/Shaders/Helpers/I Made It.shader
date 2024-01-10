// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/I Made It"
{
	Properties
	{
		[StyledBanner(I Made It)]_Title("Banner", Float) = 0
		[StyledMessage(Info, Use this helper shader to set your maps and the converter will pack them to be used with the vegetation shaders. All the other parameters will be set on the vegetation materials., 0, 5 )]_MainMessage("!!! Main Message !!!", Float) = 0
		[StyledCategory(Render Settings)]_CategorySettings("[ Category Settings ]", Float) = 0
		[Enum(Bark Material,0,Leaf Material,1,Prop Material,2)]_MaterialMode("Material Mode", Float) = 1
		[Enum(Mask Map,0,Separate Maps,1)]_MasksMode("Masks Mode", Float) = 0
		[Enum(Smoothness Map,0,Roughness Map,1)]_SmoothnessMode("Smootness Mode", Float) = 0
		[Enum(Subsurface Map,0,Thickness Map,1)]_SubsurfaceMode("Subsurface Mode", Float) = 0
		[Space][StyledToggle]_MainNormalXMode("Use Inverted Normal R", Float) = 0
		[StyledToggle]_MainNormalYMode("Use Inverted Normal G", Float) = 0
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		_AlphaClipValue("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledCategory(Main Settings)]_CategoryMain("[ Category Main ]", Float) = 0
		[StyledMessage(Info, Use a Mask Map for the surface shading or use separate maps and the converter will pack them automatically., 5, 10 )]_SurfaceMessage("!!! Surface Message !!!", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_MainAlbedoTex("Main Albedo (RGB) Alpha (A)", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainMaskTex("Main Mask Metallic (R) Occlusion (G) Mask (B) Smoothness (A)", 2D) = "gray" {}
		[NoScaleOffset][Space(10)][StyledTextureSingleLine]_MainMetallicTex("Main Metallic (R)", 2D) = "black" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainOcclusionTex("Main Occlusion (R)", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainSmoothnessTex("Main Smoothness or Roughness (R)", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainSubsurfaceTex("Main Subsurface or Detail Mask (R)", 2D) = "black" {}
		[Space(10)][StyledVector(9)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainMetallicValue("Main Metallic", Range( 0 , 1)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 1
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Emissive Settings)]_CategoryEmissive("[ Category Emissive ]", Float) = 0
		[NoScaleOffset][Space(10)][StyledTextureSingleLine]_EmissiveTex("Emissive Texture (RGB)", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[Enum(None,0,Any,10,Baked,20,Realtime,30)]_EmissiveFlagMode("Emissive Baking", Float) = 0
		[HDR]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		_EmissiveIntensityValue1("Emissive Intensity", Float) = 1
		[StyledCategory(Additional Maps)]_CategoryAdditional("[ Category Additional ]", Float) = 0
		[StyledMessage(Info, Use the additional maps as vertex mask for motion or any other mask. Open the I Made It preset for more details., 5, 10 )]_AdditionalMessage("!!! Additional Message !!!", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_AdditionalTex1("Additional Mask 1", 2D) = "gray" {}
		[NoScaleOffset][StyledTextureSingleLine]_AdditionalTex2("Additional Mask 2", 2D) = "gray" {}
		[NoScaleOffset][StyledTextureSingleLine]_AdditionalTex3("Additional Mask 3", 2D) = "gray" {}
		[NoScaleOffset][StyledTextureSingleLine]_AdditionalTex4("Additional Mask 4", 2D) = "gray" {}
		[NoScaleOffset][StyledTextureSingleLine]_AdditionalTex5("Additional Mask 5", 2D) = "gray" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Custom"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform half _CategoryMain;
		uniform float _SurfaceMessage;
		uniform half _CategoryAdditional;
		uniform float _AdditionalMessage;
		uniform half _CategoryEmissive;
		uniform float _MasksMode;
		uniform float _AlphaClipValue;
		uniform float _RenderClip;
		uniform float _SubsurfaceMode;
		uniform sampler2D _AdditionalTex3;
		uniform sampler2D _AdditionalTex4;
		uniform sampler2D _AdditionalTex5;
		uniform sampler2D _AdditionalTex1;
		uniform sampler2D _MainMaskTex;
		uniform sampler2D _MainOcclusionTex;
		uniform sampler2D _MainMetallicTex;
		uniform sampler2D _AdditionalTex2;
		uniform sampler2D _MainSubsurfaceTex;
		uniform half _EmissiveFlagMode;
		uniform sampler2D _MainSmoothnessTex;
		uniform float _SmoothnessMode;
		uniform float _MainNormalYMode;
		uniform float _MainNormalXMode;
		uniform sampler2D _MainNormalTex;
		uniform half _Title;
		uniform half _CategorySettings;
		uniform float _MainMessage;
		uniform float _MaterialMode;
		uniform half4 _MainUVs;
		uniform float _MainNormalValue;
		uniform sampler2D _MainAlbedoTex;
		uniform float4 _MainColor;
		uniform half4 _EmissiveColor;
		uniform half _EmissiveIntensityValue1;
		uniform sampler2D _EmissiveTex;
		uniform half4 _EmissiveUVs;
		uniform float _MainMetallicValue;
		uniform float _MainSmoothnessValue;
		uniform float _MainOcclusionValue;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			half2 Main_UVs1167_g10 = ( ( i.uv_texcoord * (_MainUVs).xy ) + (_MainUVs).zw );
			float4 tex2DNode1191_g10 = tex2D( _MainNormalTex, Main_UVs1167_g10 );
			float Main_Normal_X1278_g10 = tex2DNode1191_g10.a;
			float lerpResult1280_g10 = lerp( Main_Normal_X1278_g10 , ( 1.0 - Main_Normal_X1278_g10 ) , _MainNormalXMode);
			float Main_Normal_Y1279_g10 = tex2DNode1191_g10.g;
			float lerpResult1287_g10 = lerp( Main_Normal_Y1279_g10 , ( 1.0 - Main_Normal_Y1279_g10 ) , _MainNormalYMode);
			float3 appendResult1273_g10 = (float3(( (lerpResult1280_g10*2.0 + -1.0) * _MainNormalValue ) , ( (lerpResult1287_g10*2.0 + -1.0) * _MainNormalValue ) , 1.0));
			float3 Main_Normal1201_g10 = appendResult1273_g10;
			o.Normal = Main_Normal1201_g10;
			float4 tex2DNode1176_g10 = tex2D( _MainAlbedoTex, Main_UVs1167_g10 );
			float4 Main_Albedo1198_g10 = ( tex2DNode1176_g10 * _MainColor );
			o.Albedo = Main_Albedo1198_g10.rgb;
			float4 temp_output_1254_0_g10 = ( _EmissiveColor * _EmissiveIntensityValue1 );
			half2 Emissive_UVs1240_g10 = ( ( i.uv_texcoord * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
			half3 Final_Emissive1258_g10 = (( temp_output_1254_0_g10 * tex2D( _EmissiveTex, Emissive_UVs1240_g10 ) )).rgb;
			o.Emission = Final_Emissive1258_g10;
			float4 tex2DNode1181_g10 = tex2D( _MainMaskTex, Main_UVs1167_g10 );
			float Mode_Masks1173_g10 = _MasksMode;
			float lerpResult1189_g10 = lerp( tex2DNode1181_g10.r , tex2D( _MainMetallicTex, Main_UVs1167_g10 ).r , Mode_Masks1173_g10);
			float Main_Metallic1200_g10 = ( lerpResult1189_g10 * _MainMetallicValue );
			o.Metallic = Main_Metallic1200_g10;
			float4 tex2DNode1180_g10 = tex2D( _MainSmoothnessTex, Main_UVs1167_g10 );
			float lerpResult1269_g10 = lerp( tex2DNode1180_g10.r , ( 1.0 - tex2DNode1180_g10.r ) , _SmoothnessMode);
			float lerpResult1188_g10 = lerp( tex2DNode1181_g10.a , lerpResult1269_g10 , Mode_Masks1173_g10);
			float Main_Smoothness1202_g10 = ( lerpResult1188_g10 * _MainSmoothnessValue );
			o.Smoothness = Main_Smoothness1202_g10;
			float lerpResult1185_g10 = lerp( tex2DNode1181_g10.g , tex2D( _MainOcclusionTex, Main_UVs1167_g10 ).r , Mode_Masks1173_g10);
			float lerpResult1192_g10 = lerp( 1.0 , lerpResult1185_g10 , _MainOcclusionValue);
			float Main_Occlusion1205_g10 = lerpResult1192_g10;
			o.Occlusion = Main_Occlusion1205_g10;
			float localCustomAlphaClip9_g11 = ( 0.0 );
			float Main_Alpha1195_g10 = tex2DNode1176_g10.a;
			float temp_output_3_0_g11 = Main_Alpha1195_g10;
			float Alpha9_g11 = temp_output_3_0_g11;
			float temp_output_15_0_g11 = ( _AlphaClipValue * _RenderClip );
			float Treshold9_g11 = temp_output_15_0_g11;
			{
			#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
					clip(Alpha9_g11 - Treshold9_g11);
				#endif
			#else
				clip(Alpha9_g11 - Treshold9_g11);
			#endif
			}
			o.Alpha = Alpha9_g11;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "TVEShaderHelperGUI"
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.FunctionNode;542;384,-384;Inherit;False;Compile All Shaders;-1;;5;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;522;384,-256;Float;False;True;-1;4;TVEShaderHelperGUI;0;0;Standard;BOXOPHOBIC/The Vegetation Engine/I Made It;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Custom;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;0;-1;-1;-1;0;False;0;0;False;;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;17;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.FunctionNode;546;0,-256;Inherit;False;Tool I Made It;1;;10;ea1031f7d4ccc5b46a9938085e401ba7;0;0;7;COLOR;338;FLOAT3;1233;FLOAT3;1266;FLOAT;1234;FLOAT;1235;FLOAT;1236;FLOAT;1272
WireConnection;522;0;546;338
WireConnection;522;1;546;1233
WireConnection;522;2;546;1266
WireConnection;522;3;546;1234
WireConnection;522;4;546;1235
WireConnection;522;5;546;1236
WireConnection;522;9;546;1272
ASEEND*/
//CHKSM=38CB74DEE65B5FCFED428AB485F7F10E3E63CC4B