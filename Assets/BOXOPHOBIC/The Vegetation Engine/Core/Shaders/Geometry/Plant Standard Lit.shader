// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Standard Lit"
{
	Properties
	{
		[StyledCategory(Render Settings, 5, 10)]_CategoryRender("[ Category Render ]", Float) = 1
		[Enum(Opaque,0,Transparent,1)]_RenderMode("Render Mode", Float) = 0
		[Enum(Off,0,On,1)]_RenderZWrite("Render ZWrite", Float) = 1
		[Enum(Both,0,Back,1,Front,2)]_RenderCull("Render Faces", Float) = 0
		[Enum(Flip,0,Mirror,1,Same,2)]_RenderNormals("Render Normals", Float) = 0
		[HideInInspector]_RenderQueue("Render Queue", Float) = 0
		[HideInInspector]_RenderPriority("Render Priority", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Render Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderDecals("Render Decals", Float) = 0
		[Enum(Off,0,On,1)]_RenderSSR("Render SSR", Float) = 0
		[Space(10)]_RenderDirect("Render Lighting", Range( 0 , 1)) = 1
		_RenderAmbient("Render Ambient", Range( 0 , 1)) = 1
		_RenderShadow("Render Shadow", Range( 0 , 1)) = 1
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		[Enum(Off,0,On,1)]_RenderCoverage("Alpha To Mask", Float) = 0
		_AlphaClipValue("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceRenderFade("# Space Render Fade", Float) = 0
		_FadeConstantValue("Fade Constant", Range( 0 , 1)) = 0
		_FadeCameraValue("Fade Proximity", Range( 0 , 1)) = 1
		_FadeGlancingValue("Fade Glancing", Range( 0 , 1)) = 0
		[StyledCategory(Global Settings)]_CategoryGlobals("[ Category Globals ]", Float) = 1
		[StyledMessage(Info, Procedural Variation in use. The Variation might not work as expected when switching from one LOD to another., 0, 10)]_MessageGlobalsVariation("# Message Globals Variation", Float) = 0
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(TVEMotionLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(TVEVertexLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerVertexValue("Layer Vertex", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 1
		_GlobalAlpha("Global Alpha", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		_GlobalSize("Global Size Fade", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
		_ColorsVariationValue("Color Variation", Range( 0 , 1)) = 0.5
		_ColorsMaskValue("Color Use Mask", Range( 0 , 1)) = 1
		_AlphaVariationValue("Alpha Variation", Range( 0 , 1)) = 0.5
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0.5
		_OverlayProjectionValue("Overlay Projection", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceGlobalOptions("# Space Global Options", Float) = 0
		[StyledToggle]_ColorsPositionMode("Use Pivot Position for Colors", Float) = 0
		[StyledToggle]_ExtrasPositionMode("Use Pivot Position for Extras", Float) = 0
		[StyledCategory(Main Settings)]_CategoryMain("[Category Main ]", Float) = 1
		[StyledMessage(Info, Use the Main Mask remap sliders to control the mask for Global Color__ Main Colors__ Gradient Tinting and Subsurface Scattering when available. The mask is stored in Main Mask Blue channel. , 0, 10)]_MessageMainMask("# Message Main Mask", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Color,1)]_MainColorMode("Main Color", Float) = 0
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		[HDR]_MainColorTwo("Main ColorB", Color) = (1,1,1,1)
		_MainAlbedoValue("Main Albedo", Range( 0 , 1)) = 1
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 0
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 0
		[StyledRemapSlider(_MainMaskMinValue, _MainMaskMaxValue, 0, 1, 0, 0)]_MainMaskRemap("Main Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_MainMaskMinValue("Main Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_MainMaskMaxValue("Main Mask Max", Range( 0 , 1)) = 0
		[StyledCategory(Detail Settings)]_CategoryDetail("[ Category Detail ]", Float) = 1
		[StyledMessage(Info, Use the Detail Mask remap sliders to control the mask for Global Color__ Detail Colors__ Gradient Tinting and Subsurface Scattering when available. The mask is stored in Detail Mask Blue channel., 0, 10)]_MessageSecondMask("# Message Second Mask", Float) = 0
		[Enum(Off,0,On,1)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Overlay,0,Replace,1)]_DetailBlendMode("Detail Blend", Float) = 1
		[Enum(Overlay,0,Replace,1)]_DetailAlphaMode("Detail Alpha", Float) = 1
		[Space(10)][StyledToggle]_DetailFadeMode("Use Global Alpha and Fade", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_SecondAlbedoTex("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondNormalTex("Detail Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondMaskTex("Detail Mask", 2D) = "white" {}
		[Enum(Main UVs,0,Detail UVs,1,Planar UVs,2)][Space(10)]_SecondUVsMode("Detail UVs", Float) = 0
		[StyledVector(9)]_SecondUVs("Detail UVs", Vector) = (1,1,0,0)
		[StyledToggle]_SecondUVsScaleMode("Use Inverted Tilling Mode", Float) = 0
		[Enum(Constant,0,Dual Color,1)][Space(10)]_SecondColorMode("Detail Color", Float) = 0
		[HDR]_SecondColor("Detail Color", Color) = (1,1,1,1)
		[HDR]_SecondColorTwo("Detail ColorB", Color) = (1,1,1,1)
		_SecondAlbedoValue("Detail Albedo", Range( 0 , 1)) = 1
		_SecondNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_SecondOcclusionValue("Detail Occlusion", Range( 0 , 1)) = 0
		_SecondSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 0
		[StyledRemapSlider(_SecondMaskMinValue, _SecondMaskMaxValue, 0, 1, 0, 0)]_SecondMaskRemap("Detail Mask Remap", Vector) = (0,0,0,0)
		[HideInInspector]_SecondMaskMinValue("Detail Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_SecondMaskMaxValue("Detail Mask Max", Range( 0 , 1)) = 0
		[Space(10)]_DetailValue("Detail Blend Intensity", Range( 0 , 1)) = 1
		_DetailNormalValue("Detail Blend Normals", Range( 0 , 1)) = 1
		[StyledRemapSlider(_DetailBlendMinValue, _DetailBlendMaxValue,0,1)]_DetailBlendRemap("Detail Blend Remap", Vector) = (0,0,0,0)
		[HideInInspector]_DetailBlendMinValue("Detail Blend Min", Range( 0 , 1)) = 0.4
		[HideInInspector]_DetailBlendMaxValue("Detail Blend Max", Range( 0 , 1)) = 0.6
		[Enum(Vertex Blue,0,Projection,1)][Space(10)]_DetailMeshMode("Detail Surface Mask", Float) = 0
		[StyledRemapSlider(_DetailMeshMinValue, _DetailMeshMaxValue,0,1)]_DetailMeshRemap("Detail Surface Remap", Vector) = (0,0,0,0)
		[HideInInspector]_DetailMeshMinValue("Detail Surface Min", Range( 0 , 1)) = 0
		[HideInInspector]_DetailMeshMaxValue("Detail Surface Max", Range( 0 , 1)) = 1
		[Enum(Main Mask,0,Detail Mask,1)]_DetailMaskMode("Detail Texture Mask", Float) = 0
		[StyledRemapSlider(_DetailMaskMinValue, _DetailMaskMaxValue,0,1)]_DetailMaskRemap("Detail Texture Remap", Vector) = (0,0,0,0)
		[HideInInspector]_DetailMaskMinValue("Detail Texture Min", Range( 0 , 1)) = 0
		[HideInInspector]_DetailMaskMaxValue("Detail Texture Max", Range( 0 , 1)) = 1
		[HideInInspector]_second_uvs_mode("_second_uvs_mode", Vector) = (0,0,0,0)
		[StyledCategory(Occlusion Settings)]_CategoryOcclusion("[ Category Occlusion ]", Float) = 1
		[StyledMessage(Info, Use the Occlusion Color for tinting and the Occlusion Alpha as Global Color and Global Overlay mask control. The mask is stored in Vertex Green channel. , 0, 10)]_MessageOcclusion("# Message Occlusion", Float) = 0
		[HDR]_VertexOcclusionColor("Occlusion Color", Color) = (1,1,1,0.5019608)
		[StyledRemapSlider(_VertexOcclusionMinValue, _VertexOcclusionMaxValue, 0, 1, 0, 0)]_VertexOcclusionRemap("Occlusion Remap", Vector) = (0,0,0,0)
		[HideInInspector]_VertexOcclusionMinValue("Occlusion Min", Range( 0 , 1)) = 0
		[HideInInspector]_VertexOcclusionMaxValue("Occlusion Max", Range( 0 , 1)) = 1
		[Space(10)][StyledToggle]_VertexOcclusionColorsMode("Use Inverted Mask for Colors", Float) = 0
		[StyledToggle]_VertexOcclusionOverlayMode("Use Inverted Mask for Overlay", Float) = 0
		[StyledCategory(Gradient Settings)]_CategoryGradient("[ Category Gradient ]", Float) = 1
		[HDR]_GradientColorOne("Gradient ColorA", Color) = (1,1,1,1)
		[HDR]_GradientColorTwo("Gradient ColorB", Color) = (1,1,1,1)
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Remap", Vector) = (0,0,0,0)
		[HideInInspector]_GradientMinValue("Gradient Min", Range( 0 , 1)) = 0
		[HideInInspector]_GradientMaxValue("Gradient Max ", Range( 0 , 1)) = 1
		[StyledCategory(Noise Settings)]_CategoryNoise("[ Category Noise ]", Float) = 1
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Remap", Vector) = (0,0,0,0)
		[StyledCategory(Subsurface Settings)]_CategorySubsurface("[ Category Subsurface ]", Float) = 1
		[StyledMessage(Info, In HDRP__ the Subsurface Color and Power are fake effects used for artistic control. For physically correct subsurface scattering the Power slider need to be set to 0., 0, 10)]_MessageSubsurface("# Message Subsurface", Float) = 0
		[DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledSpace(10)]_SpaceSubsurface("# SpaceSubsurface", Float) = 0
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (1,1,1,1)
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
		_SubsurfaceMaskValue("Subsurface Use Mask", Range( 0 , 1)) = 1
		[StyledCategory(Matcap Settings)]_CategoryMatcap("[ Category Matcap ]", Float) = 1
		[StyledCategory(Rim Light Settings)]_CategoryRimLight("[ Category Rim Light ]", Float) = 1
		[StyledRemapSlider(_RimLightMinValue, _RimLightMaxValue, 0, 1, 0, 0)]_RimLightRemap("Rim Light Remap", Vector) = (0,0,0,0)
		[StyledCategory(Emissive Settings)]_CategoryEmissive("[ Category Emissive]", Float) = 1
		[Enum(Off,0,On,1)]_EmissiveMode("Emissive Mode", Float) = 0
		[Enum(None,0,Any,1,Baked,2,Realtime,3)]_EmissiveFlagMode("Emissive GI", Float) = 0
		[NoScaleOffset][Space(10)][StyledTextureSingleLine]_EmissiveTex("Emissive Texture", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[HDR]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[Enum(Nits,0,EV100,1)]_EmissiveIntensityMode("Emissive Power", Float) = 0
		_EmissiveIntensityValue("Emissive Power", Float) = 1
		_EmissivePhaseValue("Emissive Phase", Range( 0 , 1)) = 1
		[StyledRemapSlider(_EmissiveTexMinValue, _EmissiveTexMaxValue,0,1)]_EmissiveTexRemap("Emissive Remap", Vector) = (0,0,0,0)
		[HideInInspector]_EmissiveTexMinValue("Emissive Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_EmissiveTexMaxValue("Emissive Mask Max", Range( 0 , 1)) = 1
		[HideInInspector]_emissive_intensity_value("_emissive_intensity_value", Float) = 1
		[StyledCategory(Perspective Settings)]_CategoryPerspective("[ Category Perspective ]", Float) = 1
		_PerspectivePushValue("Perspective Push", Range( 0 , 4)) = 0
		_PerspectiveNoiseValue("Perspective Noise", Range( 0 , 4)) = 0
		_PerspectiveAngleValue("Perspective Angle", Range( 0 , 8)) = 1
		[StyledCategory(Size Fade Settings)]_CategorySizeFade("[ Category Size Fade ]", Float) = 1
		_SizeFadeStartValue("Size Fade Start", Range( 0 , 1000)) = 0
		_SizeFadeEndValue("Size Fade End", Range( 0 , 1000)) = 0
		[StyledCategory(Motion Settings)]_CategoryMotion("[ Category Motion ]", Float) = 1
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is splitting the mesh., 0, 10)]_MessageMotionVariation("# Message Motion Variation", Float) = 0
		[HDR]_MotionHighlightColor("Motion Highlight Color", Color) = (0,0,0,0)
		_MotionFacingValue("Motion Direction Mask", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_SpaceMotionGlobals("# SpaceMotionGlobals", Float) = 0
		_MotionAmplitude_10("Motion Bending", Range( 0 , 2)) = 0.2
		_MotionPosition_10("Motion Rigidity", Range( 0 , 1)) = 0.5
		[IntRange]_MotionSpeed_10("Motion Speed", Range( 0 , 40)) = 2
		_MotionScale_10("Motion Scale", Range( 0 , 20)) = 1
		_MotionVariation_10("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_20("Motion Squash", Range( 0 , 2)) = 0.2
		_MotionAmplitude_22("Motion Rolling", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_20("Motion Speed", Range( 0 , 40)) = 6
		_MotionScale_20("Motion Scale", Range( 0 , 20)) = 3
		_MotionVariation_20("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_32("Motion Flutter", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_32("Motion Speed", Range( 0 , 40)) = 20
		_MotionScale_32("Motion Scale", Range( 0 , 20)) = 10
		_MotionVariation_32("Motion Variation", Range( 0 , 20)) = 0
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 2)) = 1
		_InteractionMaskValue("Interaction Use Mask", Range( 0 , 1)) = 0
		[HideInInspector][StyledToggle]_VertexPivotMode("Enable Pre Baked Pivots", Float) = 0
		[HideInInspector][StyledToggle]_VertexDynamicMode("Enable Dynamic Support", Float) = 0
		[HideInInspector]_render_normals("_render_normals", Vector) = (1,1,1,0)
		[HideInInspector]_Cutoff("Legacy Cutoff", Float) = 0.5
		[HideInInspector]_Color("Legacy Color", Color) = (0,0,0,0)
		[HideInInspector]_MainTex("Legacy MainTex", 2D) = "white" {}
		[HideInInspector]_BumpMap("Legacy BumpMap", 2D) = "white" {}
		[HideInInspector]_MaxBoundsInfo("_MaxBoundsInfo", Vector) = (1,1,1,1)
		[HideInInspector]_MotionValue_30("_MotionValue_30", Float) = 1
		[HideInInspector]_MotionValue_20("_MotionValue_20", Float) = 1
		[HideInInspector]_ColorsMaskMinValue("_ColorsMaskMinValue", Range( 0 , 1)) = 1
		[HideInInspector]_ColorsMaskMaxValue("_ColorsMaskMaxValue", Range( 0 , 1)) = 0
		[HideInInspector]_DetailTypeMode("_DetailTypeMode", Float) = 2
		[HideInInspector]_DetailCoordMode("_DetailCoordMode", Float) = 0
		[HideInInspector]_DetailOpaqueMode("_DetailOpaqueMode", Float) = 0
		[HideInInspector]_DetailMeshInvertMode("_DetailMeshInvertMode", Float) = 0
		[HideInInspector]_DetailMaskInvertMode("_DetailMaskInvertMode", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsIdentifier("_IsIdentifier", Float) = 0
		[HideInInspector]_IsCollected("_IsCollected", Float) = 0
		[HideInInspector]_IsCustomShader("_IsCustomShader", Float) = 0
		[HideInInspector]_IsShared("_IsShared", Float) = 0
		[HideInInspector]_HasEmissive("_HasEmissive", Float) = 0
		[HideInInspector]_HasGradient("_HasGradient", Float) = 0
		[HideInInspector]_HasOcclusion("_HasOcclusion", Float) = 0
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_IsVersion("_IsVersion", Float) = 1230
		[HideInInspector]_IsCoreShader("_IsCoreShader", Float) = 1
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_src("_render_src", Float) = 1
		[HideInInspector]_render_dst("_render_dst", Float) = 0
		[HideInInspector]_render_zw("_render_zw", Float) = 1
		[HideInInspector]_render_coverage("_render_coverage", Float) = 0
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_IsPlantShader("_IsPlantShader", Float) = 1

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
		//[ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		//[ToggleOff] _GlossyReflections("Reflections", Float) = 1.0
	}

	SubShader
	{
		
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="False" }
	LOD 0

		Cull [_render_cull]
		AlphaToMask [_render_coverage]
		ZWrite [_render_zw]
		ZTest LEqual
		ColorMask RGBA
		
		Blend Off
		

		CGINCLUDE
		#pragma target 4.5

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			Blend [_render_src] [_render_dst]

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(LIGHTMAP_ON) || (!defined(LIGHTMAP_ON) && SHADER_TARGET >= 30)
					float4 lmap : TEXCOORD0;
				#endif
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
					half3 sh : TEXCOORD1;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_color : COLOR;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_cull;
			uniform half _render_coverage;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _IsStandardShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderCull;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _SpaceGlobalLocals;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half4 _RimLightRemap;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsCoreShader;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half4 _DetailMaskRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailBlendRemap;
			uniform half4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform half _Cutoff;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MotionValue_30;
			uniform half _MotionValue_20;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half _MessageSubsurface;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceSubsurface;
			uniform half _SpaceMotionGlobals;
			uniform half _CategoryDetail;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _RenderZWrite;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderClip;
			uniform half _RenderCoverage;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMaskInvertMode;
			uniform half _DetailMeshInvertMode;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half _MessageOcclusion;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half4 _EmissiveTexRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half3 TVE_MainLightDirection;
			uniform half TVE_OverlayNormalValue;
			uniform half TVE_WetnessNormalValue;
			uniform half3 _render_normals;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _RenderSpecular;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half _FadeGlancingValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g77006 = v.vertex.xyz;
				float3 appendResult60_g77016 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g77006 = ( appendResult60_g77016 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g77006 = Mesh_PivotsData2831_g77006;
				float3 temp_output_2283_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				half3 VertexPos40_g77087 = temp_output_2283_0_g77006;
				half3 VertexPos40_g77088 = VertexPos40_g77087;
				float3 appendResult74_g77088 = (float3(VertexPos40_g77088.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g77088 = appendResult74_g77088;
				float3 break84_g77088 = VertexPos40_g77088;
				float3 appendResult81_g77088 = (float3(0.0 , break84_g77088.y , break84_g77088.z));
				half3 VertexPosOtherAxis82_g77088 = appendResult81_g77088;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g77006 = ase_worldPos;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 WorldPosition_Shifted7477_g77006 = ( WorldPosition3905_g77006 - TVE_WorldOrigin );
				float4x4 break19_g77062 = unity_ObjectToWorld;
				float3 appendResult20_g77062 = (float3(break19_g77062[ 0 ][ 3 ] , break19_g77062[ 1 ][ 3 ] , break19_g77062[ 2 ][ 3 ]));
				float3 temp_output_122_0_g77062 = Mesh_PivotsData2831_g77006;
				float3 PivotsOnly105_g77062 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g77062 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g77064 = ( appendResult20_g77062 + PivotsOnly105_g77062 );
				half3 WorldData19_g77064 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77064 = WorldData19_g77064;
				#else
				float3 staticSwitch14_g77064 = ObjectData20_g77064;
				#endif
				float3 temp_output_114_0_g77062 = staticSwitch14_g77064;
				float3 vertexToFrag4224_g77006 = temp_output_114_0_g77062;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				float3 lerpResult6766_g77006 = lerp( WorldPosition_Shifted7477_g77006 , ObjectPosition_Shifted7481_g77006 , _MotionPosition_10);
				float3 Motion_10_Position6738_g77006 = lerpResult6766_g77006;
				half3 Input_Position419_g77102 = Motion_10_Position6738_g77006;
				float Input_MotionScale287_g77102 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77102 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77102 = (( Input_Position419_g77102 * Input_MotionScale287_g77102 * NoiseTex_Tilling735_g77102 * 0.0075 )).xz;
				float2 temp_output_447_0_g77011 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g77006 = temp_output_447_0_g77011;
				half2 Input_DirectionWS423_g77102 = Global_Wind_DirectionWS4683_g77006;
				float lerpResult128_g77103 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77102 = _MotionSpeed_10;
				half Input_MotionVariation284_g77102 = _MotionVariation_10;
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = v.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				half Input_GlobalMeshVariation569_g77102 = Global_MeshVariation5104_g77006;
				float temp_output_630_0_g77102 = ( ( ( lerpResult128_g77103 * Input_MotionSpeed62_g77102 ) + ( Input_MotionVariation284_g77102 * Input_GlobalMeshVariation569_g77102 ) ) * 0.03 );
				float temp_output_607_0_g77102 = frac( temp_output_630_0_g77102 );
				float4 lerpResult590_g77102 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * temp_output_607_0_g77102 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * frac( ( temp_output_630_0_g77102 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77102 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77102 = lerpResult590_g77102;
				float2 temp_output_645_0_g77102 = ((Noise_Complex703_g77102).rg*2.0 + -1.0);
				float2 break650_g77102 = temp_output_645_0_g77102;
				float3 appendResult649_g77102 = (float3(break650_g77102.x , 0.0 , break650_g77102.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g77006 = (( mul( unity_WorldToObject, float4( appendResult649_g77102 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g77093 = Global_Noise_OS5548_g77006;
				float2 break448_g77011 = temp_output_447_0_g77011;
				float3 appendResult452_g77011 = (float3(break448_g77011.x , 0.0 , break448_g77011.y));
				half2 Global_Wind_DirectionOS5692_g77006 = (( mul( unity_WorldToObject, float4( appendResult452_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g77093 = Global_Wind_DirectionOS5692_g77006;
				float temp_output_84_0_g77017 = _LayerMotionValue;
				float temp_output_19_0_g77021 = TVE_MotionUsage[(int)temp_output_84_0_g77017];
				float4 temp_output_91_19_g77017 = TVE_MotionCoords;
				half2 UV94_g77017 = ( (temp_output_91_19_g77017).zw + ( (temp_output_91_19_g77017).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77017 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g77017,temp_output_84_0_g77017), 0.0 );
				float4 temp_output_17_0_g77021 = tex2DArrayNode50_g77017;
				float4 temp_output_112_19_g77017 = TVE_MotionParams;
				float4 temp_output_3_0_g77021 = temp_output_112_19_g77017;
				float4 ifLocalVar18_g77021 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77021 >= 0.5 )
				ifLocalVar18_g77021 = temp_output_17_0_g77021;
				else
				ifLocalVar18_g77021 = temp_output_3_0_g77021;
				float4 lerpResult22_g77021 = lerp( temp_output_3_0_g77021 , temp_output_17_0_g77021 , temp_output_19_0_g77021);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77021 = lerpResult22_g77021;
				#else
				float4 staticSwitch24_g77021 = ifLocalVar18_g77021;
				#endif
				half4 Global_Motion_Params3909_g77006 = staticSwitch24_g77021;
				float4 break322_g77011 = Global_Motion_Params3909_g77006;
				float lerpResult457_g77011 = lerp( break322_g77011.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g77011 = ( 1.0 - lerpResult457_g77011 );
				half Global_Wind_Power2223_g77006 = ( 1.0 - ( temp_output_459_0_g77011 * temp_output_459_0_g77011 ) );
				half Input_WindPower449_g77093 = Global_Wind_Power2223_g77006;
				float2 lerpResult516_g77093 = lerp( Input_Noise_DirectionOS487_g77093 , Input_Wind_DirectionOS458_g77093 , ( Input_WindPower449_g77093 * 0.6 ));
				half Mesh_Motion_107572_g77006 = v.ase_color.a;
				half Input_MeshHeight388_g77093 = Mesh_Motion_107572_g77006;
				half ObjectData20_g77094 = Input_MeshHeight388_g77093;
				float enc62_g77121 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77121 = DecodeFloatToVector2( enc62_g77121 );
				float2 break63_g77121 = ( localDecodeFloatToVector262_g77121 * 100.0 );
				float Bounds_Height5230_g77006 = break63_g77121.x;
				half Input_BoundsHeight390_g77093 = Bounds_Height5230_g77006;
				half WorldData19_g77094 = ( Input_MeshHeight388_g77093 * Input_MeshHeight388_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77094 = WorldData19_g77094;
				#else
				float staticSwitch14_g77094 = ObjectData20_g77094;
				#endif
				half Final_Motion10_Mask321_g77093 = ( staticSwitch14_g77094 * 2.0 );
				half Input_BendingAmplitude376_g77093 = _MotionAmplitude_10;
				half Global_MotionValue640_g77093 = TVE_MotionValue_10;
				half2 Final_Bending631_g77093 = ( lerpResult516_g77093 * ( Final_Motion10_Mask321_g77093 * Input_BendingAmplitude376_g77093 * Input_WindPower449_g77093 * Input_WindPower449_g77093 * Global_MotionValue640_g77093 ) );
				float2 appendResult433_g77011 = (float2(break322_g77011.x , break322_g77011.y));
				float2 temp_output_436_0_g77011 = (appendResult433_g77011*2.0 + -1.0);
				float2 break441_g77011 = temp_output_436_0_g77011;
				float3 appendResult440_g77011 = (float3(break441_g77011.x , 0.0 , break441_g77011.y));
				half2 Global_React_DirectionOS39_g77006 = (( mul( unity_WorldToObject, float4( appendResult440_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g77093 = Global_React_DirectionOS39_g77006;
				float clampResult17_g77096 = clamp( Input_MeshHeight388_g77093 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77095 = 0.0;
				half Input_InteractionUseMask62_g77093 = _InteractionMaskValue;
				float temp_output_10_0_g77095 = ( Input_InteractionUseMask62_g77093 - temp_output_7_0_g77095 );
				half Final_InteractionRemap594_g77093 = saturate( ( ( clampResult17_g77096 - temp_output_7_0_g77095 ) / ( temp_output_10_0_g77095 + 0.0001 ) ) );
				half ObjectData20_g77097 = Final_InteractionRemap594_g77093;
				half WorldData19_g77097 = ( Final_InteractionRemap594_g77093 * Final_InteractionRemap594_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77097 = WorldData19_g77097;
				#else
				float staticSwitch14_g77097 = ObjectData20_g77097;
				#endif
				half Final_InteractionMask373_g77093 = ( staticSwitch14_g77097 * 2.0 );
				half Input_InteractionAmplitude58_g77093 = _InteractionAmplitude;
				half2 Final_Interaction632_g77093 = ( Input_React_DirectionOS358_g77093 * Final_InteractionMask373_g77093 * Input_InteractionAmplitude58_g77093 );
				half Global_Interaction_Mask66_g77006 = ( break322_g77011.w * break322_g77011.w * break322_g77011.w * break322_g77011.w );
				float Input_InteractionGlobalMask330_g77093 = Global_Interaction_Mask66_g77006;
				half Final_InteractionValue525_g77093 = saturate( ( Input_InteractionAmplitude58_g77093 * Input_InteractionGlobalMask330_g77093 ) );
				float2 lerpResult551_g77093 = lerp( Final_Bending631_g77093 , Final_Interaction632_g77093 , Final_InteractionValue525_g77093);
				float2 break364_g77093 = lerpResult551_g77093;
				float3 appendResult638_g77093 = (float3(break364_g77093.x , 0.0 , break364_g77093.y));
				half3 Motion_10_Interaction7519_g77006 = appendResult638_g77093;
				half3 Angle44_g77087 = Motion_10_Interaction7519_g77006;
				half Angle44_g77088 = (Angle44_g77087).z;
				half3 VertexPos40_g77089 = ( VertexPosRotationAxis50_g77088 + ( VertexPosOtherAxis82_g77088 * cos( Angle44_g77088 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g77088 ) * sin( Angle44_g77088 ) ) );
				float3 appendResult74_g77089 = (float3(0.0 , 0.0 , VertexPos40_g77089.z));
				half3 VertexPosRotationAxis50_g77089 = appendResult74_g77089;
				float3 break84_g77089 = VertexPos40_g77089;
				float3 appendResult81_g77089 = (float3(break84_g77089.x , break84_g77089.y , 0.0));
				half3 VertexPosOtherAxis82_g77089 = appendResult81_g77089;
				half Angle44_g77089 = -(Angle44_g77087).x;
				half3 Input_Position419_g77117 = WorldPosition_Shifted7477_g77006;
				float3 break459_g77117 = Input_Position419_g77117;
				float Sum_Position446_g77117 = ( break459_g77117.x + break459_g77117.y + break459_g77117.z );
				half Input_MotionScale321_g77117 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77117 = _MotionVariation_20;
				half Input_GlobalVariation400_g77117 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77118 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77117 = _MotionSpeed_20;
				float temp_output_404_0_g77117 = ( lerpResult128_g77118 * Input_MotionSpeed62_g77117 );
				half Motion_SineA450_g77117 = sin( ( ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) + ( Input_MotionVariation330_g77117 * Input_GlobalVariation400_g77117 ) + temp_output_404_0_g77117 ) );
				half Motion_SineB395_g77117 = sin( ( ( temp_output_404_0_g77117 * 0.6842 ) + ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) ) );
				half3 Input_Position419_g77130 = VertexPosition3588_g77006;
				float3 normalizeResult518_g77130 = normalize( Input_Position419_g77130 );
				half2 Input_DirectionOS423_g77130 = Global_React_DirectionOS39_g77006;
				float2 break521_g77130 = -Input_DirectionOS423_g77130;
				float3 appendResult522_g77130 = (float3(break521_g77130.x , 0.0 , break521_g77130.y));
				float dotResult519_g77130 = dot( normalizeResult518_g77130 , appendResult522_g77130 );
				half Input_Value62_g77130 = _MotionFacingValue;
				float lerpResult524_g77130 = lerp( 1.0 , (dotResult519_g77130*0.5 + 0.5) , Input_Value62_g77130);
				half ObjectData20_g77131 = max( lerpResult524_g77130 , 0.001 );
				half WorldData19_g77131 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77131 = WorldData19_g77131;
				#else
				float staticSwitch14_g77131 = ObjectData20_g77131;
				#endif
				half Motion_FacingMask5214_g77006 = staticSwitch14_g77131;
				half Motion_20_Amplitude4381_g77006 = Motion_FacingMask5214_g77006;
				half Input_MotionAmplitude384_g77117 = Motion_20_Amplitude4381_g77006;
				half Input_GlobalWind407_g77117 = Global_Wind_Power2223_g77006;
				float4 break638_g77102 = abs( Noise_Complex703_g77102 );
				half Global_Noise_B5526_g77006 = break638_g77102.b;
				half Input_GlobalNoise411_g77117 = Global_Noise_B5526_g77006;
				float lerpResult413_g77117 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77117);
				half Motion_Amplitude418_g77117 = ( Input_MotionAmplitude384_g77117 * Input_GlobalWind407_g77117 * pow( Input_GlobalNoise411_g77117 , lerpResult413_g77117 ) );
				half Input_Squash58_g77117 = _MotionAmplitude_20;
				float enc59_g77121 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77121 = DecodeFloatToVector2( enc59_g77121 );
				float2 break61_g77121 = localDecodeFloatToVector259_g77121;
				half Mesh_Motion_2060_g77006 = break61_g77121.x;
				half Input_MeshMotion_20388_g77117 = Mesh_Motion_2060_g77006;
				float Bounds_Radius5231_g77006 = break63_g77121.y;
				half Input_BoundsRadius390_g77117 = Bounds_Radius5231_g77006;
				half Global_MotionValue462_g77117 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77117 = Global_React_DirectionOS39_g77006;
				float2 break371_g77117 = Input_DirectionOS366_g77117;
				float3 appendResult372_g77117 = (float3(break371_g77117.x , ( Motion_SineA450_g77117 * 0.3 ) , break371_g77117.y));
				half3 Motion_20_Squash4418_g77006 = ( ( (max( Motion_SineA450_g77117 , Motion_SineB395_g77117 )*0.5 + 0.5) * Motion_Amplitude418_g77117 * Input_Squash58_g77117 * Input_MeshMotion_20388_g77117 * Input_BoundsRadius390_g77117 * Global_MotionValue462_g77117 ) * appendResult372_g77117 );
				half3 VertexPos40_g77080 = ( ( VertexPosRotationAxis50_g77089 + ( VertexPosOtherAxis82_g77089 * cos( Angle44_g77089 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g77089 ) * sin( Angle44_g77089 ) ) ) + Motion_20_Squash4418_g77006 );
				float3 appendResult74_g77080 = (float3(0.0 , VertexPos40_g77080.y , 0.0));
				float3 VertexPosRotationAxis50_g77080 = appendResult74_g77080;
				float3 break84_g77080 = VertexPos40_g77080;
				float3 appendResult81_g77080 = (float3(break84_g77080.x , 0.0 , break84_g77080.z));
				float3 VertexPosOtherAxis82_g77080 = appendResult81_g77080;
				half Input_Rolling379_g77117 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g77006 = ( Motion_SineA450_g77117 * Motion_Amplitude418_g77117 * Input_Rolling379_g77117 * Input_MeshMotion_20388_g77117 * Global_MotionValue462_g77117 );
				half Angle44_g77080 = Motion_20_Rolling5257_g77006;
				half3 Input_Position500_g77098 = WorldPosition_Shifted7477_g77006;
				half Input_MotionScale321_g77098 = _MotionScale_32;
				half Input_MotionVariation330_g77098 = _MotionVariation_32;
				half Input_GlobalVariation372_g77098 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77099 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77098 = _MotionSpeed_32;
				float4 tex2DNode460_g77098 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77098).xz * Input_MotionScale321_g77098 * 0.03 ) + ( Input_MotionVariation330_g77098 * Input_GlobalVariation372_g77098 ) + ( lerpResult128_g77099 * Input_MotionSpeed62_g77098 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77098 = (float3(tex2DNode460_g77098.r , tex2DNode460_g77098.g , tex2DNode460_g77098.b));
				half3 Flutter_Texture489_g77098 = (appendResult462_g77098*2.0 + -1.0);
				float temp_output_7_0_g77056 = TVE_MotionFadeEnd;
				float temp_output_10_0_g77056 = ( TVE_MotionFadeStart - temp_output_7_0_g77056 );
				half Motion_FadeOut4005_g77006 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77056 ) / ( temp_output_10_0_g77056 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g77006 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g77006 * Motion_FadeOut4005_g77006 );
				half Input_MotionAmplitude58_g77098 = Motion_30_Amplitude4960_g77006;
				half Mesh_Motion_30144_g77006 = break61_g77121.y;
				half Input_MeshMotion_30374_g77098 = Mesh_Motion_30144_g77006;
				half Input_GlobalWind471_g77098 = Global_Wind_Power2223_g77006;
				half Global_MotionValue503_g77098 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77098 = Global_Noise_B5526_g77006;
				float lerpResult466_g77098 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77098);
				half Flutter_Amplitude491_g77098 = ( Input_MotionAmplitude58_g77098 * Input_MeshMotion_30374_g77098 * Input_GlobalWind471_g77098 * Global_MotionValue503_g77098 * pow( Input_GlobalNoise472_g77098 , lerpResult466_g77098 ) );
				half3 Motion_30_Flutter263_g77006 = ( Flutter_Texture489_g77098 * Flutter_Amplitude491_g77098 );
				float3 Vertex_Motion_Object833_g77006 = ( ( VertexPosRotationAxis50_g77080 + ( VertexPosOtherAxis82_g77080 * cos( Angle44_g77080 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g77080 ) * sin( Angle44_g77080 ) ) ) + Motion_30_Flutter263_g77006 );
				half3 ObjectData20_g77074 = Vertex_Motion_Object833_g77006;
				float3 temp_output_3474_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				float3 Vertex_Motion_World1118_g77006 = ( ( ( temp_output_3474_0_g77006 + Motion_10_Interaction7519_g77006 ) + Motion_20_Squash4418_g77006 ) + Motion_30_Flutter263_g77006 );
				half3 WorldData19_g77074 = Vertex_Motion_World1118_g77006;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77074 = WorldData19_g77074;
				#else
				float3 staticSwitch14_g77074 = ObjectData20_g77074;
				#endif
				float3 temp_output_7495_0_g77006 = staticSwitch14_g77074;
				float3 Vertex_Motion7493_g77006 = temp_output_7495_0_g77006;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 break2709_g77006 = cross( ViewDirection3963_g77006 , half3(0,1,0) );
				float3 appendResult2710_g77006 = (float3(-break2709_g77006.z , 0.0 , break2709_g77006.x));
				float3 appendResult2667_g77006 = (float3(Global_MeshVariation5104_g77006 , 0.5 , Global_MeshVariation5104_g77006));
				half Mesh_Height1524_g77006 = v.ase_color.a;
				float dotResult2212_g77006 = dot( ViewDirection3963_g77006 , float3(0,1,0) );
				half Mask_HView2656_g77006 = dotResult2212_g77006;
				float saferPower2652_g77006 = abs( Mask_HView2656_g77006 );
				half3 Grass_Perspective2661_g77006 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g77006 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g77006*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g77006 * pow( saferPower2652_g77006 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g77038 = _LayerVertexValue;
				float temp_output_19_0_g77042 = TVE_VertexUsage[(int)temp_output_84_0_g77038];
				float4 temp_output_94_19_g77038 = TVE_VertexCoords;
				half2 UV97_g77038 = ( (temp_output_94_19_g77038).zw + ( (temp_output_94_19_g77038).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77038 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g77038,temp_output_84_0_g77038), 0.0 );
				float4 temp_output_17_0_g77042 = tex2DArrayNode50_g77038;
				float4 temp_output_111_19_g77038 = TVE_VertexParams;
				float4 temp_output_3_0_g77042 = temp_output_111_19_g77038;
				float4 ifLocalVar18_g77042 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77042 >= 0.5 )
				ifLocalVar18_g77042 = temp_output_17_0_g77042;
				else
				ifLocalVar18_g77042 = temp_output_3_0_g77042;
				float4 lerpResult22_g77042 = lerp( temp_output_3_0_g77042 , temp_output_17_0_g77042 , temp_output_19_0_g77042);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77042 = lerpResult22_g77042;
				#else
				float4 staticSwitch24_g77042 = ifLocalVar18_g77042;
				#endif
				half4 Global_Vertex_Params4173_g77006 = staticSwitch24_g77042;
				float4 break322_g77043 = Global_Vertex_Params4173_g77006;
				half Global_VertexSize174_g77006 = saturate( break322_g77043.w );
				float lerpResult346_g77006 = lerp( 1.0 , Global_VertexSize174_g77006 , _GlobalSize);
				float3 appendResult3480_g77006 = (float3(lerpResult346_g77006 , lerpResult346_g77006 , lerpResult346_g77006));
				half3 ObjectData20_g77071 = appendResult3480_g77006;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g77071 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77071 = WorldData19_g77071;
				#else
				float3 staticSwitch14_g77071 = ObjectData20_g77071;
				#endif
				half3 Vertex_Size1741_g77006 = staticSwitch14_g77071;
				float temp_output_7_0_g77072 = _SizeFadeEndValue;
				float temp_output_10_0_g77072 = ( _SizeFadeStartValue - temp_output_7_0_g77072 );
				float temp_output_7453_0_g77006 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g77006 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g77072 ) / ( temp_output_10_0_g77072 + 0.0001 ) ) );
				float3 appendResult3482_g77006 = (float3(temp_output_7453_0_g77006 , temp_output_7453_0_g77006 , temp_output_7453_0_g77006));
				half3 ObjectData20_g77070 = appendResult3482_g77006;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g77070 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77070 = WorldData19_g77070;
				#else
				float3 staticSwitch14_g77070 = ObjectData20_g77070;
				#endif
				float3 Vertex_SizeFade1740_g77006 = staticSwitch14_g77070;
				float3 lerpResult16_g77075 = lerp( VertexPosition3588_g77006 , ( ( ( Vertex_Motion7493_g77006 + Grass_Perspective2661_g77006 ) * Vertex_Size1741_g77006 * Vertex_SizeFade1740_g77006 ) + Mesh_PivotsOS2291_g77006 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g77006 = lerpResult16_g77075;
				float3 Final_VertexPosition890_g77006 = ( temp_output_4912_0_g77006 + _DisableSRPBatcher );
				
				float4 break33_g77126 = _second_uvs_mode;
				float2 temp_output_30_0_g77126 = ( v.ase_texcoord.xy * break33_g77126.x );
				float2 appendResult21_g77121 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g77006 = appendResult21_g77121;
				float2 temp_output_29_0_g77126 = ( Mesh_DetailCoord3_g77006 * break33_g77126.y );
				float2 temp_output_31_0_g77126 = ( (WorldPosition_Shifted7477_g77006).xz * break33_g77126.z );
				half2 Second_UVs_Tilling7609_g77006 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g77006 = ( 1.0 / Second_UVs_Tilling7609_g77006 );
				float2 lerpResult7614_g77006 = lerp( Second_UVs_Tilling7609_g77006 , Second_UVs_Scale7610_g77006 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g77006 = (_SecondUVs).zw;
				float2 vertexToFrag11_g77032 = ( ( ( temp_output_30_0_g77126 + temp_output_29_0_g77126 + temp_output_31_0_g77126 ) * lerpResult7614_g77006 ) + Second_UVs_Offset7605_g77006 );
				o.ase_texcoord10.xy = vertexToFrag11_g77032;
				o.ase_texcoord11.xyz = vertexToFrag3890_g77006;
				o.ase_texcoord12.xyz = vertexToFrag4224_g77006;
				half Global_Noise_A4860_g77006 = break638_g77102.a;
				half Tint_Highlight_Value3231_g77006 = ( Global_Noise_A4860_g77006 * Global_Wind_Power2223_g77006 * Motion_FadeOut4005_g77006 * Mesh_Height1524_g77006 );
				float vertexToFrag11_g77047 = Tint_Highlight_Value3231_g77006;
				o.ase_texcoord10.z = vertexToFrag11_g77047;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g77006;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#ifdef DYNAMICLIGHTMAP_ON
				o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				#ifdef LIGHTMAP_ON
				o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						#ifdef VERTEXLIGHT_ON
						o.sh += Shade4PointLights (
							unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
							unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
							unity_4LightAtten0, worldPos, worldNormal);
						#endif
						o.sh = ShadeSHPerVertex (worldNormal, o.sh);
					#endif
				#endif

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				half2 Main_UVs15_g77006 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g77006 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g77006 );
				float3 lerpResult6223_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode29_g77006).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g77006 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				half Main_Mask57_g77006 = tex2DNode35_g77006.b;
				float clampResult17_g77111 = clamp( Main_Mask57_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77112 = _MainMaskMinValue;
				float temp_output_10_0_g77112 = ( _MainMaskMaxValue - temp_output_7_0_g77112 );
				half Main_Mask_Remap5765_g77006 = saturate( ( ( clampResult17_g77111 - temp_output_7_0_g77112 ) / ( temp_output_10_0_g77112 + 0.0001 ) ) );
				float lerpResult7671_g77006 = lerp( 1.0 , Main_Mask_Remap5765_g77006 , _MainColorMode);
				float4 lerpResult7654_g77006 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g77006);
				half3 Main_Color_RGB7657_g77006 = (lerpResult7654_g77006).rgb;
				half3 Main_Albedo99_g77006 = ( lerpResult6223_g77006 * Main_Color_RGB7657_g77006 );
				float2 vertexToFrag11_g77032 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g77006 = vertexToFrag11_g77032;
				float4 tex2DNode89_g77006 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g77006 );
				float3 lerpResult6225_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode89_g77006).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g77006 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				half Second_Mask81_g77006 = tex2DNode33_g77006.b;
				float clampResult17_g77114 = clamp( Second_Mask81_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77115 = _SecondMaskMinValue;
				float temp_output_10_0_g77115 = ( _SecondMaskMaxValue - temp_output_7_0_g77115 );
				half Second_Mask_Remap6130_g77006 = saturate( ( ( clampResult17_g77114 - temp_output_7_0_g77115 ) / ( temp_output_10_0_g77115 + 0.0001 ) ) );
				float lerpResult7672_g77006 = lerp( 1.0 , Second_Mask_Remap6130_g77006 , _SecondColorMode);
				float4 lerpResult7662_g77006 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g77006);
				half3 Second_Color_RGB7663_g77006 = (lerpResult7662_g77006).rgb;
				half3 Second_Albedo153_g77006 = ( lerpResult6225_g77006 * Second_Color_RGB7663_g77006 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77048 = 2.0;
				#else
				float staticSwitch1_g77048 = 4.594794;
				#endif
				float3 lerpResult4834_g77006 = lerp( ( Main_Albedo99_g77006 * Second_Albedo153_g77006 * staticSwitch1_g77048 ) , Second_Albedo153_g77006 , _DetailBlendMode);
				float lerpResult6885_g77006 = lerp( Main_Mask57_g77006 , Second_Mask81_g77006 , _DetailMaskMode);
				float clampResult17_g77084 = clamp( lerpResult6885_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77083 = _DetailMaskMinValue;
				float temp_output_10_0_g77083 = ( _DetailMaskMaxValue - temp_output_7_0_g77083 );
				half Blend_Mask_Texture6794_g77006 = saturate( ( ( clampResult17_g77084 - temp_output_7_0_g77083 ) / ( temp_output_10_0_g77083 + 0.0001 ) ) );
				half Mesh_DetailMask90_g77006 = IN.ase_color.b;
				half4 Normal_Packed45_g77110 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				float2 appendResult58_g77110 = (float2(( (Normal_Packed45_g77110).x * (Normal_Packed45_g77110).w ) , (Normal_Packed45_g77110).y));
				half2 Normal_Default50_g77110 = appendResult58_g77110;
				half2 Normal_ASTC41_g77110 = (Normal_Packed45_g77110).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77110 = Normal_ASTC41_g77110;
				#else
				float2 staticSwitch38_g77110 = Normal_Default50_g77110;
				#endif
				half2 Normal_NO_DTX544_g77110 = (Normal_Packed45_g77110).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77110 = Normal_NO_DTX544_g77110;
				#else
				float2 staticSwitch37_g77110 = staticSwitch38_g77110;
				#endif
				float2 temp_output_6555_0_g77006 = ( (staticSwitch37_g77110*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g77006 = (float3(temp_output_6555_0_g77006 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g77006 = appendResult7388_g77006;
				float3 worldNormal7389_g77006 = float3(dot(tanToWorld0,tanNormal7389_g77006), dot(tanToWorld1,tanNormal7389_g77006), dot(tanToWorld2,tanNormal7389_g77006));
				half3 Main_NormalWS7390_g77006 = worldNormal7389_g77006;
				float lerpResult6884_g77006 = lerp( Mesh_DetailMask90_g77006 , ((Main_NormalWS7390_g77006).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g77082 = clamp( lerpResult6884_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77081 = _DetailMeshMinValue;
				float temp_output_10_0_g77081 = ( _DetailMeshMaxValue - temp_output_7_0_g77081 );
				half Blend_Mask_Mesh1540_g77006 = saturate( ( ( clampResult17_g77082 - temp_output_7_0_g77081 ) / ( temp_output_10_0_g77081 + 0.0001 ) ) );
				float clampResult17_g77092 = clamp( ( Blend_Mask_Texture6794_g77006 * Blend_Mask_Mesh1540_g77006 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77107 = _DetailBlendMinValue;
				float temp_output_10_0_g77107 = ( _DetailBlendMaxValue - temp_output_7_0_g77107 );
				half Blend_Mask147_g77006 = ( saturate( ( ( clampResult17_g77092 - temp_output_7_0_g77107 ) / ( temp_output_10_0_g77107 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g77006 = lerp( Main_Albedo99_g77006 , lerpResult4834_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g77006 = lerpResult235_g77006;
				#else
				float3 staticSwitch255_g77006 = Main_Albedo99_g77006;
				#endif
				half3 Blend_Albedo265_g77006 = staticSwitch255_g77006;
				half Mesh_Height1524_g77006 = IN.ase_color.a;
				float temp_output_7_0_g77057 = _GradientMinValue;
				float temp_output_10_0_g77057 = ( _GradientMaxValue - temp_output_7_0_g77057 );
				half Tint_Gradient_Value2784_g77006 = saturate( ( ( Mesh_Height1524_g77006 - temp_output_7_0_g77057 ) / ( temp_output_10_0_g77057 + 0.0001 ) ) );
				float3 lerpResult2779_g77006 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g77006);
				float lerpResult6617_g77006 = lerp( Main_Mask_Remap5765_g77006 , Second_Mask_Remap6130_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g77006 = lerpResult6617_g77006;
				#else
				float staticSwitch6623_g77006 = Main_Mask_Remap5765_g77006;
				#endif
				half Blend_Mask_Remap6621_g77006 = staticSwitch6623_g77006;
				half Tint_Gradient_Mask6207_g77006 = Blend_Mask_Remap6621_g77006;
				float3 lerpResult6208_g77006 = lerp( float3( 1,1,1 ) , lerpResult2779_g77006 , Tint_Gradient_Mask6207_g77006);
				half3 Tint_Gradient_Color5769_g77006 = lerpResult6208_g77006;
				half3 Tint_Noise_Color5770_g77006 = float3(1,1,1);
				float Mesh_Occlusion318_g77006 = IN.ase_color.g;
				float clampResult17_g77054 = clamp( Mesh_Occlusion318_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77060 = _VertexOcclusionMinValue;
				float temp_output_10_0_g77060 = ( _VertexOcclusionMaxValue - temp_output_7_0_g77060 );
				half Occlusion_Mask6432_g77006 = saturate( ( ( clampResult17_g77054 - temp_output_7_0_g77060 ) / ( temp_output_10_0_g77060 + 0.0001 ) ) );
				float3 lerpResult2945_g77006 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g77006);
				half3 Occlusion_Color648_g77006 = lerpResult2945_g77006;
				half3 Matcap_Color7428_g77006 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g77006 = ( ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 * Occlusion_Color648_g77006 ) + Matcap_Color7428_g77006 );
				float3 temp_output_3_0_g77052 = Blend_Albedo_Tinted2808_g77006;
				float dotResult20_g77052 = dot( temp_output_3_0_g77052 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g77006 = dotResult20_g77052;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g77006).xxx;
				float temp_output_82_0_g77027 = _LayerColorsValue;
				float temp_output_19_0_g77031 = TVE_ColorsUsage[(int)temp_output_82_0_g77027];
				float4 temp_output_91_19_g77027 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g77006 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 vertexToFrag4224_g77006 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 lerpResult4822_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ColorsPositionMode);
				half2 UV94_g77027 = ( (temp_output_91_19_g77027).zw + ( (temp_output_91_19_g77027).xy * (lerpResult4822_g77006).xz ) );
				float4 tex2DArrayNode83_g77027 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g77027,temp_output_82_0_g77027), 0.0 );
				float4 temp_output_17_0_g77031 = tex2DArrayNode83_g77027;
				float4 temp_output_92_86_g77027 = TVE_ColorsParams;
				float4 temp_output_3_0_g77031 = temp_output_92_86_g77027;
				float4 ifLocalVar18_g77031 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77031 >= 0.5 )
				ifLocalVar18_g77031 = temp_output_17_0_g77031;
				else
				ifLocalVar18_g77031 = temp_output_3_0_g77031;
				float4 lerpResult22_g77031 = lerp( temp_output_3_0_g77031 , temp_output_17_0_g77031 , temp_output_19_0_g77031);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77031 = lerpResult22_g77031;
				#else
				float4 staticSwitch24_g77031 = ifLocalVar18_g77031;
				#endif
				half4 Global_Colors_Params5434_g77006 = staticSwitch24_g77031;
				float4 temp_output_346_0_g77013 = Global_Colors_Params5434_g77006;
				half Global_Colors_A1701_g77006 = saturate( (temp_output_346_0_g77013).w );
				half Colors_Influence3668_g77006 = Global_Colors_A1701_g77006;
				float temp_output_6306_0_g77006 = ( 1.0 - Colors_Influence3668_g77006 );
				float3 lerpResult3618_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g77006 * temp_output_6306_0_g77006 ) ));
				half3 Global_Colors_RGB1700_g77006 = (temp_output_346_0_g77013).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77044 = 2.0;
				#else
				float staticSwitch1_g77044 = 4.594794;
				#endif
				half3 Colors_RGB1954_g77006 = ( Global_Colors_RGB1700_g77006 * staticSwitch1_g77044 * _ColorsIntensityValue );
				float lerpResult7679_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _ColorsMaskValue);
				half Colors_Value3692_g77006 = ( lerpResult7679_g77006 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = IN.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				float lerpResult3870_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _ColorsVariationValue);
				half Colors_Variation3650_g77006 = lerpResult3870_g77006;
				half Occlusion_Alpha6463_g77006 = _VertexOcclusionColor.a;
				float lerpResult6459_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult6459_g77006);
				half Occlusion_Colors6450_g77006 = lerpResult6461_g77006;
				float3 temp_output_3_0_g77053 = ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 );
				float dotResult20_g77053 = dot( temp_output_3_0_g77053 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g77006 = clamp( saturate( ( dotResult20_g77053 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g77006 = clampResult6740_g77006;
				float temp_output_7_0_g77090 = 0.1;
				float temp_output_10_0_g77090 = ( 0.2 - temp_output_7_0_g77090 );
				float lerpResult16_g77045 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g77006 * Colors_Influence3668_g77006 * Colors_Variation3650_g77006 * Occlusion_Colors6450_g77006 * Blend_Albedo_Globals6410_g77006 ) - temp_output_7_0_g77090 ) / ( temp_output_10_0_g77090 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , ( lerpResult3618_g77006 * Colors_RGB1954_g77006 ) , lerpResult16_g77045);
				half3 Blend_Albedo_Colored_High6027_g77006 = lerpResult3628_g77006;
				half3 Blend_Albedo_Colored863_g77006 = Blend_Albedo_Colored_High6027_g77006;
				half3 Global_OverlayColor1758_g77006 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g77022 = _LayerExtrasValue;
				float temp_output_19_0_g77026 = TVE_ExtrasUsage[(int)temp_output_84_0_g77022];
				float4 temp_output_93_19_g77022 = TVE_ExtrasCoords;
				float3 lerpResult4827_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ExtrasPositionMode);
				half2 UV96_g77022 = ( (temp_output_93_19_g77022).zw + ( (temp_output_93_19_g77022).xy * (lerpResult4827_g77006).xz ) );
				float4 tex2DArrayNode48_g77022 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g77022,temp_output_84_0_g77022), 0.0 );
				float4 temp_output_17_0_g77026 = tex2DArrayNode48_g77022;
				float4 temp_output_94_85_g77022 = TVE_ExtrasParams;
				float4 temp_output_3_0_g77026 = temp_output_94_85_g77022;
				float4 ifLocalVar18_g77026 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77026 >= 0.5 )
				ifLocalVar18_g77026 = temp_output_17_0_g77026;
				else
				ifLocalVar18_g77026 = temp_output_3_0_g77026;
				float4 lerpResult22_g77026 = lerp( temp_output_3_0_g77026 , temp_output_17_0_g77026 , temp_output_19_0_g77026);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77026 = lerpResult22_g77026;
				#else
				float4 staticSwitch24_g77026 = ifLocalVar18_g77026;
				#endif
				half4 Global_Extras_Params5440_g77006 = staticSwitch24_g77026;
				float4 break456_g77036 = Global_Extras_Params5440_g77006;
				half Global_Extras_Overlay156_g77006 = break456_g77036.z;
				float lerpResult1065_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _OverlayVariationValue);
				half Overlay_Variation4560_g77006 = lerpResult1065_g77006;
				half Overlay_Value5738_g77006 = ( _GlobalOverlay * Global_Extras_Overlay156_g77006 * Overlay_Variation4560_g77006 );
				half2 Main_Normal137_g77006 = temp_output_6555_0_g77006;
				float2 lerpResult3372_g77006 = lerp( float2( 0,0 ) , Main_Normal137_g77006 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g77113 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				float2 appendResult58_g77113 = (float2(( (Normal_Packed45_g77113).x * (Normal_Packed45_g77113).w ) , (Normal_Packed45_g77113).y));
				half2 Normal_Default50_g77113 = appendResult58_g77113;
				half2 Normal_ASTC41_g77113 = (Normal_Packed45_g77113).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77113 = Normal_ASTC41_g77113;
				#else
				float2 staticSwitch38_g77113 = Normal_Default50_g77113;
				#endif
				half2 Normal_NO_DTX544_g77113 = (Normal_Packed45_g77113).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77113 = Normal_NO_DTX544_g77113;
				#else
				float2 staticSwitch37_g77113 = staticSwitch38_g77113;
				#endif
				float2 temp_output_6560_0_g77006 = ( (staticSwitch37_g77113*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77116 = temp_output_6560_0_g77006;
				float2 break64_g77116 = Normal_Planar45_g77116;
				float3 appendResult65_g77116 = (float3(break64_g77116.x , 0.0 , break64_g77116.y));
				float2 temp_output_7603_0_g77006 = (mul( ase_worldToTangent, appendResult65_g77116 )).xy;
				float2 ifLocalVar7604_g77006 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g77006 = temp_output_7603_0_g77006;
				else
				ifLocalVar7604_g77006 = temp_output_6560_0_g77006;
				half2 Second_Normal179_g77006 = ifLocalVar7604_g77006;
				float2 temp_output_36_0_g77049 = ( lerpResult3372_g77006 + Second_Normal179_g77006 );
				float2 lerpResult3376_g77006 = lerp( Main_Normal137_g77006 , temp_output_36_0_g77049 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g77006 = lerpResult3376_g77006;
				#else
				float2 staticSwitch267_g77006 = Main_Normal137_g77006;
				#endif
				half2 Blend_Normal312_g77006 = staticSwitch267_g77006;
				float3 appendResult7377_g77006 = (float3(Blend_Normal312_g77006 , 1.0));
				float3 tanNormal7376_g77006 = appendResult7377_g77006;
				float3 worldNormal7376_g77006 = float3(dot(tanToWorld0,tanNormal7376_g77006), dot(tanToWorld1,tanNormal7376_g77006), dot(tanToWorld2,tanNormal7376_g77006));
				half3 Blend_NormalWS7375_g77006 = worldNormal7376_g77006;
				float lerpResult7446_g77006 = lerp( (Blend_NormalWS7375_g77006).y , IN.ase_normal.y , Vertex_DynamicMode5112_g77006);
				float lerpResult6757_g77006 = lerp( 1.0 , saturate( lerpResult7446_g77006 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g77006 = lerpResult6757_g77006;
				half Overlay_Shading6688_g77006 = Blend_Albedo_Globals6410_g77006;
				half Overlay_Custom6707_g77006 = 1.0;
				float lerpResult7693_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult7693_g77006);
				half Occlusion_Overlay6471_g77006 = lerpResult6467_g77006;
				float temp_output_7_0_g77058 = 0.1;
				float temp_output_10_0_g77058 = ( 0.2 - temp_output_7_0_g77058 );
				half Overlay_Mask_High6064_g77006 = saturate( ( ( ( Overlay_Value5738_g77006 * Overlay_Projection6081_g77006 * Overlay_Shading6688_g77006 * Overlay_Custom6707_g77006 * Occlusion_Overlay6471_g77006 ) - temp_output_7_0_g77058 ) / ( temp_output_10_0_g77058 + 0.0001 ) ) );
				half Overlay_Mask269_g77006 = Overlay_Mask_High6064_g77006;
				float3 lerpResult336_g77006 = lerp( Blend_Albedo_Colored863_g77006 , Global_OverlayColor1758_g77006 , Overlay_Mask269_g77006);
				half3 Blend_Albedo_Overlay359_g77006 = lerpResult336_g77006;
				half Global_WetnessContrast6502_g77006 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g77006 = break456_g77036.y;
				half Wetness_Value6343_g77006 = ( Global_Extras_Wetness305_g77006 * _GlobalWetness );
				float3 lerpResult6367_g77006 = lerp( Blend_Albedo_Overlay359_g77006 , ( Blend_Albedo_Overlay359_g77006 * Blend_Albedo_Overlay359_g77006 ) , ( Global_WetnessContrast6502_g77006 * Wetness_Value6343_g77006 ));
				half3 Blend_Albedo_Wetness6351_g77006 = lerpResult6367_g77006;
				float vertexToFrag11_g77047 = IN.ase_texcoord10.z;
				half3 Tint_Highlight_Color5771_g77006 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g77047 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g77006 = ( Blend_Albedo_Wetness6351_g77006 * Tint_Highlight_Color5771_g77006 );
				half3 Subsurface_Color1722_g77006 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g77006 );
				half Global_Subsurface4041_g77006 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g77006 = TVE_OverlaySubsurface;
				float lerpResult7362_g77006 = lerp( 1.0 , Global_OverlaySubsurface5667_g77006 , Overlay_Value5738_g77006);
				half Overlay_Subsurface7361_g77006 = lerpResult7362_g77006;
				half Subsurface_Intensity1752_g77006 = ( _SubsurfaceValue * Global_Subsurface4041_g77006 * Overlay_Subsurface7361_g77006 );
				float lerpResult7680_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g77006 = lerpResult7680_g77006;
				half3 MainLight_Direction3926_g77006 = TVE_MainLightDirection;
				float3 normalizeResult2169_g77006 = normalize( worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float dotResult785_g77006 = dot( -MainLight_Direction3926_g77006 , ViewDirection3963_g77006 );
				float saferPower1624_g77006 = abs( saturate( dotResult785_g77006 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g77006 = 0.0;
				#else
				float staticSwitch1602_g77006 = ( pow( saferPower1624_g77006 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View782_g77006 = staticSwitch1602_g77006;
				half3 Subsurface_Approximation1693_g77006 = ( Subsurface_Color1722_g77006 * Subsurface_Intensity1752_g77006 * Subsurface_Mask1557_g77006 * Mask_Subsurface_View782_g77006 );
				half3 Blend_Albedo_Subsurface149_g77006 = ( temp_output_6309_0_g77006 + Subsurface_Approximation1693_g77006 );
				half3 Blend_Albedo_RimLight7316_g77006 = Blend_Albedo_Subsurface149_g77006;
				
				half Global_OverlayNormalScale6581_g77006 = TVE_OverlayNormalValue;
				float lerpResult6585_g77006 = lerp( 1.0 , Global_OverlayNormalScale6581_g77006 , Overlay_Mask269_g77006);
				half2 Blend_Normal_Overlay366_g77006 = ( Blend_Normal312_g77006 * lerpResult6585_g77006 );
				half Global_WetnessNormalScale6571_g77006 = TVE_WetnessNormalValue;
				float lerpResult6579_g77006 = lerp( 1.0 , Global_WetnessNormalScale6571_g77006 , ( Wetness_Value6343_g77006 * Wetness_Value6343_g77006 ));
				half2 Blend_Normal_Wetness6372_g77006 = ( Blend_Normal_Overlay366_g77006 * lerpResult6579_g77006 );
				float3 appendResult6568_g77006 = (float3(Blend_Normal_Wetness6372_g77006 , 1.0));
				float3 temp_output_13_0_g77037 = appendResult6568_g77006;
				float3 temp_output_33_0_g77037 = ( temp_output_13_0_g77037 * _render_normals );
				float3 switchResult12_g77037 = (((ase_vface>0)?(temp_output_13_0_g77037):(temp_output_33_0_g77037)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g77006 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g77006 = temp_output_7161_0_g77006;
				half2 Emissive_UVs2468_g77006 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77127 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77127).xxx;
				float temp_output_10_0_g77127 = ( _EmissiveTexMaxValue - temp_output_7_0_g77127 );
				half3 Emissive_Texture7022_g77006 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g77006 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77127 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g77006 = break456_g77036.x;
				float lerpResult4206_g77006 = lerp( 1.0 , Global_Extras_Emissive4203_g77006 , _GlobalEmissive);
				half Emissive_Value7024_g77006 = ( ( lerpResult4206_g77006 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g77006 = saturate( ( Emissive_Texture7022_g77006 + Emissive_Value7024_g77006 ) );
				float3 temp_output_3_0_g77129 = ( Emissive_Color7162_g77006 * Emissive_Mask6968_g77006 );
				float temp_output_15_0_g77129 = _emissive_intensity_value;
				float3 temp_output_23_0_g77129 = ( temp_output_3_0_g77129 * temp_output_15_0_g77129 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g77006 = temp_output_23_0_g77129;
				#else
				float3 staticSwitch7687_g77006 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g77006 = staticSwitch7687_g77006;
				
				half Render_Specular4861_g77006 = _RenderSpecular;
				float3 temp_cast_13 = (( 0.04 * Render_Specular4861_g77006 )).xxx;
				
				float lerpResult240_g77006 = lerp( 1.0 , tex2DNode35_g77006.g , _MainOcclusionValue);
				half Main_Occlusion247_g77006 = lerpResult240_g77006;
				float lerpResult239_g77006 = lerp( 1.0 , tex2DNode33_g77006.g , _SecondOcclusionValue);
				half Second_Occlusion251_g77006 = lerpResult239_g77006;
				float lerpResult294_g77006 = lerp( Main_Occlusion247_g77006 , Second_Occlusion251_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch310_g77006 = lerpResult294_g77006;
				#else
				float staticSwitch310_g77006 = Main_Occlusion247_g77006;
				#endif
				half Blend_Occlusion323_g77006 = staticSwitch310_g77006;
				
				half Main_Smoothness227_g77006 = ( tex2DNode35_g77006.a * _MainSmoothnessValue );
				half Second_Smoothness236_g77006 = ( tex2DNode33_g77006.a * _SecondSmoothnessValue );
				float lerpResult266_g77006 = lerp( Main_Smoothness227_g77006 , Second_Smoothness236_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch297_g77006 = lerpResult266_g77006;
				#else
				float staticSwitch297_g77006 = Main_Smoothness227_g77006;
				#endif
				half Blend_Smoothness314_g77006 = staticSwitch297_g77006;
				half Global_OverlaySmoothness311_g77006 = TVE_OverlaySmoothness;
				float lerpResult343_g77006 = lerp( Blend_Smoothness314_g77006 , Global_OverlaySmoothness311_g77006 , Overlay_Mask269_g77006);
				half Blend_Smoothness_Overlay371_g77006 = lerpResult343_g77006;
				float temp_output_6499_0_g77006 = ( 1.0 - Wetness_Value6343_g77006 );
				half Blend_Smoothness_Wetness4130_g77006 = saturate( ( Blend_Smoothness_Overlay371_g77006 + ( 1.0 - ( temp_output_6499_0_g77006 * temp_output_6499_0_g77006 ) ) ) );
				
				float localCustomAlphaClip19_g77109 = ( 0.0 );
				half Main_Alpha316_g77006 = tex2DNode29_g77006.a;
				half Second_Alpha5007_g77006 = tex2DNode89_g77006.a;
				float lerpResult6153_g77006 = lerp( Main_Alpha316_g77006 , Second_Alpha5007_g77006 , Blend_Mask147_g77006);
				float lerpResult6785_g77006 = lerp( ( Main_Alpha316_g77006 * Second_Alpha5007_g77006 ) , lerpResult6153_g77006 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g77006 = lerpResult6785_g77006;
				#else
				float staticSwitch6158_g77006 = Main_Alpha316_g77006;
				#endif
				half Blend_Alpha6157_g77006 = staticSwitch6158_g77006;
				half AlphaTreshold2132_g77006 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g77006 = saturate( break456_g77036.w );
				float lerpResult5154_g77006 = lerp( 0.0 , Global_MeshVariation5104_g77006 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g77006 = lerpResult5154_g77006;
				float Emissive_Alpha7625_g77006 = 0.0;
				float lerpResult6866_g77006 = lerp( ( 1.0 - Blend_Mask147_g77006 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g77006 = lerpResult6866_g77006;
				#else
				float staticSwitch6612_g77006 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g77006 = staticSwitch6612_g77006;
				half Alpha_Mask6234_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5203_g77006 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g77006 - saturate( ( Global_Alpha_Variation5158_g77006 + Emissive_Alpha7625_g77006 ) ) ) + ( Global_Extras_Alpha1033_g77006 * 0.1 ) ) ) , ( Alpha_Mask6234_g77006 * _GlobalAlpha ));
				float lerpResult16_g77050 = lerp( 1.0 , lerpResult5203_g77006 , TVE_IsEnabled);
				half Global_Alpha315_g77006 = lerpResult16_g77050;
				float3 normalizeResult3971_g77006 = normalize( cross( ddy( worldPos ) , ddx( worldPos ) ) );
				float3 WorldNormal_Derivates3972_g77006 = normalizeResult3971_g77006;
				float dotResult3851_g77006 = dot( ViewDirection3963_g77006 , WorldNormal_Derivates3972_g77006 );
				float lerpResult3993_g77006 = lerp( 1.0 , saturate( ( abs( dotResult3851_g77006 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g77006 = lerpResult3993_g77006;
				half Fade_Effects_A5360_g77006 = Fade_Glancing3853_g77006;
				float temp_output_7_0_g77059 = TVE_CameraFadeMin;
				float temp_output_10_0_g77059 = ( TVE_CameraFadeMax - temp_output_7_0_g77059 );
				float lerpResult4755_g77006 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77059 ) / ( temp_output_10_0_g77059 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g77006 = lerpResult4755_g77006;
				half Fade_Effects_B6228_g77006 = ( Fade_Effects_A5360_g77006 * Fade_Camera3743_g77006 );
				half Fade_Mask5149_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5141_g77006 = lerp( 1.0 , ( Fade_Effects_B6228_g77006 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g77006);
				half Fade_Effects_C7653_g77006 = lerpResult5141_g77006;
				float temp_output_5865_0_g77006 = saturate( ( Fade_Effects_C7653_g77006 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g77006 ) ).r ) );
				half Fade_Alpha3727_g77006 = temp_output_5865_0_g77006;
				half Final_Alpha7344_g77006 = min( ( ( Blend_Alpha6157_g77006 - AlphaTreshold2132_g77006 ) * Global_Alpha315_g77006 ) , Fade_Alpha3727_g77006 );
				float temp_output_3_0_g77109 = Final_Alpha7344_g77006;
				float Alpha19_g77109 = temp_output_3_0_g77109;
				float temp_output_15_0_g77109 = 0.01;
				float Treshold19_g77109 = temp_output_15_0_g77109;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#else
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g77006 = (lerpResult7654_g77006).a;
				half Second_Color_Alpha6152_g77006 = (lerpResult7662_g77006).a;
				float lerpResult6168_g77006 = lerp( Main_Color_Alpha6121_g77006 , Second_Color_Alpha6152_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g77006 = lerpResult6168_g77006;
				#else
				float staticSwitch6174_g77006 = Main_Color_Alpha6121_g77006;
				#endif
				half Blend_Color_Alpha6167_g77006 = staticSwitch6174_g77006;
				half Final_Clip914_g77006 = saturate( ( Alpha19_g77109 * Blend_Color_Alpha6167_g77006 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g77006;
				o.Normal = switchResult12_g77037;
				o.Emission = Final_Emissive2476_g77006;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_13;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion323_g77006;
					o.Smoothness = Blend_Smoothness_Wetness4130_g77006;
				#endif

				o.Alpha = Final_Clip914_g77006;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed4 c = 0;
				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = worldPos;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						LightingBlinnPhong_GI(o, giInput, gi);
					#else
						LightingLambert_GI(o, giInput, gi);
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						LightingStandardSpecular_GI(o, giInput, gi);
					#else
						LightingStandard_GI(o, giInput, gi);
					#endif
				#endif

				#ifdef ASE_BAKEDGI
					gi.indirect.diffuse = BakedGI;
				#endif

				#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
					gi.indirect.diffuse = 0;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						c += LightingBlinnPhong (o, worldViewDir, gi);
					#else
						c += LightingLambert( o, gi );
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						c += LightingStandardSpecular (o, worldViewDir, gi);
					#else
						c += LightingStandard(o, worldViewDir, gi);
					#endif
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;
					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow( saturate( dot( worldViewDir, -lightDir ) ), scattering );
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				//#ifdef ASE_REFRACTION
				//	float4 projScreenPos = ScreenPos / ScreenPos.w;
				//	float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
				//	projScreenPos.xy += refractionOffset.xy;
				//	float3 refraction = UNITY_SAMPLE_SCREENSPACE_TEXTURE( _GrabTexture, projScreenPos ) * RefractionColor;
				//	color.rgb = lerp( refraction, color.rgb, color.a );
				//	color.a = 1;
				//#endif

				c.rgb += o.Emission;

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants INSTANCING_ON
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
				#define UNITY_PASS_FORWARDADD
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(1,2)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(1)
					#else
						SHADOW_COORDS(1)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(3)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_color : COLOR;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_cull;
			uniform half _render_coverage;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _IsStandardShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderCull;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _SpaceGlobalLocals;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half4 _RimLightRemap;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsCoreShader;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half4 _DetailMaskRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailBlendRemap;
			uniform half4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform half _Cutoff;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MotionValue_30;
			uniform half _MotionValue_20;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half _MessageSubsurface;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceSubsurface;
			uniform half _SpaceMotionGlobals;
			uniform half _CategoryDetail;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _RenderZWrite;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderClip;
			uniform half _RenderCoverage;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMaskInvertMode;
			uniform half _DetailMeshInvertMode;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half _MessageOcclusion;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half4 _EmissiveTexRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half3 TVE_MainLightDirection;
			uniform half TVE_OverlayNormalValue;
			uniform half TVE_WetnessNormalValue;
			uniform half3 _render_normals;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _RenderSpecular;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half _FadeGlancingValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g77006 = v.vertex.xyz;
				float3 appendResult60_g77016 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g77006 = ( appendResult60_g77016 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g77006 = Mesh_PivotsData2831_g77006;
				float3 temp_output_2283_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				half3 VertexPos40_g77087 = temp_output_2283_0_g77006;
				half3 VertexPos40_g77088 = VertexPos40_g77087;
				float3 appendResult74_g77088 = (float3(VertexPos40_g77088.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g77088 = appendResult74_g77088;
				float3 break84_g77088 = VertexPos40_g77088;
				float3 appendResult81_g77088 = (float3(0.0 , break84_g77088.y , break84_g77088.z));
				half3 VertexPosOtherAxis82_g77088 = appendResult81_g77088;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g77006 = ase_worldPos;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 WorldPosition_Shifted7477_g77006 = ( WorldPosition3905_g77006 - TVE_WorldOrigin );
				float4x4 break19_g77062 = unity_ObjectToWorld;
				float3 appendResult20_g77062 = (float3(break19_g77062[ 0 ][ 3 ] , break19_g77062[ 1 ][ 3 ] , break19_g77062[ 2 ][ 3 ]));
				float3 temp_output_122_0_g77062 = Mesh_PivotsData2831_g77006;
				float3 PivotsOnly105_g77062 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g77062 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g77064 = ( appendResult20_g77062 + PivotsOnly105_g77062 );
				half3 WorldData19_g77064 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77064 = WorldData19_g77064;
				#else
				float3 staticSwitch14_g77064 = ObjectData20_g77064;
				#endif
				float3 temp_output_114_0_g77062 = staticSwitch14_g77064;
				float3 vertexToFrag4224_g77006 = temp_output_114_0_g77062;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				float3 lerpResult6766_g77006 = lerp( WorldPosition_Shifted7477_g77006 , ObjectPosition_Shifted7481_g77006 , _MotionPosition_10);
				float3 Motion_10_Position6738_g77006 = lerpResult6766_g77006;
				half3 Input_Position419_g77102 = Motion_10_Position6738_g77006;
				float Input_MotionScale287_g77102 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77102 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77102 = (( Input_Position419_g77102 * Input_MotionScale287_g77102 * NoiseTex_Tilling735_g77102 * 0.0075 )).xz;
				float2 temp_output_447_0_g77011 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g77006 = temp_output_447_0_g77011;
				half2 Input_DirectionWS423_g77102 = Global_Wind_DirectionWS4683_g77006;
				float lerpResult128_g77103 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77102 = _MotionSpeed_10;
				half Input_MotionVariation284_g77102 = _MotionVariation_10;
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = v.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				half Input_GlobalMeshVariation569_g77102 = Global_MeshVariation5104_g77006;
				float temp_output_630_0_g77102 = ( ( ( lerpResult128_g77103 * Input_MotionSpeed62_g77102 ) + ( Input_MotionVariation284_g77102 * Input_GlobalMeshVariation569_g77102 ) ) * 0.03 );
				float temp_output_607_0_g77102 = frac( temp_output_630_0_g77102 );
				float4 lerpResult590_g77102 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * temp_output_607_0_g77102 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * frac( ( temp_output_630_0_g77102 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77102 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77102 = lerpResult590_g77102;
				float2 temp_output_645_0_g77102 = ((Noise_Complex703_g77102).rg*2.0 + -1.0);
				float2 break650_g77102 = temp_output_645_0_g77102;
				float3 appendResult649_g77102 = (float3(break650_g77102.x , 0.0 , break650_g77102.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g77006 = (( mul( unity_WorldToObject, float4( appendResult649_g77102 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g77093 = Global_Noise_OS5548_g77006;
				float2 break448_g77011 = temp_output_447_0_g77011;
				float3 appendResult452_g77011 = (float3(break448_g77011.x , 0.0 , break448_g77011.y));
				half2 Global_Wind_DirectionOS5692_g77006 = (( mul( unity_WorldToObject, float4( appendResult452_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g77093 = Global_Wind_DirectionOS5692_g77006;
				float temp_output_84_0_g77017 = _LayerMotionValue;
				float temp_output_19_0_g77021 = TVE_MotionUsage[(int)temp_output_84_0_g77017];
				float4 temp_output_91_19_g77017 = TVE_MotionCoords;
				half2 UV94_g77017 = ( (temp_output_91_19_g77017).zw + ( (temp_output_91_19_g77017).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77017 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g77017,temp_output_84_0_g77017), 0.0 );
				float4 temp_output_17_0_g77021 = tex2DArrayNode50_g77017;
				float4 temp_output_112_19_g77017 = TVE_MotionParams;
				float4 temp_output_3_0_g77021 = temp_output_112_19_g77017;
				float4 ifLocalVar18_g77021 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77021 >= 0.5 )
				ifLocalVar18_g77021 = temp_output_17_0_g77021;
				else
				ifLocalVar18_g77021 = temp_output_3_0_g77021;
				float4 lerpResult22_g77021 = lerp( temp_output_3_0_g77021 , temp_output_17_0_g77021 , temp_output_19_0_g77021);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77021 = lerpResult22_g77021;
				#else
				float4 staticSwitch24_g77021 = ifLocalVar18_g77021;
				#endif
				half4 Global_Motion_Params3909_g77006 = staticSwitch24_g77021;
				float4 break322_g77011 = Global_Motion_Params3909_g77006;
				float lerpResult457_g77011 = lerp( break322_g77011.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g77011 = ( 1.0 - lerpResult457_g77011 );
				half Global_Wind_Power2223_g77006 = ( 1.0 - ( temp_output_459_0_g77011 * temp_output_459_0_g77011 ) );
				half Input_WindPower449_g77093 = Global_Wind_Power2223_g77006;
				float2 lerpResult516_g77093 = lerp( Input_Noise_DirectionOS487_g77093 , Input_Wind_DirectionOS458_g77093 , ( Input_WindPower449_g77093 * 0.6 ));
				half Mesh_Motion_107572_g77006 = v.ase_color.a;
				half Input_MeshHeight388_g77093 = Mesh_Motion_107572_g77006;
				half ObjectData20_g77094 = Input_MeshHeight388_g77093;
				float enc62_g77121 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77121 = DecodeFloatToVector2( enc62_g77121 );
				float2 break63_g77121 = ( localDecodeFloatToVector262_g77121 * 100.0 );
				float Bounds_Height5230_g77006 = break63_g77121.x;
				half Input_BoundsHeight390_g77093 = Bounds_Height5230_g77006;
				half WorldData19_g77094 = ( Input_MeshHeight388_g77093 * Input_MeshHeight388_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77094 = WorldData19_g77094;
				#else
				float staticSwitch14_g77094 = ObjectData20_g77094;
				#endif
				half Final_Motion10_Mask321_g77093 = ( staticSwitch14_g77094 * 2.0 );
				half Input_BendingAmplitude376_g77093 = _MotionAmplitude_10;
				half Global_MotionValue640_g77093 = TVE_MotionValue_10;
				half2 Final_Bending631_g77093 = ( lerpResult516_g77093 * ( Final_Motion10_Mask321_g77093 * Input_BendingAmplitude376_g77093 * Input_WindPower449_g77093 * Input_WindPower449_g77093 * Global_MotionValue640_g77093 ) );
				float2 appendResult433_g77011 = (float2(break322_g77011.x , break322_g77011.y));
				float2 temp_output_436_0_g77011 = (appendResult433_g77011*2.0 + -1.0);
				float2 break441_g77011 = temp_output_436_0_g77011;
				float3 appendResult440_g77011 = (float3(break441_g77011.x , 0.0 , break441_g77011.y));
				half2 Global_React_DirectionOS39_g77006 = (( mul( unity_WorldToObject, float4( appendResult440_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g77093 = Global_React_DirectionOS39_g77006;
				float clampResult17_g77096 = clamp( Input_MeshHeight388_g77093 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77095 = 0.0;
				half Input_InteractionUseMask62_g77093 = _InteractionMaskValue;
				float temp_output_10_0_g77095 = ( Input_InteractionUseMask62_g77093 - temp_output_7_0_g77095 );
				half Final_InteractionRemap594_g77093 = saturate( ( ( clampResult17_g77096 - temp_output_7_0_g77095 ) / ( temp_output_10_0_g77095 + 0.0001 ) ) );
				half ObjectData20_g77097 = Final_InteractionRemap594_g77093;
				half WorldData19_g77097 = ( Final_InteractionRemap594_g77093 * Final_InteractionRemap594_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77097 = WorldData19_g77097;
				#else
				float staticSwitch14_g77097 = ObjectData20_g77097;
				#endif
				half Final_InteractionMask373_g77093 = ( staticSwitch14_g77097 * 2.0 );
				half Input_InteractionAmplitude58_g77093 = _InteractionAmplitude;
				half2 Final_Interaction632_g77093 = ( Input_React_DirectionOS358_g77093 * Final_InteractionMask373_g77093 * Input_InteractionAmplitude58_g77093 );
				half Global_Interaction_Mask66_g77006 = ( break322_g77011.w * break322_g77011.w * break322_g77011.w * break322_g77011.w );
				float Input_InteractionGlobalMask330_g77093 = Global_Interaction_Mask66_g77006;
				half Final_InteractionValue525_g77093 = saturate( ( Input_InteractionAmplitude58_g77093 * Input_InteractionGlobalMask330_g77093 ) );
				float2 lerpResult551_g77093 = lerp( Final_Bending631_g77093 , Final_Interaction632_g77093 , Final_InteractionValue525_g77093);
				float2 break364_g77093 = lerpResult551_g77093;
				float3 appendResult638_g77093 = (float3(break364_g77093.x , 0.0 , break364_g77093.y));
				half3 Motion_10_Interaction7519_g77006 = appendResult638_g77093;
				half3 Angle44_g77087 = Motion_10_Interaction7519_g77006;
				half Angle44_g77088 = (Angle44_g77087).z;
				half3 VertexPos40_g77089 = ( VertexPosRotationAxis50_g77088 + ( VertexPosOtherAxis82_g77088 * cos( Angle44_g77088 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g77088 ) * sin( Angle44_g77088 ) ) );
				float3 appendResult74_g77089 = (float3(0.0 , 0.0 , VertexPos40_g77089.z));
				half3 VertexPosRotationAxis50_g77089 = appendResult74_g77089;
				float3 break84_g77089 = VertexPos40_g77089;
				float3 appendResult81_g77089 = (float3(break84_g77089.x , break84_g77089.y , 0.0));
				half3 VertexPosOtherAxis82_g77089 = appendResult81_g77089;
				half Angle44_g77089 = -(Angle44_g77087).x;
				half3 Input_Position419_g77117 = WorldPosition_Shifted7477_g77006;
				float3 break459_g77117 = Input_Position419_g77117;
				float Sum_Position446_g77117 = ( break459_g77117.x + break459_g77117.y + break459_g77117.z );
				half Input_MotionScale321_g77117 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77117 = _MotionVariation_20;
				half Input_GlobalVariation400_g77117 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77118 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77117 = _MotionSpeed_20;
				float temp_output_404_0_g77117 = ( lerpResult128_g77118 * Input_MotionSpeed62_g77117 );
				half Motion_SineA450_g77117 = sin( ( ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) + ( Input_MotionVariation330_g77117 * Input_GlobalVariation400_g77117 ) + temp_output_404_0_g77117 ) );
				half Motion_SineB395_g77117 = sin( ( ( temp_output_404_0_g77117 * 0.6842 ) + ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) ) );
				half3 Input_Position419_g77130 = VertexPosition3588_g77006;
				float3 normalizeResult518_g77130 = normalize( Input_Position419_g77130 );
				half2 Input_DirectionOS423_g77130 = Global_React_DirectionOS39_g77006;
				float2 break521_g77130 = -Input_DirectionOS423_g77130;
				float3 appendResult522_g77130 = (float3(break521_g77130.x , 0.0 , break521_g77130.y));
				float dotResult519_g77130 = dot( normalizeResult518_g77130 , appendResult522_g77130 );
				half Input_Value62_g77130 = _MotionFacingValue;
				float lerpResult524_g77130 = lerp( 1.0 , (dotResult519_g77130*0.5 + 0.5) , Input_Value62_g77130);
				half ObjectData20_g77131 = max( lerpResult524_g77130 , 0.001 );
				half WorldData19_g77131 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77131 = WorldData19_g77131;
				#else
				float staticSwitch14_g77131 = ObjectData20_g77131;
				#endif
				half Motion_FacingMask5214_g77006 = staticSwitch14_g77131;
				half Motion_20_Amplitude4381_g77006 = Motion_FacingMask5214_g77006;
				half Input_MotionAmplitude384_g77117 = Motion_20_Amplitude4381_g77006;
				half Input_GlobalWind407_g77117 = Global_Wind_Power2223_g77006;
				float4 break638_g77102 = abs( Noise_Complex703_g77102 );
				half Global_Noise_B5526_g77006 = break638_g77102.b;
				half Input_GlobalNoise411_g77117 = Global_Noise_B5526_g77006;
				float lerpResult413_g77117 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77117);
				half Motion_Amplitude418_g77117 = ( Input_MotionAmplitude384_g77117 * Input_GlobalWind407_g77117 * pow( Input_GlobalNoise411_g77117 , lerpResult413_g77117 ) );
				half Input_Squash58_g77117 = _MotionAmplitude_20;
				float enc59_g77121 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77121 = DecodeFloatToVector2( enc59_g77121 );
				float2 break61_g77121 = localDecodeFloatToVector259_g77121;
				half Mesh_Motion_2060_g77006 = break61_g77121.x;
				half Input_MeshMotion_20388_g77117 = Mesh_Motion_2060_g77006;
				float Bounds_Radius5231_g77006 = break63_g77121.y;
				half Input_BoundsRadius390_g77117 = Bounds_Radius5231_g77006;
				half Global_MotionValue462_g77117 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77117 = Global_React_DirectionOS39_g77006;
				float2 break371_g77117 = Input_DirectionOS366_g77117;
				float3 appendResult372_g77117 = (float3(break371_g77117.x , ( Motion_SineA450_g77117 * 0.3 ) , break371_g77117.y));
				half3 Motion_20_Squash4418_g77006 = ( ( (max( Motion_SineA450_g77117 , Motion_SineB395_g77117 )*0.5 + 0.5) * Motion_Amplitude418_g77117 * Input_Squash58_g77117 * Input_MeshMotion_20388_g77117 * Input_BoundsRadius390_g77117 * Global_MotionValue462_g77117 ) * appendResult372_g77117 );
				half3 VertexPos40_g77080 = ( ( VertexPosRotationAxis50_g77089 + ( VertexPosOtherAxis82_g77089 * cos( Angle44_g77089 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g77089 ) * sin( Angle44_g77089 ) ) ) + Motion_20_Squash4418_g77006 );
				float3 appendResult74_g77080 = (float3(0.0 , VertexPos40_g77080.y , 0.0));
				float3 VertexPosRotationAxis50_g77080 = appendResult74_g77080;
				float3 break84_g77080 = VertexPos40_g77080;
				float3 appendResult81_g77080 = (float3(break84_g77080.x , 0.0 , break84_g77080.z));
				float3 VertexPosOtherAxis82_g77080 = appendResult81_g77080;
				half Input_Rolling379_g77117 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g77006 = ( Motion_SineA450_g77117 * Motion_Amplitude418_g77117 * Input_Rolling379_g77117 * Input_MeshMotion_20388_g77117 * Global_MotionValue462_g77117 );
				half Angle44_g77080 = Motion_20_Rolling5257_g77006;
				half3 Input_Position500_g77098 = WorldPosition_Shifted7477_g77006;
				half Input_MotionScale321_g77098 = _MotionScale_32;
				half Input_MotionVariation330_g77098 = _MotionVariation_32;
				half Input_GlobalVariation372_g77098 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77099 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77098 = _MotionSpeed_32;
				float4 tex2DNode460_g77098 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77098).xz * Input_MotionScale321_g77098 * 0.03 ) + ( Input_MotionVariation330_g77098 * Input_GlobalVariation372_g77098 ) + ( lerpResult128_g77099 * Input_MotionSpeed62_g77098 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77098 = (float3(tex2DNode460_g77098.r , tex2DNode460_g77098.g , tex2DNode460_g77098.b));
				half3 Flutter_Texture489_g77098 = (appendResult462_g77098*2.0 + -1.0);
				float temp_output_7_0_g77056 = TVE_MotionFadeEnd;
				float temp_output_10_0_g77056 = ( TVE_MotionFadeStart - temp_output_7_0_g77056 );
				half Motion_FadeOut4005_g77006 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77056 ) / ( temp_output_10_0_g77056 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g77006 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g77006 * Motion_FadeOut4005_g77006 );
				half Input_MotionAmplitude58_g77098 = Motion_30_Amplitude4960_g77006;
				half Mesh_Motion_30144_g77006 = break61_g77121.y;
				half Input_MeshMotion_30374_g77098 = Mesh_Motion_30144_g77006;
				half Input_GlobalWind471_g77098 = Global_Wind_Power2223_g77006;
				half Global_MotionValue503_g77098 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77098 = Global_Noise_B5526_g77006;
				float lerpResult466_g77098 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77098);
				half Flutter_Amplitude491_g77098 = ( Input_MotionAmplitude58_g77098 * Input_MeshMotion_30374_g77098 * Input_GlobalWind471_g77098 * Global_MotionValue503_g77098 * pow( Input_GlobalNoise472_g77098 , lerpResult466_g77098 ) );
				half3 Motion_30_Flutter263_g77006 = ( Flutter_Texture489_g77098 * Flutter_Amplitude491_g77098 );
				float3 Vertex_Motion_Object833_g77006 = ( ( VertexPosRotationAxis50_g77080 + ( VertexPosOtherAxis82_g77080 * cos( Angle44_g77080 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g77080 ) * sin( Angle44_g77080 ) ) ) + Motion_30_Flutter263_g77006 );
				half3 ObjectData20_g77074 = Vertex_Motion_Object833_g77006;
				float3 temp_output_3474_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				float3 Vertex_Motion_World1118_g77006 = ( ( ( temp_output_3474_0_g77006 + Motion_10_Interaction7519_g77006 ) + Motion_20_Squash4418_g77006 ) + Motion_30_Flutter263_g77006 );
				half3 WorldData19_g77074 = Vertex_Motion_World1118_g77006;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77074 = WorldData19_g77074;
				#else
				float3 staticSwitch14_g77074 = ObjectData20_g77074;
				#endif
				float3 temp_output_7495_0_g77006 = staticSwitch14_g77074;
				float3 Vertex_Motion7493_g77006 = temp_output_7495_0_g77006;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 break2709_g77006 = cross( ViewDirection3963_g77006 , half3(0,1,0) );
				float3 appendResult2710_g77006 = (float3(-break2709_g77006.z , 0.0 , break2709_g77006.x));
				float3 appendResult2667_g77006 = (float3(Global_MeshVariation5104_g77006 , 0.5 , Global_MeshVariation5104_g77006));
				half Mesh_Height1524_g77006 = v.ase_color.a;
				float dotResult2212_g77006 = dot( ViewDirection3963_g77006 , float3(0,1,0) );
				half Mask_HView2656_g77006 = dotResult2212_g77006;
				float saferPower2652_g77006 = abs( Mask_HView2656_g77006 );
				half3 Grass_Perspective2661_g77006 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g77006 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g77006*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g77006 * pow( saferPower2652_g77006 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g77038 = _LayerVertexValue;
				float temp_output_19_0_g77042 = TVE_VertexUsage[(int)temp_output_84_0_g77038];
				float4 temp_output_94_19_g77038 = TVE_VertexCoords;
				half2 UV97_g77038 = ( (temp_output_94_19_g77038).zw + ( (temp_output_94_19_g77038).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77038 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g77038,temp_output_84_0_g77038), 0.0 );
				float4 temp_output_17_0_g77042 = tex2DArrayNode50_g77038;
				float4 temp_output_111_19_g77038 = TVE_VertexParams;
				float4 temp_output_3_0_g77042 = temp_output_111_19_g77038;
				float4 ifLocalVar18_g77042 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77042 >= 0.5 )
				ifLocalVar18_g77042 = temp_output_17_0_g77042;
				else
				ifLocalVar18_g77042 = temp_output_3_0_g77042;
				float4 lerpResult22_g77042 = lerp( temp_output_3_0_g77042 , temp_output_17_0_g77042 , temp_output_19_0_g77042);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77042 = lerpResult22_g77042;
				#else
				float4 staticSwitch24_g77042 = ifLocalVar18_g77042;
				#endif
				half4 Global_Vertex_Params4173_g77006 = staticSwitch24_g77042;
				float4 break322_g77043 = Global_Vertex_Params4173_g77006;
				half Global_VertexSize174_g77006 = saturate( break322_g77043.w );
				float lerpResult346_g77006 = lerp( 1.0 , Global_VertexSize174_g77006 , _GlobalSize);
				float3 appendResult3480_g77006 = (float3(lerpResult346_g77006 , lerpResult346_g77006 , lerpResult346_g77006));
				half3 ObjectData20_g77071 = appendResult3480_g77006;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g77071 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77071 = WorldData19_g77071;
				#else
				float3 staticSwitch14_g77071 = ObjectData20_g77071;
				#endif
				half3 Vertex_Size1741_g77006 = staticSwitch14_g77071;
				float temp_output_7_0_g77072 = _SizeFadeEndValue;
				float temp_output_10_0_g77072 = ( _SizeFadeStartValue - temp_output_7_0_g77072 );
				float temp_output_7453_0_g77006 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g77006 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g77072 ) / ( temp_output_10_0_g77072 + 0.0001 ) ) );
				float3 appendResult3482_g77006 = (float3(temp_output_7453_0_g77006 , temp_output_7453_0_g77006 , temp_output_7453_0_g77006));
				half3 ObjectData20_g77070 = appendResult3482_g77006;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g77070 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77070 = WorldData19_g77070;
				#else
				float3 staticSwitch14_g77070 = ObjectData20_g77070;
				#endif
				float3 Vertex_SizeFade1740_g77006 = staticSwitch14_g77070;
				float3 lerpResult16_g77075 = lerp( VertexPosition3588_g77006 , ( ( ( Vertex_Motion7493_g77006 + Grass_Perspective2661_g77006 ) * Vertex_Size1741_g77006 * Vertex_SizeFade1740_g77006 ) + Mesh_PivotsOS2291_g77006 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g77006 = lerpResult16_g77075;
				float3 Final_VertexPosition890_g77006 = ( temp_output_4912_0_g77006 + _DisableSRPBatcher );
				
				float4 break33_g77126 = _second_uvs_mode;
				float2 temp_output_30_0_g77126 = ( v.ase_texcoord.xy * break33_g77126.x );
				float2 appendResult21_g77121 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g77006 = appendResult21_g77121;
				float2 temp_output_29_0_g77126 = ( Mesh_DetailCoord3_g77006 * break33_g77126.y );
				float2 temp_output_31_0_g77126 = ( (WorldPosition_Shifted7477_g77006).xz * break33_g77126.z );
				half2 Second_UVs_Tilling7609_g77006 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g77006 = ( 1.0 / Second_UVs_Tilling7609_g77006 );
				float2 lerpResult7614_g77006 = lerp( Second_UVs_Tilling7609_g77006 , Second_UVs_Scale7610_g77006 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g77006 = (_SecondUVs).zw;
				float2 vertexToFrag11_g77032 = ( ( ( temp_output_30_0_g77126 + temp_output_29_0_g77126 + temp_output_31_0_g77126 ) * lerpResult7614_g77006 ) + Second_UVs_Offset7605_g77006 );
				o.ase_texcoord10.xy = vertexToFrag11_g77032;
				o.ase_texcoord11.xyz = vertexToFrag3890_g77006;
				o.ase_texcoord12.xyz = vertexToFrag4224_g77006;
				half Global_Noise_A4860_g77006 = break638_g77102.a;
				half Tint_Highlight_Value3231_g77006 = ( Global_Noise_A4860_g77006 * Global_Wind_Power2223_g77006 * Motion_FadeOut4005_g77006 * Mesh_Height1524_g77006 );
				float vertexToFrag11_g77047 = Tint_Highlight_Value3231_g77006;
				o.ase_texcoord10.z = vertexToFrag11_g77047;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.w = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g77006;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag ( v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif


				half2 Main_UVs15_g77006 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g77006 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g77006 );
				float3 lerpResult6223_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode29_g77006).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g77006 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				half Main_Mask57_g77006 = tex2DNode35_g77006.b;
				float clampResult17_g77111 = clamp( Main_Mask57_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77112 = _MainMaskMinValue;
				float temp_output_10_0_g77112 = ( _MainMaskMaxValue - temp_output_7_0_g77112 );
				half Main_Mask_Remap5765_g77006 = saturate( ( ( clampResult17_g77111 - temp_output_7_0_g77112 ) / ( temp_output_10_0_g77112 + 0.0001 ) ) );
				float lerpResult7671_g77006 = lerp( 1.0 , Main_Mask_Remap5765_g77006 , _MainColorMode);
				float4 lerpResult7654_g77006 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g77006);
				half3 Main_Color_RGB7657_g77006 = (lerpResult7654_g77006).rgb;
				half3 Main_Albedo99_g77006 = ( lerpResult6223_g77006 * Main_Color_RGB7657_g77006 );
				float2 vertexToFrag11_g77032 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g77006 = vertexToFrag11_g77032;
				float4 tex2DNode89_g77006 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g77006 );
				float3 lerpResult6225_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode89_g77006).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g77006 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				half Second_Mask81_g77006 = tex2DNode33_g77006.b;
				float clampResult17_g77114 = clamp( Second_Mask81_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77115 = _SecondMaskMinValue;
				float temp_output_10_0_g77115 = ( _SecondMaskMaxValue - temp_output_7_0_g77115 );
				half Second_Mask_Remap6130_g77006 = saturate( ( ( clampResult17_g77114 - temp_output_7_0_g77115 ) / ( temp_output_10_0_g77115 + 0.0001 ) ) );
				float lerpResult7672_g77006 = lerp( 1.0 , Second_Mask_Remap6130_g77006 , _SecondColorMode);
				float4 lerpResult7662_g77006 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g77006);
				half3 Second_Color_RGB7663_g77006 = (lerpResult7662_g77006).rgb;
				half3 Second_Albedo153_g77006 = ( lerpResult6225_g77006 * Second_Color_RGB7663_g77006 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77048 = 2.0;
				#else
				float staticSwitch1_g77048 = 4.594794;
				#endif
				float3 lerpResult4834_g77006 = lerp( ( Main_Albedo99_g77006 * Second_Albedo153_g77006 * staticSwitch1_g77048 ) , Second_Albedo153_g77006 , _DetailBlendMode);
				float lerpResult6885_g77006 = lerp( Main_Mask57_g77006 , Second_Mask81_g77006 , _DetailMaskMode);
				float clampResult17_g77084 = clamp( lerpResult6885_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77083 = _DetailMaskMinValue;
				float temp_output_10_0_g77083 = ( _DetailMaskMaxValue - temp_output_7_0_g77083 );
				half Blend_Mask_Texture6794_g77006 = saturate( ( ( clampResult17_g77084 - temp_output_7_0_g77083 ) / ( temp_output_10_0_g77083 + 0.0001 ) ) );
				half Mesh_DetailMask90_g77006 = IN.ase_color.b;
				half4 Normal_Packed45_g77110 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				float2 appendResult58_g77110 = (float2(( (Normal_Packed45_g77110).x * (Normal_Packed45_g77110).w ) , (Normal_Packed45_g77110).y));
				half2 Normal_Default50_g77110 = appendResult58_g77110;
				half2 Normal_ASTC41_g77110 = (Normal_Packed45_g77110).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77110 = Normal_ASTC41_g77110;
				#else
				float2 staticSwitch38_g77110 = Normal_Default50_g77110;
				#endif
				half2 Normal_NO_DTX544_g77110 = (Normal_Packed45_g77110).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77110 = Normal_NO_DTX544_g77110;
				#else
				float2 staticSwitch37_g77110 = staticSwitch38_g77110;
				#endif
				float2 temp_output_6555_0_g77006 = ( (staticSwitch37_g77110*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g77006 = (float3(temp_output_6555_0_g77006 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g77006 = appendResult7388_g77006;
				float3 worldNormal7389_g77006 = float3(dot(tanToWorld0,tanNormal7389_g77006), dot(tanToWorld1,tanNormal7389_g77006), dot(tanToWorld2,tanNormal7389_g77006));
				half3 Main_NormalWS7390_g77006 = worldNormal7389_g77006;
				float lerpResult6884_g77006 = lerp( Mesh_DetailMask90_g77006 , ((Main_NormalWS7390_g77006).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g77082 = clamp( lerpResult6884_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77081 = _DetailMeshMinValue;
				float temp_output_10_0_g77081 = ( _DetailMeshMaxValue - temp_output_7_0_g77081 );
				half Blend_Mask_Mesh1540_g77006 = saturate( ( ( clampResult17_g77082 - temp_output_7_0_g77081 ) / ( temp_output_10_0_g77081 + 0.0001 ) ) );
				float clampResult17_g77092 = clamp( ( Blend_Mask_Texture6794_g77006 * Blend_Mask_Mesh1540_g77006 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77107 = _DetailBlendMinValue;
				float temp_output_10_0_g77107 = ( _DetailBlendMaxValue - temp_output_7_0_g77107 );
				half Blend_Mask147_g77006 = ( saturate( ( ( clampResult17_g77092 - temp_output_7_0_g77107 ) / ( temp_output_10_0_g77107 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g77006 = lerp( Main_Albedo99_g77006 , lerpResult4834_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g77006 = lerpResult235_g77006;
				#else
				float3 staticSwitch255_g77006 = Main_Albedo99_g77006;
				#endif
				half3 Blend_Albedo265_g77006 = staticSwitch255_g77006;
				half Mesh_Height1524_g77006 = IN.ase_color.a;
				float temp_output_7_0_g77057 = _GradientMinValue;
				float temp_output_10_0_g77057 = ( _GradientMaxValue - temp_output_7_0_g77057 );
				half Tint_Gradient_Value2784_g77006 = saturate( ( ( Mesh_Height1524_g77006 - temp_output_7_0_g77057 ) / ( temp_output_10_0_g77057 + 0.0001 ) ) );
				float3 lerpResult2779_g77006 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g77006);
				float lerpResult6617_g77006 = lerp( Main_Mask_Remap5765_g77006 , Second_Mask_Remap6130_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g77006 = lerpResult6617_g77006;
				#else
				float staticSwitch6623_g77006 = Main_Mask_Remap5765_g77006;
				#endif
				half Blend_Mask_Remap6621_g77006 = staticSwitch6623_g77006;
				half Tint_Gradient_Mask6207_g77006 = Blend_Mask_Remap6621_g77006;
				float3 lerpResult6208_g77006 = lerp( float3( 1,1,1 ) , lerpResult2779_g77006 , Tint_Gradient_Mask6207_g77006);
				half3 Tint_Gradient_Color5769_g77006 = lerpResult6208_g77006;
				half3 Tint_Noise_Color5770_g77006 = float3(1,1,1);
				float Mesh_Occlusion318_g77006 = IN.ase_color.g;
				float clampResult17_g77054 = clamp( Mesh_Occlusion318_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77060 = _VertexOcclusionMinValue;
				float temp_output_10_0_g77060 = ( _VertexOcclusionMaxValue - temp_output_7_0_g77060 );
				half Occlusion_Mask6432_g77006 = saturate( ( ( clampResult17_g77054 - temp_output_7_0_g77060 ) / ( temp_output_10_0_g77060 + 0.0001 ) ) );
				float3 lerpResult2945_g77006 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g77006);
				half3 Occlusion_Color648_g77006 = lerpResult2945_g77006;
				half3 Matcap_Color7428_g77006 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g77006 = ( ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 * Occlusion_Color648_g77006 ) + Matcap_Color7428_g77006 );
				float3 temp_output_3_0_g77052 = Blend_Albedo_Tinted2808_g77006;
				float dotResult20_g77052 = dot( temp_output_3_0_g77052 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g77006 = dotResult20_g77052;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g77006).xxx;
				float temp_output_82_0_g77027 = _LayerColorsValue;
				float temp_output_19_0_g77031 = TVE_ColorsUsage[(int)temp_output_82_0_g77027];
				float4 temp_output_91_19_g77027 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g77006 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 vertexToFrag4224_g77006 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 lerpResult4822_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ColorsPositionMode);
				half2 UV94_g77027 = ( (temp_output_91_19_g77027).zw + ( (temp_output_91_19_g77027).xy * (lerpResult4822_g77006).xz ) );
				float4 tex2DArrayNode83_g77027 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g77027,temp_output_82_0_g77027), 0.0 );
				float4 temp_output_17_0_g77031 = tex2DArrayNode83_g77027;
				float4 temp_output_92_86_g77027 = TVE_ColorsParams;
				float4 temp_output_3_0_g77031 = temp_output_92_86_g77027;
				float4 ifLocalVar18_g77031 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77031 >= 0.5 )
				ifLocalVar18_g77031 = temp_output_17_0_g77031;
				else
				ifLocalVar18_g77031 = temp_output_3_0_g77031;
				float4 lerpResult22_g77031 = lerp( temp_output_3_0_g77031 , temp_output_17_0_g77031 , temp_output_19_0_g77031);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77031 = lerpResult22_g77031;
				#else
				float4 staticSwitch24_g77031 = ifLocalVar18_g77031;
				#endif
				half4 Global_Colors_Params5434_g77006 = staticSwitch24_g77031;
				float4 temp_output_346_0_g77013 = Global_Colors_Params5434_g77006;
				half Global_Colors_A1701_g77006 = saturate( (temp_output_346_0_g77013).w );
				half Colors_Influence3668_g77006 = Global_Colors_A1701_g77006;
				float temp_output_6306_0_g77006 = ( 1.0 - Colors_Influence3668_g77006 );
				float3 lerpResult3618_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g77006 * temp_output_6306_0_g77006 ) ));
				half3 Global_Colors_RGB1700_g77006 = (temp_output_346_0_g77013).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77044 = 2.0;
				#else
				float staticSwitch1_g77044 = 4.594794;
				#endif
				half3 Colors_RGB1954_g77006 = ( Global_Colors_RGB1700_g77006 * staticSwitch1_g77044 * _ColorsIntensityValue );
				float lerpResult7679_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _ColorsMaskValue);
				half Colors_Value3692_g77006 = ( lerpResult7679_g77006 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = IN.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				float lerpResult3870_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _ColorsVariationValue);
				half Colors_Variation3650_g77006 = lerpResult3870_g77006;
				half Occlusion_Alpha6463_g77006 = _VertexOcclusionColor.a;
				float lerpResult6459_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult6459_g77006);
				half Occlusion_Colors6450_g77006 = lerpResult6461_g77006;
				float3 temp_output_3_0_g77053 = ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 );
				float dotResult20_g77053 = dot( temp_output_3_0_g77053 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g77006 = clamp( saturate( ( dotResult20_g77053 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g77006 = clampResult6740_g77006;
				float temp_output_7_0_g77090 = 0.1;
				float temp_output_10_0_g77090 = ( 0.2 - temp_output_7_0_g77090 );
				float lerpResult16_g77045 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g77006 * Colors_Influence3668_g77006 * Colors_Variation3650_g77006 * Occlusion_Colors6450_g77006 * Blend_Albedo_Globals6410_g77006 ) - temp_output_7_0_g77090 ) / ( temp_output_10_0_g77090 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , ( lerpResult3618_g77006 * Colors_RGB1954_g77006 ) , lerpResult16_g77045);
				half3 Blend_Albedo_Colored_High6027_g77006 = lerpResult3628_g77006;
				half3 Blend_Albedo_Colored863_g77006 = Blend_Albedo_Colored_High6027_g77006;
				half3 Global_OverlayColor1758_g77006 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g77022 = _LayerExtrasValue;
				float temp_output_19_0_g77026 = TVE_ExtrasUsage[(int)temp_output_84_0_g77022];
				float4 temp_output_93_19_g77022 = TVE_ExtrasCoords;
				float3 lerpResult4827_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ExtrasPositionMode);
				half2 UV96_g77022 = ( (temp_output_93_19_g77022).zw + ( (temp_output_93_19_g77022).xy * (lerpResult4827_g77006).xz ) );
				float4 tex2DArrayNode48_g77022 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g77022,temp_output_84_0_g77022), 0.0 );
				float4 temp_output_17_0_g77026 = tex2DArrayNode48_g77022;
				float4 temp_output_94_85_g77022 = TVE_ExtrasParams;
				float4 temp_output_3_0_g77026 = temp_output_94_85_g77022;
				float4 ifLocalVar18_g77026 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77026 >= 0.5 )
				ifLocalVar18_g77026 = temp_output_17_0_g77026;
				else
				ifLocalVar18_g77026 = temp_output_3_0_g77026;
				float4 lerpResult22_g77026 = lerp( temp_output_3_0_g77026 , temp_output_17_0_g77026 , temp_output_19_0_g77026);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77026 = lerpResult22_g77026;
				#else
				float4 staticSwitch24_g77026 = ifLocalVar18_g77026;
				#endif
				half4 Global_Extras_Params5440_g77006 = staticSwitch24_g77026;
				float4 break456_g77036 = Global_Extras_Params5440_g77006;
				half Global_Extras_Overlay156_g77006 = break456_g77036.z;
				float lerpResult1065_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _OverlayVariationValue);
				half Overlay_Variation4560_g77006 = lerpResult1065_g77006;
				half Overlay_Value5738_g77006 = ( _GlobalOverlay * Global_Extras_Overlay156_g77006 * Overlay_Variation4560_g77006 );
				half2 Main_Normal137_g77006 = temp_output_6555_0_g77006;
				float2 lerpResult3372_g77006 = lerp( float2( 0,0 ) , Main_Normal137_g77006 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g77113 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				float2 appendResult58_g77113 = (float2(( (Normal_Packed45_g77113).x * (Normal_Packed45_g77113).w ) , (Normal_Packed45_g77113).y));
				half2 Normal_Default50_g77113 = appendResult58_g77113;
				half2 Normal_ASTC41_g77113 = (Normal_Packed45_g77113).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77113 = Normal_ASTC41_g77113;
				#else
				float2 staticSwitch38_g77113 = Normal_Default50_g77113;
				#endif
				half2 Normal_NO_DTX544_g77113 = (Normal_Packed45_g77113).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77113 = Normal_NO_DTX544_g77113;
				#else
				float2 staticSwitch37_g77113 = staticSwitch38_g77113;
				#endif
				float2 temp_output_6560_0_g77006 = ( (staticSwitch37_g77113*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77116 = temp_output_6560_0_g77006;
				float2 break64_g77116 = Normal_Planar45_g77116;
				float3 appendResult65_g77116 = (float3(break64_g77116.x , 0.0 , break64_g77116.y));
				float2 temp_output_7603_0_g77006 = (mul( ase_worldToTangent, appendResult65_g77116 )).xy;
				float2 ifLocalVar7604_g77006 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g77006 = temp_output_7603_0_g77006;
				else
				ifLocalVar7604_g77006 = temp_output_6560_0_g77006;
				half2 Second_Normal179_g77006 = ifLocalVar7604_g77006;
				float2 temp_output_36_0_g77049 = ( lerpResult3372_g77006 + Second_Normal179_g77006 );
				float2 lerpResult3376_g77006 = lerp( Main_Normal137_g77006 , temp_output_36_0_g77049 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g77006 = lerpResult3376_g77006;
				#else
				float2 staticSwitch267_g77006 = Main_Normal137_g77006;
				#endif
				half2 Blend_Normal312_g77006 = staticSwitch267_g77006;
				float3 appendResult7377_g77006 = (float3(Blend_Normal312_g77006 , 1.0));
				float3 tanNormal7376_g77006 = appendResult7377_g77006;
				float3 worldNormal7376_g77006 = float3(dot(tanToWorld0,tanNormal7376_g77006), dot(tanToWorld1,tanNormal7376_g77006), dot(tanToWorld2,tanNormal7376_g77006));
				half3 Blend_NormalWS7375_g77006 = worldNormal7376_g77006;
				float lerpResult7446_g77006 = lerp( (Blend_NormalWS7375_g77006).y , IN.ase_normal.y , Vertex_DynamicMode5112_g77006);
				float lerpResult6757_g77006 = lerp( 1.0 , saturate( lerpResult7446_g77006 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g77006 = lerpResult6757_g77006;
				half Overlay_Shading6688_g77006 = Blend_Albedo_Globals6410_g77006;
				half Overlay_Custom6707_g77006 = 1.0;
				float lerpResult7693_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult7693_g77006);
				half Occlusion_Overlay6471_g77006 = lerpResult6467_g77006;
				float temp_output_7_0_g77058 = 0.1;
				float temp_output_10_0_g77058 = ( 0.2 - temp_output_7_0_g77058 );
				half Overlay_Mask_High6064_g77006 = saturate( ( ( ( Overlay_Value5738_g77006 * Overlay_Projection6081_g77006 * Overlay_Shading6688_g77006 * Overlay_Custom6707_g77006 * Occlusion_Overlay6471_g77006 ) - temp_output_7_0_g77058 ) / ( temp_output_10_0_g77058 + 0.0001 ) ) );
				half Overlay_Mask269_g77006 = Overlay_Mask_High6064_g77006;
				float3 lerpResult336_g77006 = lerp( Blend_Albedo_Colored863_g77006 , Global_OverlayColor1758_g77006 , Overlay_Mask269_g77006);
				half3 Blend_Albedo_Overlay359_g77006 = lerpResult336_g77006;
				half Global_WetnessContrast6502_g77006 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g77006 = break456_g77036.y;
				half Wetness_Value6343_g77006 = ( Global_Extras_Wetness305_g77006 * _GlobalWetness );
				float3 lerpResult6367_g77006 = lerp( Blend_Albedo_Overlay359_g77006 , ( Blend_Albedo_Overlay359_g77006 * Blend_Albedo_Overlay359_g77006 ) , ( Global_WetnessContrast6502_g77006 * Wetness_Value6343_g77006 ));
				half3 Blend_Albedo_Wetness6351_g77006 = lerpResult6367_g77006;
				float vertexToFrag11_g77047 = IN.ase_texcoord10.z;
				half3 Tint_Highlight_Color5771_g77006 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g77047 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g77006 = ( Blend_Albedo_Wetness6351_g77006 * Tint_Highlight_Color5771_g77006 );
				half3 Subsurface_Color1722_g77006 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g77006 );
				half Global_Subsurface4041_g77006 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g77006 = TVE_OverlaySubsurface;
				float lerpResult7362_g77006 = lerp( 1.0 , Global_OverlaySubsurface5667_g77006 , Overlay_Value5738_g77006);
				half Overlay_Subsurface7361_g77006 = lerpResult7362_g77006;
				half Subsurface_Intensity1752_g77006 = ( _SubsurfaceValue * Global_Subsurface4041_g77006 * Overlay_Subsurface7361_g77006 );
				float lerpResult7680_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g77006 = lerpResult7680_g77006;
				half3 MainLight_Direction3926_g77006 = TVE_MainLightDirection;
				float3 normalizeResult2169_g77006 = normalize( worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float dotResult785_g77006 = dot( -MainLight_Direction3926_g77006 , ViewDirection3963_g77006 );
				float saferPower1624_g77006 = abs( saturate( dotResult785_g77006 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g77006 = 0.0;
				#else
				float staticSwitch1602_g77006 = ( pow( saferPower1624_g77006 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View782_g77006 = staticSwitch1602_g77006;
				half3 Subsurface_Approximation1693_g77006 = ( Subsurface_Color1722_g77006 * Subsurface_Intensity1752_g77006 * Subsurface_Mask1557_g77006 * Mask_Subsurface_View782_g77006 );
				half3 Blend_Albedo_Subsurface149_g77006 = ( temp_output_6309_0_g77006 + Subsurface_Approximation1693_g77006 );
				half3 Blend_Albedo_RimLight7316_g77006 = Blend_Albedo_Subsurface149_g77006;
				
				half Global_OverlayNormalScale6581_g77006 = TVE_OverlayNormalValue;
				float lerpResult6585_g77006 = lerp( 1.0 , Global_OverlayNormalScale6581_g77006 , Overlay_Mask269_g77006);
				half2 Blend_Normal_Overlay366_g77006 = ( Blend_Normal312_g77006 * lerpResult6585_g77006 );
				half Global_WetnessNormalScale6571_g77006 = TVE_WetnessNormalValue;
				float lerpResult6579_g77006 = lerp( 1.0 , Global_WetnessNormalScale6571_g77006 , ( Wetness_Value6343_g77006 * Wetness_Value6343_g77006 ));
				half2 Blend_Normal_Wetness6372_g77006 = ( Blend_Normal_Overlay366_g77006 * lerpResult6579_g77006 );
				float3 appendResult6568_g77006 = (float3(Blend_Normal_Wetness6372_g77006 , 1.0));
				float3 temp_output_13_0_g77037 = appendResult6568_g77006;
				float3 temp_output_33_0_g77037 = ( temp_output_13_0_g77037 * _render_normals );
				float3 switchResult12_g77037 = (((ase_vface>0)?(temp_output_13_0_g77037):(temp_output_33_0_g77037)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g77006 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g77006 = temp_output_7161_0_g77006;
				half2 Emissive_UVs2468_g77006 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77127 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77127).xxx;
				float temp_output_10_0_g77127 = ( _EmissiveTexMaxValue - temp_output_7_0_g77127 );
				half3 Emissive_Texture7022_g77006 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g77006 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77127 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g77006 = break456_g77036.x;
				float lerpResult4206_g77006 = lerp( 1.0 , Global_Extras_Emissive4203_g77006 , _GlobalEmissive);
				half Emissive_Value7024_g77006 = ( ( lerpResult4206_g77006 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g77006 = saturate( ( Emissive_Texture7022_g77006 + Emissive_Value7024_g77006 ) );
				float3 temp_output_3_0_g77129 = ( Emissive_Color7162_g77006 * Emissive_Mask6968_g77006 );
				float temp_output_15_0_g77129 = _emissive_intensity_value;
				float3 temp_output_23_0_g77129 = ( temp_output_3_0_g77129 * temp_output_15_0_g77129 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g77006 = temp_output_23_0_g77129;
				#else
				float3 staticSwitch7687_g77006 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g77006 = staticSwitch7687_g77006;
				
				half Render_Specular4861_g77006 = _RenderSpecular;
				float3 temp_cast_13 = (( 0.04 * Render_Specular4861_g77006 )).xxx;
				
				float lerpResult240_g77006 = lerp( 1.0 , tex2DNode35_g77006.g , _MainOcclusionValue);
				half Main_Occlusion247_g77006 = lerpResult240_g77006;
				float lerpResult239_g77006 = lerp( 1.0 , tex2DNode33_g77006.g , _SecondOcclusionValue);
				half Second_Occlusion251_g77006 = lerpResult239_g77006;
				float lerpResult294_g77006 = lerp( Main_Occlusion247_g77006 , Second_Occlusion251_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch310_g77006 = lerpResult294_g77006;
				#else
				float staticSwitch310_g77006 = Main_Occlusion247_g77006;
				#endif
				half Blend_Occlusion323_g77006 = staticSwitch310_g77006;
				
				half Main_Smoothness227_g77006 = ( tex2DNode35_g77006.a * _MainSmoothnessValue );
				half Second_Smoothness236_g77006 = ( tex2DNode33_g77006.a * _SecondSmoothnessValue );
				float lerpResult266_g77006 = lerp( Main_Smoothness227_g77006 , Second_Smoothness236_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch297_g77006 = lerpResult266_g77006;
				#else
				float staticSwitch297_g77006 = Main_Smoothness227_g77006;
				#endif
				half Blend_Smoothness314_g77006 = staticSwitch297_g77006;
				half Global_OverlaySmoothness311_g77006 = TVE_OverlaySmoothness;
				float lerpResult343_g77006 = lerp( Blend_Smoothness314_g77006 , Global_OverlaySmoothness311_g77006 , Overlay_Mask269_g77006);
				half Blend_Smoothness_Overlay371_g77006 = lerpResult343_g77006;
				float temp_output_6499_0_g77006 = ( 1.0 - Wetness_Value6343_g77006 );
				half Blend_Smoothness_Wetness4130_g77006 = saturate( ( Blend_Smoothness_Overlay371_g77006 + ( 1.0 - ( temp_output_6499_0_g77006 * temp_output_6499_0_g77006 ) ) ) );
				
				float localCustomAlphaClip19_g77109 = ( 0.0 );
				half Main_Alpha316_g77006 = tex2DNode29_g77006.a;
				half Second_Alpha5007_g77006 = tex2DNode89_g77006.a;
				float lerpResult6153_g77006 = lerp( Main_Alpha316_g77006 , Second_Alpha5007_g77006 , Blend_Mask147_g77006);
				float lerpResult6785_g77006 = lerp( ( Main_Alpha316_g77006 * Second_Alpha5007_g77006 ) , lerpResult6153_g77006 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g77006 = lerpResult6785_g77006;
				#else
				float staticSwitch6158_g77006 = Main_Alpha316_g77006;
				#endif
				half Blend_Alpha6157_g77006 = staticSwitch6158_g77006;
				half AlphaTreshold2132_g77006 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g77006 = saturate( break456_g77036.w );
				float lerpResult5154_g77006 = lerp( 0.0 , Global_MeshVariation5104_g77006 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g77006 = lerpResult5154_g77006;
				float Emissive_Alpha7625_g77006 = 0.0;
				float lerpResult6866_g77006 = lerp( ( 1.0 - Blend_Mask147_g77006 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g77006 = lerpResult6866_g77006;
				#else
				float staticSwitch6612_g77006 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g77006 = staticSwitch6612_g77006;
				half Alpha_Mask6234_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5203_g77006 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g77006 - saturate( ( Global_Alpha_Variation5158_g77006 + Emissive_Alpha7625_g77006 ) ) ) + ( Global_Extras_Alpha1033_g77006 * 0.1 ) ) ) , ( Alpha_Mask6234_g77006 * _GlobalAlpha ));
				float lerpResult16_g77050 = lerp( 1.0 , lerpResult5203_g77006 , TVE_IsEnabled);
				half Global_Alpha315_g77006 = lerpResult16_g77050;
				float3 normalizeResult3971_g77006 = normalize( cross( ddy( worldPos ) , ddx( worldPos ) ) );
				float3 WorldNormal_Derivates3972_g77006 = normalizeResult3971_g77006;
				float dotResult3851_g77006 = dot( ViewDirection3963_g77006 , WorldNormal_Derivates3972_g77006 );
				float lerpResult3993_g77006 = lerp( 1.0 , saturate( ( abs( dotResult3851_g77006 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g77006 = lerpResult3993_g77006;
				half Fade_Effects_A5360_g77006 = Fade_Glancing3853_g77006;
				float temp_output_7_0_g77059 = TVE_CameraFadeMin;
				float temp_output_10_0_g77059 = ( TVE_CameraFadeMax - temp_output_7_0_g77059 );
				float lerpResult4755_g77006 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77059 ) / ( temp_output_10_0_g77059 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g77006 = lerpResult4755_g77006;
				half Fade_Effects_B6228_g77006 = ( Fade_Effects_A5360_g77006 * Fade_Camera3743_g77006 );
				half Fade_Mask5149_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5141_g77006 = lerp( 1.0 , ( Fade_Effects_B6228_g77006 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g77006);
				half Fade_Effects_C7653_g77006 = lerpResult5141_g77006;
				float temp_output_5865_0_g77006 = saturate( ( Fade_Effects_C7653_g77006 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g77006 ) ).r ) );
				half Fade_Alpha3727_g77006 = temp_output_5865_0_g77006;
				half Final_Alpha7344_g77006 = min( ( ( Blend_Alpha6157_g77006 - AlphaTreshold2132_g77006 ) * Global_Alpha315_g77006 ) , Fade_Alpha3727_g77006 );
				float temp_output_3_0_g77109 = Final_Alpha7344_g77006;
				float Alpha19_g77109 = temp_output_3_0_g77109;
				float temp_output_15_0_g77109 = 0.01;
				float Treshold19_g77109 = temp_output_15_0_g77109;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#else
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g77006 = (lerpResult7654_g77006).a;
				half Second_Color_Alpha6152_g77006 = (lerpResult7662_g77006).a;
				float lerpResult6168_g77006 = lerp( Main_Color_Alpha6121_g77006 , Second_Color_Alpha6152_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g77006 = lerpResult6168_g77006;
				#else
				float staticSwitch6174_g77006 = Main_Color_Alpha6121_g77006;
				#endif
				half Blend_Color_Alpha6167_g77006 = staticSwitch6174_g77006;
				half Final_Clip914_g77006 = saturate( ( Alpha19_g77109 * Blend_Color_Alpha6167_g77006 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g77006;
				o.Normal = switchResult12_g77037;
				o.Emission = Final_Emissive2476_g77006;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_13;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion323_g77006;
					o.Smoothness = Blend_Smoothness_Wetness4130_g77006;
				#endif

				o.Alpha = Final_Clip914_g77006;
				float AlphaClipThreshold = 0.5;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed4 c = 0;
				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;
				gi.light.color *= atten;

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						c += LightingBlinnPhong (o, worldViewDir, gi);
					#else
						c += LightingLambert( o, gi );
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						c += LightingStandardSpecular (o, worldViewDir, gi);
					#else
						c += LightingStandard( o, worldViewDir, gi );
					#endif
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;
					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow( saturate( dot( worldViewDir, -lightDir ) ), scattering );
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				//#ifdef ASE_REFRACTION
				//	float4 projScreenPos = ScreenPos / ScreenPos.w;
				//	float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
				//	projScreenPos.xy += refractionOffset.xy;
				//	float3 refraction = UNITY_SAMPLE_SCREENSPACE_TEXTURE( _GrabTexture, projScreenPos ) * RefractionColor;
				//	color.rgb = lerp( refraction, color.rgb, color.a );
				//	color.a = 1;
				//#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "Deferred"
			Tags { "LightMode"="Deferred" }

			AlphaToMask Off

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_prepassfinal
			#ifndef UNITY_PASS_DEFERRED
				#define UNITY_PASS_DEFERRED
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				float4 lmap : TEXCOORD2;
				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						half3 sh : TEXCOORD3;
					#endif
				#else
					#ifdef DIRLIGHTMAP_OFF
						float4 lmapFadePos : TEXCOORD4;
					#endif
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef LIGHTMAP_ON
			float4 unity_LightmapFade;
			#endif
			fixed4 unity_Ambient;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_cull;
			uniform half _render_coverage;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _IsStandardShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderCull;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _SpaceGlobalLocals;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half4 _RimLightRemap;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsCoreShader;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half4 _DetailMaskRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailBlendRemap;
			uniform half4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform half _Cutoff;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MotionValue_30;
			uniform half _MotionValue_20;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half _MessageSubsurface;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceSubsurface;
			uniform half _SpaceMotionGlobals;
			uniform half _CategoryDetail;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _RenderZWrite;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderClip;
			uniform half _RenderCoverage;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMaskInvertMode;
			uniform half _DetailMeshInvertMode;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half _MessageOcclusion;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half4 _EmissiveTexRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half3 TVE_MainLightDirection;
			uniform half TVE_OverlayNormalValue;
			uniform half TVE_WetnessNormalValue;
			uniform half3 _render_normals;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _RenderSpecular;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half _FadeGlancingValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g77006 = v.vertex.xyz;
				float3 appendResult60_g77016 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g77006 = ( appendResult60_g77016 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g77006 = Mesh_PivotsData2831_g77006;
				float3 temp_output_2283_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				half3 VertexPos40_g77087 = temp_output_2283_0_g77006;
				half3 VertexPos40_g77088 = VertexPos40_g77087;
				float3 appendResult74_g77088 = (float3(VertexPos40_g77088.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g77088 = appendResult74_g77088;
				float3 break84_g77088 = VertexPos40_g77088;
				float3 appendResult81_g77088 = (float3(0.0 , break84_g77088.y , break84_g77088.z));
				half3 VertexPosOtherAxis82_g77088 = appendResult81_g77088;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g77006 = ase_worldPos;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 WorldPosition_Shifted7477_g77006 = ( WorldPosition3905_g77006 - TVE_WorldOrigin );
				float4x4 break19_g77062 = unity_ObjectToWorld;
				float3 appendResult20_g77062 = (float3(break19_g77062[ 0 ][ 3 ] , break19_g77062[ 1 ][ 3 ] , break19_g77062[ 2 ][ 3 ]));
				float3 temp_output_122_0_g77062 = Mesh_PivotsData2831_g77006;
				float3 PivotsOnly105_g77062 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g77062 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g77064 = ( appendResult20_g77062 + PivotsOnly105_g77062 );
				half3 WorldData19_g77064 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77064 = WorldData19_g77064;
				#else
				float3 staticSwitch14_g77064 = ObjectData20_g77064;
				#endif
				float3 temp_output_114_0_g77062 = staticSwitch14_g77064;
				float3 vertexToFrag4224_g77006 = temp_output_114_0_g77062;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				float3 lerpResult6766_g77006 = lerp( WorldPosition_Shifted7477_g77006 , ObjectPosition_Shifted7481_g77006 , _MotionPosition_10);
				float3 Motion_10_Position6738_g77006 = lerpResult6766_g77006;
				half3 Input_Position419_g77102 = Motion_10_Position6738_g77006;
				float Input_MotionScale287_g77102 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77102 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77102 = (( Input_Position419_g77102 * Input_MotionScale287_g77102 * NoiseTex_Tilling735_g77102 * 0.0075 )).xz;
				float2 temp_output_447_0_g77011 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g77006 = temp_output_447_0_g77011;
				half2 Input_DirectionWS423_g77102 = Global_Wind_DirectionWS4683_g77006;
				float lerpResult128_g77103 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77102 = _MotionSpeed_10;
				half Input_MotionVariation284_g77102 = _MotionVariation_10;
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = v.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				half Input_GlobalMeshVariation569_g77102 = Global_MeshVariation5104_g77006;
				float temp_output_630_0_g77102 = ( ( ( lerpResult128_g77103 * Input_MotionSpeed62_g77102 ) + ( Input_MotionVariation284_g77102 * Input_GlobalMeshVariation569_g77102 ) ) * 0.03 );
				float temp_output_607_0_g77102 = frac( temp_output_630_0_g77102 );
				float4 lerpResult590_g77102 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * temp_output_607_0_g77102 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * frac( ( temp_output_630_0_g77102 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77102 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77102 = lerpResult590_g77102;
				float2 temp_output_645_0_g77102 = ((Noise_Complex703_g77102).rg*2.0 + -1.0);
				float2 break650_g77102 = temp_output_645_0_g77102;
				float3 appendResult649_g77102 = (float3(break650_g77102.x , 0.0 , break650_g77102.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g77006 = (( mul( unity_WorldToObject, float4( appendResult649_g77102 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g77093 = Global_Noise_OS5548_g77006;
				float2 break448_g77011 = temp_output_447_0_g77011;
				float3 appendResult452_g77011 = (float3(break448_g77011.x , 0.0 , break448_g77011.y));
				half2 Global_Wind_DirectionOS5692_g77006 = (( mul( unity_WorldToObject, float4( appendResult452_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g77093 = Global_Wind_DirectionOS5692_g77006;
				float temp_output_84_0_g77017 = _LayerMotionValue;
				float temp_output_19_0_g77021 = TVE_MotionUsage[(int)temp_output_84_0_g77017];
				float4 temp_output_91_19_g77017 = TVE_MotionCoords;
				half2 UV94_g77017 = ( (temp_output_91_19_g77017).zw + ( (temp_output_91_19_g77017).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77017 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g77017,temp_output_84_0_g77017), 0.0 );
				float4 temp_output_17_0_g77021 = tex2DArrayNode50_g77017;
				float4 temp_output_112_19_g77017 = TVE_MotionParams;
				float4 temp_output_3_0_g77021 = temp_output_112_19_g77017;
				float4 ifLocalVar18_g77021 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77021 >= 0.5 )
				ifLocalVar18_g77021 = temp_output_17_0_g77021;
				else
				ifLocalVar18_g77021 = temp_output_3_0_g77021;
				float4 lerpResult22_g77021 = lerp( temp_output_3_0_g77021 , temp_output_17_0_g77021 , temp_output_19_0_g77021);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77021 = lerpResult22_g77021;
				#else
				float4 staticSwitch24_g77021 = ifLocalVar18_g77021;
				#endif
				half4 Global_Motion_Params3909_g77006 = staticSwitch24_g77021;
				float4 break322_g77011 = Global_Motion_Params3909_g77006;
				float lerpResult457_g77011 = lerp( break322_g77011.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g77011 = ( 1.0 - lerpResult457_g77011 );
				half Global_Wind_Power2223_g77006 = ( 1.0 - ( temp_output_459_0_g77011 * temp_output_459_0_g77011 ) );
				half Input_WindPower449_g77093 = Global_Wind_Power2223_g77006;
				float2 lerpResult516_g77093 = lerp( Input_Noise_DirectionOS487_g77093 , Input_Wind_DirectionOS458_g77093 , ( Input_WindPower449_g77093 * 0.6 ));
				half Mesh_Motion_107572_g77006 = v.ase_color.a;
				half Input_MeshHeight388_g77093 = Mesh_Motion_107572_g77006;
				half ObjectData20_g77094 = Input_MeshHeight388_g77093;
				float enc62_g77121 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77121 = DecodeFloatToVector2( enc62_g77121 );
				float2 break63_g77121 = ( localDecodeFloatToVector262_g77121 * 100.0 );
				float Bounds_Height5230_g77006 = break63_g77121.x;
				half Input_BoundsHeight390_g77093 = Bounds_Height5230_g77006;
				half WorldData19_g77094 = ( Input_MeshHeight388_g77093 * Input_MeshHeight388_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77094 = WorldData19_g77094;
				#else
				float staticSwitch14_g77094 = ObjectData20_g77094;
				#endif
				half Final_Motion10_Mask321_g77093 = ( staticSwitch14_g77094 * 2.0 );
				half Input_BendingAmplitude376_g77093 = _MotionAmplitude_10;
				half Global_MotionValue640_g77093 = TVE_MotionValue_10;
				half2 Final_Bending631_g77093 = ( lerpResult516_g77093 * ( Final_Motion10_Mask321_g77093 * Input_BendingAmplitude376_g77093 * Input_WindPower449_g77093 * Input_WindPower449_g77093 * Global_MotionValue640_g77093 ) );
				float2 appendResult433_g77011 = (float2(break322_g77011.x , break322_g77011.y));
				float2 temp_output_436_0_g77011 = (appendResult433_g77011*2.0 + -1.0);
				float2 break441_g77011 = temp_output_436_0_g77011;
				float3 appendResult440_g77011 = (float3(break441_g77011.x , 0.0 , break441_g77011.y));
				half2 Global_React_DirectionOS39_g77006 = (( mul( unity_WorldToObject, float4( appendResult440_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g77093 = Global_React_DirectionOS39_g77006;
				float clampResult17_g77096 = clamp( Input_MeshHeight388_g77093 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77095 = 0.0;
				half Input_InteractionUseMask62_g77093 = _InteractionMaskValue;
				float temp_output_10_0_g77095 = ( Input_InteractionUseMask62_g77093 - temp_output_7_0_g77095 );
				half Final_InteractionRemap594_g77093 = saturate( ( ( clampResult17_g77096 - temp_output_7_0_g77095 ) / ( temp_output_10_0_g77095 + 0.0001 ) ) );
				half ObjectData20_g77097 = Final_InteractionRemap594_g77093;
				half WorldData19_g77097 = ( Final_InteractionRemap594_g77093 * Final_InteractionRemap594_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77097 = WorldData19_g77097;
				#else
				float staticSwitch14_g77097 = ObjectData20_g77097;
				#endif
				half Final_InteractionMask373_g77093 = ( staticSwitch14_g77097 * 2.0 );
				half Input_InteractionAmplitude58_g77093 = _InteractionAmplitude;
				half2 Final_Interaction632_g77093 = ( Input_React_DirectionOS358_g77093 * Final_InteractionMask373_g77093 * Input_InteractionAmplitude58_g77093 );
				half Global_Interaction_Mask66_g77006 = ( break322_g77011.w * break322_g77011.w * break322_g77011.w * break322_g77011.w );
				float Input_InteractionGlobalMask330_g77093 = Global_Interaction_Mask66_g77006;
				half Final_InteractionValue525_g77093 = saturate( ( Input_InteractionAmplitude58_g77093 * Input_InteractionGlobalMask330_g77093 ) );
				float2 lerpResult551_g77093 = lerp( Final_Bending631_g77093 , Final_Interaction632_g77093 , Final_InteractionValue525_g77093);
				float2 break364_g77093 = lerpResult551_g77093;
				float3 appendResult638_g77093 = (float3(break364_g77093.x , 0.0 , break364_g77093.y));
				half3 Motion_10_Interaction7519_g77006 = appendResult638_g77093;
				half3 Angle44_g77087 = Motion_10_Interaction7519_g77006;
				half Angle44_g77088 = (Angle44_g77087).z;
				half3 VertexPos40_g77089 = ( VertexPosRotationAxis50_g77088 + ( VertexPosOtherAxis82_g77088 * cos( Angle44_g77088 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g77088 ) * sin( Angle44_g77088 ) ) );
				float3 appendResult74_g77089 = (float3(0.0 , 0.0 , VertexPos40_g77089.z));
				half3 VertexPosRotationAxis50_g77089 = appendResult74_g77089;
				float3 break84_g77089 = VertexPos40_g77089;
				float3 appendResult81_g77089 = (float3(break84_g77089.x , break84_g77089.y , 0.0));
				half3 VertexPosOtherAxis82_g77089 = appendResult81_g77089;
				half Angle44_g77089 = -(Angle44_g77087).x;
				half3 Input_Position419_g77117 = WorldPosition_Shifted7477_g77006;
				float3 break459_g77117 = Input_Position419_g77117;
				float Sum_Position446_g77117 = ( break459_g77117.x + break459_g77117.y + break459_g77117.z );
				half Input_MotionScale321_g77117 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77117 = _MotionVariation_20;
				half Input_GlobalVariation400_g77117 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77118 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77117 = _MotionSpeed_20;
				float temp_output_404_0_g77117 = ( lerpResult128_g77118 * Input_MotionSpeed62_g77117 );
				half Motion_SineA450_g77117 = sin( ( ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) + ( Input_MotionVariation330_g77117 * Input_GlobalVariation400_g77117 ) + temp_output_404_0_g77117 ) );
				half Motion_SineB395_g77117 = sin( ( ( temp_output_404_0_g77117 * 0.6842 ) + ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) ) );
				half3 Input_Position419_g77130 = VertexPosition3588_g77006;
				float3 normalizeResult518_g77130 = normalize( Input_Position419_g77130 );
				half2 Input_DirectionOS423_g77130 = Global_React_DirectionOS39_g77006;
				float2 break521_g77130 = -Input_DirectionOS423_g77130;
				float3 appendResult522_g77130 = (float3(break521_g77130.x , 0.0 , break521_g77130.y));
				float dotResult519_g77130 = dot( normalizeResult518_g77130 , appendResult522_g77130 );
				half Input_Value62_g77130 = _MotionFacingValue;
				float lerpResult524_g77130 = lerp( 1.0 , (dotResult519_g77130*0.5 + 0.5) , Input_Value62_g77130);
				half ObjectData20_g77131 = max( lerpResult524_g77130 , 0.001 );
				half WorldData19_g77131 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77131 = WorldData19_g77131;
				#else
				float staticSwitch14_g77131 = ObjectData20_g77131;
				#endif
				half Motion_FacingMask5214_g77006 = staticSwitch14_g77131;
				half Motion_20_Amplitude4381_g77006 = Motion_FacingMask5214_g77006;
				half Input_MotionAmplitude384_g77117 = Motion_20_Amplitude4381_g77006;
				half Input_GlobalWind407_g77117 = Global_Wind_Power2223_g77006;
				float4 break638_g77102 = abs( Noise_Complex703_g77102 );
				half Global_Noise_B5526_g77006 = break638_g77102.b;
				half Input_GlobalNoise411_g77117 = Global_Noise_B5526_g77006;
				float lerpResult413_g77117 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77117);
				half Motion_Amplitude418_g77117 = ( Input_MotionAmplitude384_g77117 * Input_GlobalWind407_g77117 * pow( Input_GlobalNoise411_g77117 , lerpResult413_g77117 ) );
				half Input_Squash58_g77117 = _MotionAmplitude_20;
				float enc59_g77121 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77121 = DecodeFloatToVector2( enc59_g77121 );
				float2 break61_g77121 = localDecodeFloatToVector259_g77121;
				half Mesh_Motion_2060_g77006 = break61_g77121.x;
				half Input_MeshMotion_20388_g77117 = Mesh_Motion_2060_g77006;
				float Bounds_Radius5231_g77006 = break63_g77121.y;
				half Input_BoundsRadius390_g77117 = Bounds_Radius5231_g77006;
				half Global_MotionValue462_g77117 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77117 = Global_React_DirectionOS39_g77006;
				float2 break371_g77117 = Input_DirectionOS366_g77117;
				float3 appendResult372_g77117 = (float3(break371_g77117.x , ( Motion_SineA450_g77117 * 0.3 ) , break371_g77117.y));
				half3 Motion_20_Squash4418_g77006 = ( ( (max( Motion_SineA450_g77117 , Motion_SineB395_g77117 )*0.5 + 0.5) * Motion_Amplitude418_g77117 * Input_Squash58_g77117 * Input_MeshMotion_20388_g77117 * Input_BoundsRadius390_g77117 * Global_MotionValue462_g77117 ) * appendResult372_g77117 );
				half3 VertexPos40_g77080 = ( ( VertexPosRotationAxis50_g77089 + ( VertexPosOtherAxis82_g77089 * cos( Angle44_g77089 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g77089 ) * sin( Angle44_g77089 ) ) ) + Motion_20_Squash4418_g77006 );
				float3 appendResult74_g77080 = (float3(0.0 , VertexPos40_g77080.y , 0.0));
				float3 VertexPosRotationAxis50_g77080 = appendResult74_g77080;
				float3 break84_g77080 = VertexPos40_g77080;
				float3 appendResult81_g77080 = (float3(break84_g77080.x , 0.0 , break84_g77080.z));
				float3 VertexPosOtherAxis82_g77080 = appendResult81_g77080;
				half Input_Rolling379_g77117 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g77006 = ( Motion_SineA450_g77117 * Motion_Amplitude418_g77117 * Input_Rolling379_g77117 * Input_MeshMotion_20388_g77117 * Global_MotionValue462_g77117 );
				half Angle44_g77080 = Motion_20_Rolling5257_g77006;
				half3 Input_Position500_g77098 = WorldPosition_Shifted7477_g77006;
				half Input_MotionScale321_g77098 = _MotionScale_32;
				half Input_MotionVariation330_g77098 = _MotionVariation_32;
				half Input_GlobalVariation372_g77098 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77099 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77098 = _MotionSpeed_32;
				float4 tex2DNode460_g77098 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77098).xz * Input_MotionScale321_g77098 * 0.03 ) + ( Input_MotionVariation330_g77098 * Input_GlobalVariation372_g77098 ) + ( lerpResult128_g77099 * Input_MotionSpeed62_g77098 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77098 = (float3(tex2DNode460_g77098.r , tex2DNode460_g77098.g , tex2DNode460_g77098.b));
				half3 Flutter_Texture489_g77098 = (appendResult462_g77098*2.0 + -1.0);
				float temp_output_7_0_g77056 = TVE_MotionFadeEnd;
				float temp_output_10_0_g77056 = ( TVE_MotionFadeStart - temp_output_7_0_g77056 );
				half Motion_FadeOut4005_g77006 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77056 ) / ( temp_output_10_0_g77056 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g77006 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g77006 * Motion_FadeOut4005_g77006 );
				half Input_MotionAmplitude58_g77098 = Motion_30_Amplitude4960_g77006;
				half Mesh_Motion_30144_g77006 = break61_g77121.y;
				half Input_MeshMotion_30374_g77098 = Mesh_Motion_30144_g77006;
				half Input_GlobalWind471_g77098 = Global_Wind_Power2223_g77006;
				half Global_MotionValue503_g77098 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77098 = Global_Noise_B5526_g77006;
				float lerpResult466_g77098 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77098);
				half Flutter_Amplitude491_g77098 = ( Input_MotionAmplitude58_g77098 * Input_MeshMotion_30374_g77098 * Input_GlobalWind471_g77098 * Global_MotionValue503_g77098 * pow( Input_GlobalNoise472_g77098 , lerpResult466_g77098 ) );
				half3 Motion_30_Flutter263_g77006 = ( Flutter_Texture489_g77098 * Flutter_Amplitude491_g77098 );
				float3 Vertex_Motion_Object833_g77006 = ( ( VertexPosRotationAxis50_g77080 + ( VertexPosOtherAxis82_g77080 * cos( Angle44_g77080 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g77080 ) * sin( Angle44_g77080 ) ) ) + Motion_30_Flutter263_g77006 );
				half3 ObjectData20_g77074 = Vertex_Motion_Object833_g77006;
				float3 temp_output_3474_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				float3 Vertex_Motion_World1118_g77006 = ( ( ( temp_output_3474_0_g77006 + Motion_10_Interaction7519_g77006 ) + Motion_20_Squash4418_g77006 ) + Motion_30_Flutter263_g77006 );
				half3 WorldData19_g77074 = Vertex_Motion_World1118_g77006;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77074 = WorldData19_g77074;
				#else
				float3 staticSwitch14_g77074 = ObjectData20_g77074;
				#endif
				float3 temp_output_7495_0_g77006 = staticSwitch14_g77074;
				float3 Vertex_Motion7493_g77006 = temp_output_7495_0_g77006;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 break2709_g77006 = cross( ViewDirection3963_g77006 , half3(0,1,0) );
				float3 appendResult2710_g77006 = (float3(-break2709_g77006.z , 0.0 , break2709_g77006.x));
				float3 appendResult2667_g77006 = (float3(Global_MeshVariation5104_g77006 , 0.5 , Global_MeshVariation5104_g77006));
				half Mesh_Height1524_g77006 = v.ase_color.a;
				float dotResult2212_g77006 = dot( ViewDirection3963_g77006 , float3(0,1,0) );
				half Mask_HView2656_g77006 = dotResult2212_g77006;
				float saferPower2652_g77006 = abs( Mask_HView2656_g77006 );
				half3 Grass_Perspective2661_g77006 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g77006 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g77006*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g77006 * pow( saferPower2652_g77006 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g77038 = _LayerVertexValue;
				float temp_output_19_0_g77042 = TVE_VertexUsage[(int)temp_output_84_0_g77038];
				float4 temp_output_94_19_g77038 = TVE_VertexCoords;
				half2 UV97_g77038 = ( (temp_output_94_19_g77038).zw + ( (temp_output_94_19_g77038).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77038 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g77038,temp_output_84_0_g77038), 0.0 );
				float4 temp_output_17_0_g77042 = tex2DArrayNode50_g77038;
				float4 temp_output_111_19_g77038 = TVE_VertexParams;
				float4 temp_output_3_0_g77042 = temp_output_111_19_g77038;
				float4 ifLocalVar18_g77042 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77042 >= 0.5 )
				ifLocalVar18_g77042 = temp_output_17_0_g77042;
				else
				ifLocalVar18_g77042 = temp_output_3_0_g77042;
				float4 lerpResult22_g77042 = lerp( temp_output_3_0_g77042 , temp_output_17_0_g77042 , temp_output_19_0_g77042);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77042 = lerpResult22_g77042;
				#else
				float4 staticSwitch24_g77042 = ifLocalVar18_g77042;
				#endif
				half4 Global_Vertex_Params4173_g77006 = staticSwitch24_g77042;
				float4 break322_g77043 = Global_Vertex_Params4173_g77006;
				half Global_VertexSize174_g77006 = saturate( break322_g77043.w );
				float lerpResult346_g77006 = lerp( 1.0 , Global_VertexSize174_g77006 , _GlobalSize);
				float3 appendResult3480_g77006 = (float3(lerpResult346_g77006 , lerpResult346_g77006 , lerpResult346_g77006));
				half3 ObjectData20_g77071 = appendResult3480_g77006;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g77071 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77071 = WorldData19_g77071;
				#else
				float3 staticSwitch14_g77071 = ObjectData20_g77071;
				#endif
				half3 Vertex_Size1741_g77006 = staticSwitch14_g77071;
				float temp_output_7_0_g77072 = _SizeFadeEndValue;
				float temp_output_10_0_g77072 = ( _SizeFadeStartValue - temp_output_7_0_g77072 );
				float temp_output_7453_0_g77006 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g77006 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g77072 ) / ( temp_output_10_0_g77072 + 0.0001 ) ) );
				float3 appendResult3482_g77006 = (float3(temp_output_7453_0_g77006 , temp_output_7453_0_g77006 , temp_output_7453_0_g77006));
				half3 ObjectData20_g77070 = appendResult3482_g77006;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g77070 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77070 = WorldData19_g77070;
				#else
				float3 staticSwitch14_g77070 = ObjectData20_g77070;
				#endif
				float3 Vertex_SizeFade1740_g77006 = staticSwitch14_g77070;
				float3 lerpResult16_g77075 = lerp( VertexPosition3588_g77006 , ( ( ( Vertex_Motion7493_g77006 + Grass_Perspective2661_g77006 ) * Vertex_Size1741_g77006 * Vertex_SizeFade1740_g77006 ) + Mesh_PivotsOS2291_g77006 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g77006 = lerpResult16_g77075;
				float3 Final_VertexPosition890_g77006 = ( temp_output_4912_0_g77006 + _DisableSRPBatcher );
				
				float4 break33_g77126 = _second_uvs_mode;
				float2 temp_output_30_0_g77126 = ( v.ase_texcoord.xy * break33_g77126.x );
				float2 appendResult21_g77121 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g77006 = appendResult21_g77121;
				float2 temp_output_29_0_g77126 = ( Mesh_DetailCoord3_g77006 * break33_g77126.y );
				float2 temp_output_31_0_g77126 = ( (WorldPosition_Shifted7477_g77006).xz * break33_g77126.z );
				half2 Second_UVs_Tilling7609_g77006 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g77006 = ( 1.0 / Second_UVs_Tilling7609_g77006 );
				float2 lerpResult7614_g77006 = lerp( Second_UVs_Tilling7609_g77006 , Second_UVs_Scale7610_g77006 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g77006 = (_SecondUVs).zw;
				float2 vertexToFrag11_g77032 = ( ( ( temp_output_30_0_g77126 + temp_output_29_0_g77126 + temp_output_31_0_g77126 ) * lerpResult7614_g77006 ) + Second_UVs_Offset7605_g77006 );
				o.ase_texcoord9.xy = vertexToFrag11_g77032;
				o.ase_texcoord10.xyz = vertexToFrag3890_g77006;
				o.ase_texcoord11.xyz = vertexToFrag4224_g77006;
				half Global_Noise_A4860_g77006 = break638_g77102.a;
				half Tint_Highlight_Value3231_g77006 = ( Global_Noise_A4860_g77006 * Global_Wind_Power2223_g77006 * Motion_FadeOut4005_g77006 * Mesh_Height1524_g77006 );
				float vertexToFrag11_g77047 = Tint_Highlight_Value3231_g77006;
				o.ase_texcoord9.z = vertexToFrag11_g77047;
				
				o.ase_texcoord8 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord9.w = 0;
				o.ase_texcoord10.w = 0;
				o.ase_texcoord11.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g77006;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#ifdef DYNAMICLIGHTMAP_ON
					o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#else
					o.lmap.zw = 0;
				#endif
				#ifdef LIGHTMAP_ON
					o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#ifdef DIRLIGHTMAP_OFF
						o.lmapFadePos.xyz = (mul(unity_ObjectToWorld, v.vertex).xyz - unity_ShadowFadeCenterAndType.xyz) * unity_ShadowFadeCenterAndType.w;
						o.lmapFadePos.w = (-UnityObjectToViewPos(v.vertex).z) * (1.0 - unity_ShadowFadeCenterAndType.w);
					#endif
				#else
					o.lmap.xy = 0;
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						o.sh = ShadeSHPerVertex (worldNormal, o.sh);
					#endif
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			void frag (v2f IN , bool ase_vface : SV_IsFrontFace
				, out half4 outGBuffer0 : SV_Target0
				, out half4 outGBuffer1 : SV_Target1
				, out half4 outGBuffer2 : SV_Target2
				, out half4 outEmission : SV_Target3
				#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
				, out half4 outShadowMask : SV_Target4
				#endif
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
			)
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				half atten = 1;

				half2 Main_UVs15_g77006 = ( ( IN.ase_texcoord8.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g77006 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g77006 );
				float3 lerpResult6223_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode29_g77006).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g77006 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				half Main_Mask57_g77006 = tex2DNode35_g77006.b;
				float clampResult17_g77111 = clamp( Main_Mask57_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77112 = _MainMaskMinValue;
				float temp_output_10_0_g77112 = ( _MainMaskMaxValue - temp_output_7_0_g77112 );
				half Main_Mask_Remap5765_g77006 = saturate( ( ( clampResult17_g77111 - temp_output_7_0_g77112 ) / ( temp_output_10_0_g77112 + 0.0001 ) ) );
				float lerpResult7671_g77006 = lerp( 1.0 , Main_Mask_Remap5765_g77006 , _MainColorMode);
				float4 lerpResult7654_g77006 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g77006);
				half3 Main_Color_RGB7657_g77006 = (lerpResult7654_g77006).rgb;
				half3 Main_Albedo99_g77006 = ( lerpResult6223_g77006 * Main_Color_RGB7657_g77006 );
				float2 vertexToFrag11_g77032 = IN.ase_texcoord9.xy;
				half2 Second_UVs17_g77006 = vertexToFrag11_g77032;
				float4 tex2DNode89_g77006 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g77006 );
				float3 lerpResult6225_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode89_g77006).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g77006 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				half Second_Mask81_g77006 = tex2DNode33_g77006.b;
				float clampResult17_g77114 = clamp( Second_Mask81_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77115 = _SecondMaskMinValue;
				float temp_output_10_0_g77115 = ( _SecondMaskMaxValue - temp_output_7_0_g77115 );
				half Second_Mask_Remap6130_g77006 = saturate( ( ( clampResult17_g77114 - temp_output_7_0_g77115 ) / ( temp_output_10_0_g77115 + 0.0001 ) ) );
				float lerpResult7672_g77006 = lerp( 1.0 , Second_Mask_Remap6130_g77006 , _SecondColorMode);
				float4 lerpResult7662_g77006 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g77006);
				half3 Second_Color_RGB7663_g77006 = (lerpResult7662_g77006).rgb;
				half3 Second_Albedo153_g77006 = ( lerpResult6225_g77006 * Second_Color_RGB7663_g77006 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77048 = 2.0;
				#else
				float staticSwitch1_g77048 = 4.594794;
				#endif
				float3 lerpResult4834_g77006 = lerp( ( Main_Albedo99_g77006 * Second_Albedo153_g77006 * staticSwitch1_g77048 ) , Second_Albedo153_g77006 , _DetailBlendMode);
				float lerpResult6885_g77006 = lerp( Main_Mask57_g77006 , Second_Mask81_g77006 , _DetailMaskMode);
				float clampResult17_g77084 = clamp( lerpResult6885_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77083 = _DetailMaskMinValue;
				float temp_output_10_0_g77083 = ( _DetailMaskMaxValue - temp_output_7_0_g77083 );
				half Blend_Mask_Texture6794_g77006 = saturate( ( ( clampResult17_g77084 - temp_output_7_0_g77083 ) / ( temp_output_10_0_g77083 + 0.0001 ) ) );
				half Mesh_DetailMask90_g77006 = IN.ase_color.b;
				half4 Normal_Packed45_g77110 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				float2 appendResult58_g77110 = (float2(( (Normal_Packed45_g77110).x * (Normal_Packed45_g77110).w ) , (Normal_Packed45_g77110).y));
				half2 Normal_Default50_g77110 = appendResult58_g77110;
				half2 Normal_ASTC41_g77110 = (Normal_Packed45_g77110).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77110 = Normal_ASTC41_g77110;
				#else
				float2 staticSwitch38_g77110 = Normal_Default50_g77110;
				#endif
				half2 Normal_NO_DTX544_g77110 = (Normal_Packed45_g77110).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77110 = Normal_NO_DTX544_g77110;
				#else
				float2 staticSwitch37_g77110 = staticSwitch38_g77110;
				#endif
				float2 temp_output_6555_0_g77006 = ( (staticSwitch37_g77110*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g77006 = (float3(temp_output_6555_0_g77006 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g77006 = appendResult7388_g77006;
				float3 worldNormal7389_g77006 = float3(dot(tanToWorld0,tanNormal7389_g77006), dot(tanToWorld1,tanNormal7389_g77006), dot(tanToWorld2,tanNormal7389_g77006));
				half3 Main_NormalWS7390_g77006 = worldNormal7389_g77006;
				float lerpResult6884_g77006 = lerp( Mesh_DetailMask90_g77006 , ((Main_NormalWS7390_g77006).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g77082 = clamp( lerpResult6884_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77081 = _DetailMeshMinValue;
				float temp_output_10_0_g77081 = ( _DetailMeshMaxValue - temp_output_7_0_g77081 );
				half Blend_Mask_Mesh1540_g77006 = saturate( ( ( clampResult17_g77082 - temp_output_7_0_g77081 ) / ( temp_output_10_0_g77081 + 0.0001 ) ) );
				float clampResult17_g77092 = clamp( ( Blend_Mask_Texture6794_g77006 * Blend_Mask_Mesh1540_g77006 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77107 = _DetailBlendMinValue;
				float temp_output_10_0_g77107 = ( _DetailBlendMaxValue - temp_output_7_0_g77107 );
				half Blend_Mask147_g77006 = ( saturate( ( ( clampResult17_g77092 - temp_output_7_0_g77107 ) / ( temp_output_10_0_g77107 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g77006 = lerp( Main_Albedo99_g77006 , lerpResult4834_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g77006 = lerpResult235_g77006;
				#else
				float3 staticSwitch255_g77006 = Main_Albedo99_g77006;
				#endif
				half3 Blend_Albedo265_g77006 = staticSwitch255_g77006;
				half Mesh_Height1524_g77006 = IN.ase_color.a;
				float temp_output_7_0_g77057 = _GradientMinValue;
				float temp_output_10_0_g77057 = ( _GradientMaxValue - temp_output_7_0_g77057 );
				half Tint_Gradient_Value2784_g77006 = saturate( ( ( Mesh_Height1524_g77006 - temp_output_7_0_g77057 ) / ( temp_output_10_0_g77057 + 0.0001 ) ) );
				float3 lerpResult2779_g77006 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g77006);
				float lerpResult6617_g77006 = lerp( Main_Mask_Remap5765_g77006 , Second_Mask_Remap6130_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g77006 = lerpResult6617_g77006;
				#else
				float staticSwitch6623_g77006 = Main_Mask_Remap5765_g77006;
				#endif
				half Blend_Mask_Remap6621_g77006 = staticSwitch6623_g77006;
				half Tint_Gradient_Mask6207_g77006 = Blend_Mask_Remap6621_g77006;
				float3 lerpResult6208_g77006 = lerp( float3( 1,1,1 ) , lerpResult2779_g77006 , Tint_Gradient_Mask6207_g77006);
				half3 Tint_Gradient_Color5769_g77006 = lerpResult6208_g77006;
				half3 Tint_Noise_Color5770_g77006 = float3(1,1,1);
				float Mesh_Occlusion318_g77006 = IN.ase_color.g;
				float clampResult17_g77054 = clamp( Mesh_Occlusion318_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77060 = _VertexOcclusionMinValue;
				float temp_output_10_0_g77060 = ( _VertexOcclusionMaxValue - temp_output_7_0_g77060 );
				half Occlusion_Mask6432_g77006 = saturate( ( ( clampResult17_g77054 - temp_output_7_0_g77060 ) / ( temp_output_10_0_g77060 + 0.0001 ) ) );
				float3 lerpResult2945_g77006 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g77006);
				half3 Occlusion_Color648_g77006 = lerpResult2945_g77006;
				half3 Matcap_Color7428_g77006 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g77006 = ( ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 * Occlusion_Color648_g77006 ) + Matcap_Color7428_g77006 );
				float3 temp_output_3_0_g77052 = Blend_Albedo_Tinted2808_g77006;
				float dotResult20_g77052 = dot( temp_output_3_0_g77052 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g77006 = dotResult20_g77052;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g77006).xxx;
				float temp_output_82_0_g77027 = _LayerColorsValue;
				float temp_output_19_0_g77031 = TVE_ColorsUsage[(int)temp_output_82_0_g77027];
				float4 temp_output_91_19_g77027 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g77006 = IN.ase_texcoord10.xyz;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 vertexToFrag4224_g77006 = IN.ase_texcoord11.xyz;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 lerpResult4822_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ColorsPositionMode);
				half2 UV94_g77027 = ( (temp_output_91_19_g77027).zw + ( (temp_output_91_19_g77027).xy * (lerpResult4822_g77006).xz ) );
				float4 tex2DArrayNode83_g77027 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g77027,temp_output_82_0_g77027), 0.0 );
				float4 temp_output_17_0_g77031 = tex2DArrayNode83_g77027;
				float4 temp_output_92_86_g77027 = TVE_ColorsParams;
				float4 temp_output_3_0_g77031 = temp_output_92_86_g77027;
				float4 ifLocalVar18_g77031 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77031 >= 0.5 )
				ifLocalVar18_g77031 = temp_output_17_0_g77031;
				else
				ifLocalVar18_g77031 = temp_output_3_0_g77031;
				float4 lerpResult22_g77031 = lerp( temp_output_3_0_g77031 , temp_output_17_0_g77031 , temp_output_19_0_g77031);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77031 = lerpResult22_g77031;
				#else
				float4 staticSwitch24_g77031 = ifLocalVar18_g77031;
				#endif
				half4 Global_Colors_Params5434_g77006 = staticSwitch24_g77031;
				float4 temp_output_346_0_g77013 = Global_Colors_Params5434_g77006;
				half Global_Colors_A1701_g77006 = saturate( (temp_output_346_0_g77013).w );
				half Colors_Influence3668_g77006 = Global_Colors_A1701_g77006;
				float temp_output_6306_0_g77006 = ( 1.0 - Colors_Influence3668_g77006 );
				float3 lerpResult3618_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g77006 * temp_output_6306_0_g77006 ) ));
				half3 Global_Colors_RGB1700_g77006 = (temp_output_346_0_g77013).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77044 = 2.0;
				#else
				float staticSwitch1_g77044 = 4.594794;
				#endif
				half3 Colors_RGB1954_g77006 = ( Global_Colors_RGB1700_g77006 * staticSwitch1_g77044 * _ColorsIntensityValue );
				float lerpResult7679_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _ColorsMaskValue);
				half Colors_Value3692_g77006 = ( lerpResult7679_g77006 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = IN.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				float lerpResult3870_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _ColorsVariationValue);
				half Colors_Variation3650_g77006 = lerpResult3870_g77006;
				half Occlusion_Alpha6463_g77006 = _VertexOcclusionColor.a;
				float lerpResult6459_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult6459_g77006);
				half Occlusion_Colors6450_g77006 = lerpResult6461_g77006;
				float3 temp_output_3_0_g77053 = ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 );
				float dotResult20_g77053 = dot( temp_output_3_0_g77053 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g77006 = clamp( saturate( ( dotResult20_g77053 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g77006 = clampResult6740_g77006;
				float temp_output_7_0_g77090 = 0.1;
				float temp_output_10_0_g77090 = ( 0.2 - temp_output_7_0_g77090 );
				float lerpResult16_g77045 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g77006 * Colors_Influence3668_g77006 * Colors_Variation3650_g77006 * Occlusion_Colors6450_g77006 * Blend_Albedo_Globals6410_g77006 ) - temp_output_7_0_g77090 ) / ( temp_output_10_0_g77090 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , ( lerpResult3618_g77006 * Colors_RGB1954_g77006 ) , lerpResult16_g77045);
				half3 Blend_Albedo_Colored_High6027_g77006 = lerpResult3628_g77006;
				half3 Blend_Albedo_Colored863_g77006 = Blend_Albedo_Colored_High6027_g77006;
				half3 Global_OverlayColor1758_g77006 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g77022 = _LayerExtrasValue;
				float temp_output_19_0_g77026 = TVE_ExtrasUsage[(int)temp_output_84_0_g77022];
				float4 temp_output_93_19_g77022 = TVE_ExtrasCoords;
				float3 lerpResult4827_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ExtrasPositionMode);
				half2 UV96_g77022 = ( (temp_output_93_19_g77022).zw + ( (temp_output_93_19_g77022).xy * (lerpResult4827_g77006).xz ) );
				float4 tex2DArrayNode48_g77022 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g77022,temp_output_84_0_g77022), 0.0 );
				float4 temp_output_17_0_g77026 = tex2DArrayNode48_g77022;
				float4 temp_output_94_85_g77022 = TVE_ExtrasParams;
				float4 temp_output_3_0_g77026 = temp_output_94_85_g77022;
				float4 ifLocalVar18_g77026 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77026 >= 0.5 )
				ifLocalVar18_g77026 = temp_output_17_0_g77026;
				else
				ifLocalVar18_g77026 = temp_output_3_0_g77026;
				float4 lerpResult22_g77026 = lerp( temp_output_3_0_g77026 , temp_output_17_0_g77026 , temp_output_19_0_g77026);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77026 = lerpResult22_g77026;
				#else
				float4 staticSwitch24_g77026 = ifLocalVar18_g77026;
				#endif
				half4 Global_Extras_Params5440_g77006 = staticSwitch24_g77026;
				float4 break456_g77036 = Global_Extras_Params5440_g77006;
				half Global_Extras_Overlay156_g77006 = break456_g77036.z;
				float lerpResult1065_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _OverlayVariationValue);
				half Overlay_Variation4560_g77006 = lerpResult1065_g77006;
				half Overlay_Value5738_g77006 = ( _GlobalOverlay * Global_Extras_Overlay156_g77006 * Overlay_Variation4560_g77006 );
				half2 Main_Normal137_g77006 = temp_output_6555_0_g77006;
				float2 lerpResult3372_g77006 = lerp( float2( 0,0 ) , Main_Normal137_g77006 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g77113 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				float2 appendResult58_g77113 = (float2(( (Normal_Packed45_g77113).x * (Normal_Packed45_g77113).w ) , (Normal_Packed45_g77113).y));
				half2 Normal_Default50_g77113 = appendResult58_g77113;
				half2 Normal_ASTC41_g77113 = (Normal_Packed45_g77113).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77113 = Normal_ASTC41_g77113;
				#else
				float2 staticSwitch38_g77113 = Normal_Default50_g77113;
				#endif
				half2 Normal_NO_DTX544_g77113 = (Normal_Packed45_g77113).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77113 = Normal_NO_DTX544_g77113;
				#else
				float2 staticSwitch37_g77113 = staticSwitch38_g77113;
				#endif
				float2 temp_output_6560_0_g77006 = ( (staticSwitch37_g77113*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77116 = temp_output_6560_0_g77006;
				float2 break64_g77116 = Normal_Planar45_g77116;
				float3 appendResult65_g77116 = (float3(break64_g77116.x , 0.0 , break64_g77116.y));
				float2 temp_output_7603_0_g77006 = (mul( ase_worldToTangent, appendResult65_g77116 )).xy;
				float2 ifLocalVar7604_g77006 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g77006 = temp_output_7603_0_g77006;
				else
				ifLocalVar7604_g77006 = temp_output_6560_0_g77006;
				half2 Second_Normal179_g77006 = ifLocalVar7604_g77006;
				float2 temp_output_36_0_g77049 = ( lerpResult3372_g77006 + Second_Normal179_g77006 );
				float2 lerpResult3376_g77006 = lerp( Main_Normal137_g77006 , temp_output_36_0_g77049 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g77006 = lerpResult3376_g77006;
				#else
				float2 staticSwitch267_g77006 = Main_Normal137_g77006;
				#endif
				half2 Blend_Normal312_g77006 = staticSwitch267_g77006;
				float3 appendResult7377_g77006 = (float3(Blend_Normal312_g77006 , 1.0));
				float3 tanNormal7376_g77006 = appendResult7377_g77006;
				float3 worldNormal7376_g77006 = float3(dot(tanToWorld0,tanNormal7376_g77006), dot(tanToWorld1,tanNormal7376_g77006), dot(tanToWorld2,tanNormal7376_g77006));
				half3 Blend_NormalWS7375_g77006 = worldNormal7376_g77006;
				float lerpResult7446_g77006 = lerp( (Blend_NormalWS7375_g77006).y , IN.ase_normal.y , Vertex_DynamicMode5112_g77006);
				float lerpResult6757_g77006 = lerp( 1.0 , saturate( lerpResult7446_g77006 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g77006 = lerpResult6757_g77006;
				half Overlay_Shading6688_g77006 = Blend_Albedo_Globals6410_g77006;
				half Overlay_Custom6707_g77006 = 1.0;
				float lerpResult7693_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult7693_g77006);
				half Occlusion_Overlay6471_g77006 = lerpResult6467_g77006;
				float temp_output_7_0_g77058 = 0.1;
				float temp_output_10_0_g77058 = ( 0.2 - temp_output_7_0_g77058 );
				half Overlay_Mask_High6064_g77006 = saturate( ( ( ( Overlay_Value5738_g77006 * Overlay_Projection6081_g77006 * Overlay_Shading6688_g77006 * Overlay_Custom6707_g77006 * Occlusion_Overlay6471_g77006 ) - temp_output_7_0_g77058 ) / ( temp_output_10_0_g77058 + 0.0001 ) ) );
				half Overlay_Mask269_g77006 = Overlay_Mask_High6064_g77006;
				float3 lerpResult336_g77006 = lerp( Blend_Albedo_Colored863_g77006 , Global_OverlayColor1758_g77006 , Overlay_Mask269_g77006);
				half3 Blend_Albedo_Overlay359_g77006 = lerpResult336_g77006;
				half Global_WetnessContrast6502_g77006 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g77006 = break456_g77036.y;
				half Wetness_Value6343_g77006 = ( Global_Extras_Wetness305_g77006 * _GlobalWetness );
				float3 lerpResult6367_g77006 = lerp( Blend_Albedo_Overlay359_g77006 , ( Blend_Albedo_Overlay359_g77006 * Blend_Albedo_Overlay359_g77006 ) , ( Global_WetnessContrast6502_g77006 * Wetness_Value6343_g77006 ));
				half3 Blend_Albedo_Wetness6351_g77006 = lerpResult6367_g77006;
				float vertexToFrag11_g77047 = IN.ase_texcoord9.z;
				half3 Tint_Highlight_Color5771_g77006 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g77047 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g77006 = ( Blend_Albedo_Wetness6351_g77006 * Tint_Highlight_Color5771_g77006 );
				half3 Subsurface_Color1722_g77006 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g77006 );
				half Global_Subsurface4041_g77006 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g77006 = TVE_OverlaySubsurface;
				float lerpResult7362_g77006 = lerp( 1.0 , Global_OverlaySubsurface5667_g77006 , Overlay_Value5738_g77006);
				half Overlay_Subsurface7361_g77006 = lerpResult7362_g77006;
				half Subsurface_Intensity1752_g77006 = ( _SubsurfaceValue * Global_Subsurface4041_g77006 * Overlay_Subsurface7361_g77006 );
				float lerpResult7680_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g77006 = lerpResult7680_g77006;
				half3 MainLight_Direction3926_g77006 = TVE_MainLightDirection;
				float3 normalizeResult2169_g77006 = normalize( worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float dotResult785_g77006 = dot( -MainLight_Direction3926_g77006 , ViewDirection3963_g77006 );
				float saferPower1624_g77006 = abs( saturate( dotResult785_g77006 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g77006 = 0.0;
				#else
				float staticSwitch1602_g77006 = ( pow( saferPower1624_g77006 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View782_g77006 = staticSwitch1602_g77006;
				half3 Subsurface_Approximation1693_g77006 = ( Subsurface_Color1722_g77006 * Subsurface_Intensity1752_g77006 * Subsurface_Mask1557_g77006 * Mask_Subsurface_View782_g77006 );
				half3 Blend_Albedo_Subsurface149_g77006 = ( temp_output_6309_0_g77006 + Subsurface_Approximation1693_g77006 );
				half3 Blend_Albedo_RimLight7316_g77006 = Blend_Albedo_Subsurface149_g77006;
				
				half Global_OverlayNormalScale6581_g77006 = TVE_OverlayNormalValue;
				float lerpResult6585_g77006 = lerp( 1.0 , Global_OverlayNormalScale6581_g77006 , Overlay_Mask269_g77006);
				half2 Blend_Normal_Overlay366_g77006 = ( Blend_Normal312_g77006 * lerpResult6585_g77006 );
				half Global_WetnessNormalScale6571_g77006 = TVE_WetnessNormalValue;
				float lerpResult6579_g77006 = lerp( 1.0 , Global_WetnessNormalScale6571_g77006 , ( Wetness_Value6343_g77006 * Wetness_Value6343_g77006 ));
				half2 Blend_Normal_Wetness6372_g77006 = ( Blend_Normal_Overlay366_g77006 * lerpResult6579_g77006 );
				float3 appendResult6568_g77006 = (float3(Blend_Normal_Wetness6372_g77006 , 1.0));
				float3 temp_output_13_0_g77037 = appendResult6568_g77006;
				float3 temp_output_33_0_g77037 = ( temp_output_13_0_g77037 * _render_normals );
				float3 switchResult12_g77037 = (((ase_vface>0)?(temp_output_13_0_g77037):(temp_output_33_0_g77037)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g77006 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g77006 = temp_output_7161_0_g77006;
				half2 Emissive_UVs2468_g77006 = ( ( IN.ase_texcoord8.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77127 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77127).xxx;
				float temp_output_10_0_g77127 = ( _EmissiveTexMaxValue - temp_output_7_0_g77127 );
				half3 Emissive_Texture7022_g77006 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g77006 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77127 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g77006 = break456_g77036.x;
				float lerpResult4206_g77006 = lerp( 1.0 , Global_Extras_Emissive4203_g77006 , _GlobalEmissive);
				half Emissive_Value7024_g77006 = ( ( lerpResult4206_g77006 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g77006 = saturate( ( Emissive_Texture7022_g77006 + Emissive_Value7024_g77006 ) );
				float3 temp_output_3_0_g77129 = ( Emissive_Color7162_g77006 * Emissive_Mask6968_g77006 );
				float temp_output_15_0_g77129 = _emissive_intensity_value;
				float3 temp_output_23_0_g77129 = ( temp_output_3_0_g77129 * temp_output_15_0_g77129 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g77006 = temp_output_23_0_g77129;
				#else
				float3 staticSwitch7687_g77006 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g77006 = staticSwitch7687_g77006;
				
				half Render_Specular4861_g77006 = _RenderSpecular;
				float3 temp_cast_13 = (( 0.04 * Render_Specular4861_g77006 )).xxx;
				
				float lerpResult240_g77006 = lerp( 1.0 , tex2DNode35_g77006.g , _MainOcclusionValue);
				half Main_Occlusion247_g77006 = lerpResult240_g77006;
				float lerpResult239_g77006 = lerp( 1.0 , tex2DNode33_g77006.g , _SecondOcclusionValue);
				half Second_Occlusion251_g77006 = lerpResult239_g77006;
				float lerpResult294_g77006 = lerp( Main_Occlusion247_g77006 , Second_Occlusion251_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch310_g77006 = lerpResult294_g77006;
				#else
				float staticSwitch310_g77006 = Main_Occlusion247_g77006;
				#endif
				half Blend_Occlusion323_g77006 = staticSwitch310_g77006;
				
				half Main_Smoothness227_g77006 = ( tex2DNode35_g77006.a * _MainSmoothnessValue );
				half Second_Smoothness236_g77006 = ( tex2DNode33_g77006.a * _SecondSmoothnessValue );
				float lerpResult266_g77006 = lerp( Main_Smoothness227_g77006 , Second_Smoothness236_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch297_g77006 = lerpResult266_g77006;
				#else
				float staticSwitch297_g77006 = Main_Smoothness227_g77006;
				#endif
				half Blend_Smoothness314_g77006 = staticSwitch297_g77006;
				half Global_OverlaySmoothness311_g77006 = TVE_OverlaySmoothness;
				float lerpResult343_g77006 = lerp( Blend_Smoothness314_g77006 , Global_OverlaySmoothness311_g77006 , Overlay_Mask269_g77006);
				half Blend_Smoothness_Overlay371_g77006 = lerpResult343_g77006;
				float temp_output_6499_0_g77006 = ( 1.0 - Wetness_Value6343_g77006 );
				half Blend_Smoothness_Wetness4130_g77006 = saturate( ( Blend_Smoothness_Overlay371_g77006 + ( 1.0 - ( temp_output_6499_0_g77006 * temp_output_6499_0_g77006 ) ) ) );
				
				float localCustomAlphaClip19_g77109 = ( 0.0 );
				half Main_Alpha316_g77006 = tex2DNode29_g77006.a;
				half Second_Alpha5007_g77006 = tex2DNode89_g77006.a;
				float lerpResult6153_g77006 = lerp( Main_Alpha316_g77006 , Second_Alpha5007_g77006 , Blend_Mask147_g77006);
				float lerpResult6785_g77006 = lerp( ( Main_Alpha316_g77006 * Second_Alpha5007_g77006 ) , lerpResult6153_g77006 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g77006 = lerpResult6785_g77006;
				#else
				float staticSwitch6158_g77006 = Main_Alpha316_g77006;
				#endif
				half Blend_Alpha6157_g77006 = staticSwitch6158_g77006;
				half AlphaTreshold2132_g77006 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g77006 = saturate( break456_g77036.w );
				float lerpResult5154_g77006 = lerp( 0.0 , Global_MeshVariation5104_g77006 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g77006 = lerpResult5154_g77006;
				float Emissive_Alpha7625_g77006 = 0.0;
				float lerpResult6866_g77006 = lerp( ( 1.0 - Blend_Mask147_g77006 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g77006 = lerpResult6866_g77006;
				#else
				float staticSwitch6612_g77006 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g77006 = staticSwitch6612_g77006;
				half Alpha_Mask6234_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5203_g77006 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g77006 - saturate( ( Global_Alpha_Variation5158_g77006 + Emissive_Alpha7625_g77006 ) ) ) + ( Global_Extras_Alpha1033_g77006 * 0.1 ) ) ) , ( Alpha_Mask6234_g77006 * _GlobalAlpha ));
				float lerpResult16_g77050 = lerp( 1.0 , lerpResult5203_g77006 , TVE_IsEnabled);
				half Global_Alpha315_g77006 = lerpResult16_g77050;
				float3 normalizeResult3971_g77006 = normalize( cross( ddy( worldPos ) , ddx( worldPos ) ) );
				float3 WorldNormal_Derivates3972_g77006 = normalizeResult3971_g77006;
				float dotResult3851_g77006 = dot( ViewDirection3963_g77006 , WorldNormal_Derivates3972_g77006 );
				float lerpResult3993_g77006 = lerp( 1.0 , saturate( ( abs( dotResult3851_g77006 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g77006 = lerpResult3993_g77006;
				half Fade_Effects_A5360_g77006 = Fade_Glancing3853_g77006;
				float temp_output_7_0_g77059 = TVE_CameraFadeMin;
				float temp_output_10_0_g77059 = ( TVE_CameraFadeMax - temp_output_7_0_g77059 );
				float lerpResult4755_g77006 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77059 ) / ( temp_output_10_0_g77059 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g77006 = lerpResult4755_g77006;
				half Fade_Effects_B6228_g77006 = ( Fade_Effects_A5360_g77006 * Fade_Camera3743_g77006 );
				half Fade_Mask5149_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5141_g77006 = lerp( 1.0 , ( Fade_Effects_B6228_g77006 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g77006);
				half Fade_Effects_C7653_g77006 = lerpResult5141_g77006;
				float temp_output_5865_0_g77006 = saturate( ( Fade_Effects_C7653_g77006 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g77006 ) ).r ) );
				half Fade_Alpha3727_g77006 = temp_output_5865_0_g77006;
				half Final_Alpha7344_g77006 = min( ( ( Blend_Alpha6157_g77006 - AlphaTreshold2132_g77006 ) * Global_Alpha315_g77006 ) , Fade_Alpha3727_g77006 );
				float temp_output_3_0_g77109 = Final_Alpha7344_g77006;
				float Alpha19_g77109 = temp_output_3_0_g77109;
				float temp_output_15_0_g77109 = 0.01;
				float Treshold19_g77109 = temp_output_15_0_g77109;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#else
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g77006 = (lerpResult7654_g77006).a;
				half Second_Color_Alpha6152_g77006 = (lerpResult7662_g77006).a;
				float lerpResult6168_g77006 = lerp( Main_Color_Alpha6121_g77006 , Second_Color_Alpha6152_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g77006 = lerpResult6168_g77006;
				#else
				float staticSwitch6174_g77006 = Main_Color_Alpha6121_g77006;
				#endif
				half Blend_Color_Alpha6167_g77006 = staticSwitch6174_g77006;
				half Final_Clip914_g77006 = saturate( ( Alpha19_g77109 * Blend_Color_Alpha6167_g77006 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g77006;
				o.Normal = switchResult12_g77037;
				o.Emission = Final_Emissive2476_g77006;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_13;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion323_g77006;
					o.Smoothness = Blend_Smoothness_Wetness4130_g77006;
				#endif

				o.Alpha = Final_Clip914_g77006;
				float AlphaClipThreshold = 0.5;
				float3 BakedGI = 0;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = 0;
				gi.light.dir = half3(0,1,0);

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = worldPos;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						LightingBlinnPhong_GI(o, giInput, gi);
					#else
						LightingLambert_GI(o, giInput, gi);
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						LightingStandardSpecular_GI(o, giInput, gi);
					#else
						LightingStandard_GI(o, giInput, gi);
					#endif
				#endif

				#ifdef ASE_BAKEDGI
					gi.indirect.diffuse = BakedGI;
				#endif

				#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
					gi.indirect.diffuse = 0;
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					#if defined(_SPECULAR_SETUP)
						outEmission = LightingBlinnPhong_Deferred( o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
					#else
						outEmission = LightingLambert_Deferred( o, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
					#endif
				#else
					#if defined(_SPECULAR_SETUP)
						outEmission = LightingStandardSpecular_Deferred( o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
					#else
						outEmission = LightingStandard_Deferred( o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
					#endif
				#endif

				#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
					outShadowMask = UnityGetRawBakedOcclusions (IN.lmap.xy, float3(0, 0, 0));
				#endif
				#ifndef UNITY_HDR_ON
					outEmission.rgb = exp2(-outEmission.rgb);
				#endif
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }
			Cull Off

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma shader_feature EDITOR_VISUALIZATION
			#ifndef UNITY_PASS_META
				#define UNITY_PASS_META
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityMetaPass.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float2 vizUV : TEXCOORD1;
					float4 lightCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_cull;
			uniform half _render_coverage;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _IsStandardShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderCull;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _SpaceGlobalLocals;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half4 _RimLightRemap;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsCoreShader;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half4 _DetailMaskRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailBlendRemap;
			uniform half4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform half _Cutoff;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MotionValue_30;
			uniform half _MotionValue_20;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half _MessageSubsurface;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceSubsurface;
			uniform half _SpaceMotionGlobals;
			uniform half _CategoryDetail;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _RenderZWrite;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderClip;
			uniform half _RenderCoverage;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMaskInvertMode;
			uniform half _DetailMeshInvertMode;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half _MessageOcclusion;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half4 _EmissiveTexRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;
			uniform half _DetailBlendMode;
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMinValue;
			uniform half _GradientMaxValue;
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _ColorsPositionMode;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _ColorsVariationValue;
			uniform half _VertexOcclusionColorsMode;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _OverlayVariationValue;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
			uniform half4 _MotionHighlightColor;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;
			uniform half3 TVE_MainLightDirection;
			uniform half4 _EmissiveColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
			uniform half4 _EmissiveUVs;
			uniform half _EmissiveTexMinValue;
			uniform half _EmissiveTexMaxValue;
			uniform half _GlobalEmissive;
			uniform half _EmissivePhaseValue;
			uniform float _emissive_intensity_value;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half _FadeGlancingValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g77006 = v.vertex.xyz;
				float3 appendResult60_g77016 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g77006 = ( appendResult60_g77016 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g77006 = Mesh_PivotsData2831_g77006;
				float3 temp_output_2283_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				half3 VertexPos40_g77087 = temp_output_2283_0_g77006;
				half3 VertexPos40_g77088 = VertexPos40_g77087;
				float3 appendResult74_g77088 = (float3(VertexPos40_g77088.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g77088 = appendResult74_g77088;
				float3 break84_g77088 = VertexPos40_g77088;
				float3 appendResult81_g77088 = (float3(0.0 , break84_g77088.y , break84_g77088.z));
				half3 VertexPosOtherAxis82_g77088 = appendResult81_g77088;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g77006 = ase_worldPos;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 WorldPosition_Shifted7477_g77006 = ( WorldPosition3905_g77006 - TVE_WorldOrigin );
				float4x4 break19_g77062 = unity_ObjectToWorld;
				float3 appendResult20_g77062 = (float3(break19_g77062[ 0 ][ 3 ] , break19_g77062[ 1 ][ 3 ] , break19_g77062[ 2 ][ 3 ]));
				float3 temp_output_122_0_g77062 = Mesh_PivotsData2831_g77006;
				float3 PivotsOnly105_g77062 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g77062 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g77064 = ( appendResult20_g77062 + PivotsOnly105_g77062 );
				half3 WorldData19_g77064 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77064 = WorldData19_g77064;
				#else
				float3 staticSwitch14_g77064 = ObjectData20_g77064;
				#endif
				float3 temp_output_114_0_g77062 = staticSwitch14_g77064;
				float3 vertexToFrag4224_g77006 = temp_output_114_0_g77062;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				float3 lerpResult6766_g77006 = lerp( WorldPosition_Shifted7477_g77006 , ObjectPosition_Shifted7481_g77006 , _MotionPosition_10);
				float3 Motion_10_Position6738_g77006 = lerpResult6766_g77006;
				half3 Input_Position419_g77102 = Motion_10_Position6738_g77006;
				float Input_MotionScale287_g77102 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77102 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77102 = (( Input_Position419_g77102 * Input_MotionScale287_g77102 * NoiseTex_Tilling735_g77102 * 0.0075 )).xz;
				float2 temp_output_447_0_g77011 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g77006 = temp_output_447_0_g77011;
				half2 Input_DirectionWS423_g77102 = Global_Wind_DirectionWS4683_g77006;
				float lerpResult128_g77103 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77102 = _MotionSpeed_10;
				half Input_MotionVariation284_g77102 = _MotionVariation_10;
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = v.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				half Input_GlobalMeshVariation569_g77102 = Global_MeshVariation5104_g77006;
				float temp_output_630_0_g77102 = ( ( ( lerpResult128_g77103 * Input_MotionSpeed62_g77102 ) + ( Input_MotionVariation284_g77102 * Input_GlobalMeshVariation569_g77102 ) ) * 0.03 );
				float temp_output_607_0_g77102 = frac( temp_output_630_0_g77102 );
				float4 lerpResult590_g77102 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * temp_output_607_0_g77102 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * frac( ( temp_output_630_0_g77102 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77102 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77102 = lerpResult590_g77102;
				float2 temp_output_645_0_g77102 = ((Noise_Complex703_g77102).rg*2.0 + -1.0);
				float2 break650_g77102 = temp_output_645_0_g77102;
				float3 appendResult649_g77102 = (float3(break650_g77102.x , 0.0 , break650_g77102.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g77006 = (( mul( unity_WorldToObject, float4( appendResult649_g77102 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g77093 = Global_Noise_OS5548_g77006;
				float2 break448_g77011 = temp_output_447_0_g77011;
				float3 appendResult452_g77011 = (float3(break448_g77011.x , 0.0 , break448_g77011.y));
				half2 Global_Wind_DirectionOS5692_g77006 = (( mul( unity_WorldToObject, float4( appendResult452_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g77093 = Global_Wind_DirectionOS5692_g77006;
				float temp_output_84_0_g77017 = _LayerMotionValue;
				float temp_output_19_0_g77021 = TVE_MotionUsage[(int)temp_output_84_0_g77017];
				float4 temp_output_91_19_g77017 = TVE_MotionCoords;
				half2 UV94_g77017 = ( (temp_output_91_19_g77017).zw + ( (temp_output_91_19_g77017).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77017 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g77017,temp_output_84_0_g77017), 0.0 );
				float4 temp_output_17_0_g77021 = tex2DArrayNode50_g77017;
				float4 temp_output_112_19_g77017 = TVE_MotionParams;
				float4 temp_output_3_0_g77021 = temp_output_112_19_g77017;
				float4 ifLocalVar18_g77021 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77021 >= 0.5 )
				ifLocalVar18_g77021 = temp_output_17_0_g77021;
				else
				ifLocalVar18_g77021 = temp_output_3_0_g77021;
				float4 lerpResult22_g77021 = lerp( temp_output_3_0_g77021 , temp_output_17_0_g77021 , temp_output_19_0_g77021);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77021 = lerpResult22_g77021;
				#else
				float4 staticSwitch24_g77021 = ifLocalVar18_g77021;
				#endif
				half4 Global_Motion_Params3909_g77006 = staticSwitch24_g77021;
				float4 break322_g77011 = Global_Motion_Params3909_g77006;
				float lerpResult457_g77011 = lerp( break322_g77011.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g77011 = ( 1.0 - lerpResult457_g77011 );
				half Global_Wind_Power2223_g77006 = ( 1.0 - ( temp_output_459_0_g77011 * temp_output_459_0_g77011 ) );
				half Input_WindPower449_g77093 = Global_Wind_Power2223_g77006;
				float2 lerpResult516_g77093 = lerp( Input_Noise_DirectionOS487_g77093 , Input_Wind_DirectionOS458_g77093 , ( Input_WindPower449_g77093 * 0.6 ));
				half Mesh_Motion_107572_g77006 = v.ase_color.a;
				half Input_MeshHeight388_g77093 = Mesh_Motion_107572_g77006;
				half ObjectData20_g77094 = Input_MeshHeight388_g77093;
				float enc62_g77121 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77121 = DecodeFloatToVector2( enc62_g77121 );
				float2 break63_g77121 = ( localDecodeFloatToVector262_g77121 * 100.0 );
				float Bounds_Height5230_g77006 = break63_g77121.x;
				half Input_BoundsHeight390_g77093 = Bounds_Height5230_g77006;
				half WorldData19_g77094 = ( Input_MeshHeight388_g77093 * Input_MeshHeight388_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77094 = WorldData19_g77094;
				#else
				float staticSwitch14_g77094 = ObjectData20_g77094;
				#endif
				half Final_Motion10_Mask321_g77093 = ( staticSwitch14_g77094 * 2.0 );
				half Input_BendingAmplitude376_g77093 = _MotionAmplitude_10;
				half Global_MotionValue640_g77093 = TVE_MotionValue_10;
				half2 Final_Bending631_g77093 = ( lerpResult516_g77093 * ( Final_Motion10_Mask321_g77093 * Input_BendingAmplitude376_g77093 * Input_WindPower449_g77093 * Input_WindPower449_g77093 * Global_MotionValue640_g77093 ) );
				float2 appendResult433_g77011 = (float2(break322_g77011.x , break322_g77011.y));
				float2 temp_output_436_0_g77011 = (appendResult433_g77011*2.0 + -1.0);
				float2 break441_g77011 = temp_output_436_0_g77011;
				float3 appendResult440_g77011 = (float3(break441_g77011.x , 0.0 , break441_g77011.y));
				half2 Global_React_DirectionOS39_g77006 = (( mul( unity_WorldToObject, float4( appendResult440_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g77093 = Global_React_DirectionOS39_g77006;
				float clampResult17_g77096 = clamp( Input_MeshHeight388_g77093 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77095 = 0.0;
				half Input_InteractionUseMask62_g77093 = _InteractionMaskValue;
				float temp_output_10_0_g77095 = ( Input_InteractionUseMask62_g77093 - temp_output_7_0_g77095 );
				half Final_InteractionRemap594_g77093 = saturate( ( ( clampResult17_g77096 - temp_output_7_0_g77095 ) / ( temp_output_10_0_g77095 + 0.0001 ) ) );
				half ObjectData20_g77097 = Final_InteractionRemap594_g77093;
				half WorldData19_g77097 = ( Final_InteractionRemap594_g77093 * Final_InteractionRemap594_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77097 = WorldData19_g77097;
				#else
				float staticSwitch14_g77097 = ObjectData20_g77097;
				#endif
				half Final_InteractionMask373_g77093 = ( staticSwitch14_g77097 * 2.0 );
				half Input_InteractionAmplitude58_g77093 = _InteractionAmplitude;
				half2 Final_Interaction632_g77093 = ( Input_React_DirectionOS358_g77093 * Final_InteractionMask373_g77093 * Input_InteractionAmplitude58_g77093 );
				half Global_Interaction_Mask66_g77006 = ( break322_g77011.w * break322_g77011.w * break322_g77011.w * break322_g77011.w );
				float Input_InteractionGlobalMask330_g77093 = Global_Interaction_Mask66_g77006;
				half Final_InteractionValue525_g77093 = saturate( ( Input_InteractionAmplitude58_g77093 * Input_InteractionGlobalMask330_g77093 ) );
				float2 lerpResult551_g77093 = lerp( Final_Bending631_g77093 , Final_Interaction632_g77093 , Final_InteractionValue525_g77093);
				float2 break364_g77093 = lerpResult551_g77093;
				float3 appendResult638_g77093 = (float3(break364_g77093.x , 0.0 , break364_g77093.y));
				half3 Motion_10_Interaction7519_g77006 = appendResult638_g77093;
				half3 Angle44_g77087 = Motion_10_Interaction7519_g77006;
				half Angle44_g77088 = (Angle44_g77087).z;
				half3 VertexPos40_g77089 = ( VertexPosRotationAxis50_g77088 + ( VertexPosOtherAxis82_g77088 * cos( Angle44_g77088 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g77088 ) * sin( Angle44_g77088 ) ) );
				float3 appendResult74_g77089 = (float3(0.0 , 0.0 , VertexPos40_g77089.z));
				half3 VertexPosRotationAxis50_g77089 = appendResult74_g77089;
				float3 break84_g77089 = VertexPos40_g77089;
				float3 appendResult81_g77089 = (float3(break84_g77089.x , break84_g77089.y , 0.0));
				half3 VertexPosOtherAxis82_g77089 = appendResult81_g77089;
				half Angle44_g77089 = -(Angle44_g77087).x;
				half3 Input_Position419_g77117 = WorldPosition_Shifted7477_g77006;
				float3 break459_g77117 = Input_Position419_g77117;
				float Sum_Position446_g77117 = ( break459_g77117.x + break459_g77117.y + break459_g77117.z );
				half Input_MotionScale321_g77117 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77117 = _MotionVariation_20;
				half Input_GlobalVariation400_g77117 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77118 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77117 = _MotionSpeed_20;
				float temp_output_404_0_g77117 = ( lerpResult128_g77118 * Input_MotionSpeed62_g77117 );
				half Motion_SineA450_g77117 = sin( ( ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) + ( Input_MotionVariation330_g77117 * Input_GlobalVariation400_g77117 ) + temp_output_404_0_g77117 ) );
				half Motion_SineB395_g77117 = sin( ( ( temp_output_404_0_g77117 * 0.6842 ) + ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) ) );
				half3 Input_Position419_g77130 = VertexPosition3588_g77006;
				float3 normalizeResult518_g77130 = normalize( Input_Position419_g77130 );
				half2 Input_DirectionOS423_g77130 = Global_React_DirectionOS39_g77006;
				float2 break521_g77130 = -Input_DirectionOS423_g77130;
				float3 appendResult522_g77130 = (float3(break521_g77130.x , 0.0 , break521_g77130.y));
				float dotResult519_g77130 = dot( normalizeResult518_g77130 , appendResult522_g77130 );
				half Input_Value62_g77130 = _MotionFacingValue;
				float lerpResult524_g77130 = lerp( 1.0 , (dotResult519_g77130*0.5 + 0.5) , Input_Value62_g77130);
				half ObjectData20_g77131 = max( lerpResult524_g77130 , 0.001 );
				half WorldData19_g77131 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77131 = WorldData19_g77131;
				#else
				float staticSwitch14_g77131 = ObjectData20_g77131;
				#endif
				half Motion_FacingMask5214_g77006 = staticSwitch14_g77131;
				half Motion_20_Amplitude4381_g77006 = Motion_FacingMask5214_g77006;
				half Input_MotionAmplitude384_g77117 = Motion_20_Amplitude4381_g77006;
				half Input_GlobalWind407_g77117 = Global_Wind_Power2223_g77006;
				float4 break638_g77102 = abs( Noise_Complex703_g77102 );
				half Global_Noise_B5526_g77006 = break638_g77102.b;
				half Input_GlobalNoise411_g77117 = Global_Noise_B5526_g77006;
				float lerpResult413_g77117 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77117);
				half Motion_Amplitude418_g77117 = ( Input_MotionAmplitude384_g77117 * Input_GlobalWind407_g77117 * pow( Input_GlobalNoise411_g77117 , lerpResult413_g77117 ) );
				half Input_Squash58_g77117 = _MotionAmplitude_20;
				float enc59_g77121 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77121 = DecodeFloatToVector2( enc59_g77121 );
				float2 break61_g77121 = localDecodeFloatToVector259_g77121;
				half Mesh_Motion_2060_g77006 = break61_g77121.x;
				half Input_MeshMotion_20388_g77117 = Mesh_Motion_2060_g77006;
				float Bounds_Radius5231_g77006 = break63_g77121.y;
				half Input_BoundsRadius390_g77117 = Bounds_Radius5231_g77006;
				half Global_MotionValue462_g77117 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77117 = Global_React_DirectionOS39_g77006;
				float2 break371_g77117 = Input_DirectionOS366_g77117;
				float3 appendResult372_g77117 = (float3(break371_g77117.x , ( Motion_SineA450_g77117 * 0.3 ) , break371_g77117.y));
				half3 Motion_20_Squash4418_g77006 = ( ( (max( Motion_SineA450_g77117 , Motion_SineB395_g77117 )*0.5 + 0.5) * Motion_Amplitude418_g77117 * Input_Squash58_g77117 * Input_MeshMotion_20388_g77117 * Input_BoundsRadius390_g77117 * Global_MotionValue462_g77117 ) * appendResult372_g77117 );
				half3 VertexPos40_g77080 = ( ( VertexPosRotationAxis50_g77089 + ( VertexPosOtherAxis82_g77089 * cos( Angle44_g77089 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g77089 ) * sin( Angle44_g77089 ) ) ) + Motion_20_Squash4418_g77006 );
				float3 appendResult74_g77080 = (float3(0.0 , VertexPos40_g77080.y , 0.0));
				float3 VertexPosRotationAxis50_g77080 = appendResult74_g77080;
				float3 break84_g77080 = VertexPos40_g77080;
				float3 appendResult81_g77080 = (float3(break84_g77080.x , 0.0 , break84_g77080.z));
				float3 VertexPosOtherAxis82_g77080 = appendResult81_g77080;
				half Input_Rolling379_g77117 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g77006 = ( Motion_SineA450_g77117 * Motion_Amplitude418_g77117 * Input_Rolling379_g77117 * Input_MeshMotion_20388_g77117 * Global_MotionValue462_g77117 );
				half Angle44_g77080 = Motion_20_Rolling5257_g77006;
				half3 Input_Position500_g77098 = WorldPosition_Shifted7477_g77006;
				half Input_MotionScale321_g77098 = _MotionScale_32;
				half Input_MotionVariation330_g77098 = _MotionVariation_32;
				half Input_GlobalVariation372_g77098 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77099 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77098 = _MotionSpeed_32;
				float4 tex2DNode460_g77098 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77098).xz * Input_MotionScale321_g77098 * 0.03 ) + ( Input_MotionVariation330_g77098 * Input_GlobalVariation372_g77098 ) + ( lerpResult128_g77099 * Input_MotionSpeed62_g77098 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77098 = (float3(tex2DNode460_g77098.r , tex2DNode460_g77098.g , tex2DNode460_g77098.b));
				half3 Flutter_Texture489_g77098 = (appendResult462_g77098*2.0 + -1.0);
				float temp_output_7_0_g77056 = TVE_MotionFadeEnd;
				float temp_output_10_0_g77056 = ( TVE_MotionFadeStart - temp_output_7_0_g77056 );
				half Motion_FadeOut4005_g77006 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77056 ) / ( temp_output_10_0_g77056 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g77006 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g77006 * Motion_FadeOut4005_g77006 );
				half Input_MotionAmplitude58_g77098 = Motion_30_Amplitude4960_g77006;
				half Mesh_Motion_30144_g77006 = break61_g77121.y;
				half Input_MeshMotion_30374_g77098 = Mesh_Motion_30144_g77006;
				half Input_GlobalWind471_g77098 = Global_Wind_Power2223_g77006;
				half Global_MotionValue503_g77098 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77098 = Global_Noise_B5526_g77006;
				float lerpResult466_g77098 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77098);
				half Flutter_Amplitude491_g77098 = ( Input_MotionAmplitude58_g77098 * Input_MeshMotion_30374_g77098 * Input_GlobalWind471_g77098 * Global_MotionValue503_g77098 * pow( Input_GlobalNoise472_g77098 , lerpResult466_g77098 ) );
				half3 Motion_30_Flutter263_g77006 = ( Flutter_Texture489_g77098 * Flutter_Amplitude491_g77098 );
				float3 Vertex_Motion_Object833_g77006 = ( ( VertexPosRotationAxis50_g77080 + ( VertexPosOtherAxis82_g77080 * cos( Angle44_g77080 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g77080 ) * sin( Angle44_g77080 ) ) ) + Motion_30_Flutter263_g77006 );
				half3 ObjectData20_g77074 = Vertex_Motion_Object833_g77006;
				float3 temp_output_3474_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				float3 Vertex_Motion_World1118_g77006 = ( ( ( temp_output_3474_0_g77006 + Motion_10_Interaction7519_g77006 ) + Motion_20_Squash4418_g77006 ) + Motion_30_Flutter263_g77006 );
				half3 WorldData19_g77074 = Vertex_Motion_World1118_g77006;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77074 = WorldData19_g77074;
				#else
				float3 staticSwitch14_g77074 = ObjectData20_g77074;
				#endif
				float3 temp_output_7495_0_g77006 = staticSwitch14_g77074;
				float3 Vertex_Motion7493_g77006 = temp_output_7495_0_g77006;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 break2709_g77006 = cross( ViewDirection3963_g77006 , half3(0,1,0) );
				float3 appendResult2710_g77006 = (float3(-break2709_g77006.z , 0.0 , break2709_g77006.x));
				float3 appendResult2667_g77006 = (float3(Global_MeshVariation5104_g77006 , 0.5 , Global_MeshVariation5104_g77006));
				half Mesh_Height1524_g77006 = v.ase_color.a;
				float dotResult2212_g77006 = dot( ViewDirection3963_g77006 , float3(0,1,0) );
				half Mask_HView2656_g77006 = dotResult2212_g77006;
				float saferPower2652_g77006 = abs( Mask_HView2656_g77006 );
				half3 Grass_Perspective2661_g77006 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g77006 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g77006*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g77006 * pow( saferPower2652_g77006 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g77038 = _LayerVertexValue;
				float temp_output_19_0_g77042 = TVE_VertexUsage[(int)temp_output_84_0_g77038];
				float4 temp_output_94_19_g77038 = TVE_VertexCoords;
				half2 UV97_g77038 = ( (temp_output_94_19_g77038).zw + ( (temp_output_94_19_g77038).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77038 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g77038,temp_output_84_0_g77038), 0.0 );
				float4 temp_output_17_0_g77042 = tex2DArrayNode50_g77038;
				float4 temp_output_111_19_g77038 = TVE_VertexParams;
				float4 temp_output_3_0_g77042 = temp_output_111_19_g77038;
				float4 ifLocalVar18_g77042 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77042 >= 0.5 )
				ifLocalVar18_g77042 = temp_output_17_0_g77042;
				else
				ifLocalVar18_g77042 = temp_output_3_0_g77042;
				float4 lerpResult22_g77042 = lerp( temp_output_3_0_g77042 , temp_output_17_0_g77042 , temp_output_19_0_g77042);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77042 = lerpResult22_g77042;
				#else
				float4 staticSwitch24_g77042 = ifLocalVar18_g77042;
				#endif
				half4 Global_Vertex_Params4173_g77006 = staticSwitch24_g77042;
				float4 break322_g77043 = Global_Vertex_Params4173_g77006;
				half Global_VertexSize174_g77006 = saturate( break322_g77043.w );
				float lerpResult346_g77006 = lerp( 1.0 , Global_VertexSize174_g77006 , _GlobalSize);
				float3 appendResult3480_g77006 = (float3(lerpResult346_g77006 , lerpResult346_g77006 , lerpResult346_g77006));
				half3 ObjectData20_g77071 = appendResult3480_g77006;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g77071 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77071 = WorldData19_g77071;
				#else
				float3 staticSwitch14_g77071 = ObjectData20_g77071;
				#endif
				half3 Vertex_Size1741_g77006 = staticSwitch14_g77071;
				float temp_output_7_0_g77072 = _SizeFadeEndValue;
				float temp_output_10_0_g77072 = ( _SizeFadeStartValue - temp_output_7_0_g77072 );
				float temp_output_7453_0_g77006 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g77006 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g77072 ) / ( temp_output_10_0_g77072 + 0.0001 ) ) );
				float3 appendResult3482_g77006 = (float3(temp_output_7453_0_g77006 , temp_output_7453_0_g77006 , temp_output_7453_0_g77006));
				half3 ObjectData20_g77070 = appendResult3482_g77006;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g77070 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77070 = WorldData19_g77070;
				#else
				float3 staticSwitch14_g77070 = ObjectData20_g77070;
				#endif
				float3 Vertex_SizeFade1740_g77006 = staticSwitch14_g77070;
				float3 lerpResult16_g77075 = lerp( VertexPosition3588_g77006 , ( ( ( Vertex_Motion7493_g77006 + Grass_Perspective2661_g77006 ) * Vertex_Size1741_g77006 * Vertex_SizeFade1740_g77006 ) + Mesh_PivotsOS2291_g77006 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g77006 = lerpResult16_g77075;
				float3 Final_VertexPosition890_g77006 = ( temp_output_4912_0_g77006 + _DisableSRPBatcher );
				
				float4 break33_g77126 = _second_uvs_mode;
				float2 temp_output_30_0_g77126 = ( v.ase_texcoord.xy * break33_g77126.x );
				float2 appendResult21_g77121 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g77006 = appendResult21_g77121;
				float2 temp_output_29_0_g77126 = ( Mesh_DetailCoord3_g77006 * break33_g77126.y );
				float2 temp_output_31_0_g77126 = ( (WorldPosition_Shifted7477_g77006).xz * break33_g77126.z );
				half2 Second_UVs_Tilling7609_g77006 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g77006 = ( 1.0 / Second_UVs_Tilling7609_g77006 );
				float2 lerpResult7614_g77006 = lerp( Second_UVs_Tilling7609_g77006 , Second_UVs_Scale7610_g77006 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g77006 = (_SecondUVs).zw;
				float2 vertexToFrag11_g77032 = ( ( ( temp_output_30_0_g77126 + temp_output_29_0_g77126 + temp_output_31_0_g77126 ) * lerpResult7614_g77006 ) + Second_UVs_Offset7605_g77006 );
				o.ase_texcoord4.xy = vertexToFrag11_g77032;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				o.ase_texcoord8.xyz = vertexToFrag3890_g77006;
				o.ase_texcoord9.xyz = vertexToFrag4224_g77006;
				half Global_Noise_A4860_g77006 = break638_g77102.a;
				half Tint_Highlight_Value3231_g77006 = ( Global_Noise_A4860_g77006 * Global_Wind_Power2223_g77006 * Motion_FadeOut4005_g77006 * Mesh_Height1524_g77006 );
				float vertexToFrag11_g77047 = Tint_Highlight_Value3231_g77006;
				o.ase_texcoord4.z = vertexToFrag11_g77047;
				o.ase_texcoord10.xyz = ase_worldPos;
				
				o.ase_texcoord3 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				o.ase_texcoord9.w = 0;
				o.ase_texcoord10.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g77006;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				#ifdef EDITOR_VISUALIZATION
					o.vizUV = 0;
					o.lightCoord = 0;
					if (unity_VisualizationMode == EDITORVIZ_TEXTURE)
						o.vizUV = UnityMetaVizUV(unity_EditorViz_UVIndex, v.texcoord.xy, v.texcoord1.xy, v.texcoord2.xy, unity_EditorViz_Texture_ST);
					else if (unity_VisualizationMode == EDITORVIZ_SHOWLIGHTMASK)
					{
						o.vizUV = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
						o.lightCoord = mul(unity_EditorViz_WorldToLight, mul(unity_ObjectToWorld, float4(v.vertex.xyz, 1)));
					}
				#endif

				o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				half2 Main_UVs15_g77006 = ( ( IN.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g77006 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g77006 );
				float3 lerpResult6223_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode29_g77006).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g77006 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				half Main_Mask57_g77006 = tex2DNode35_g77006.b;
				float clampResult17_g77111 = clamp( Main_Mask57_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77112 = _MainMaskMinValue;
				float temp_output_10_0_g77112 = ( _MainMaskMaxValue - temp_output_7_0_g77112 );
				half Main_Mask_Remap5765_g77006 = saturate( ( ( clampResult17_g77111 - temp_output_7_0_g77112 ) / ( temp_output_10_0_g77112 + 0.0001 ) ) );
				float lerpResult7671_g77006 = lerp( 1.0 , Main_Mask_Remap5765_g77006 , _MainColorMode);
				float4 lerpResult7654_g77006 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g77006);
				half3 Main_Color_RGB7657_g77006 = (lerpResult7654_g77006).rgb;
				half3 Main_Albedo99_g77006 = ( lerpResult6223_g77006 * Main_Color_RGB7657_g77006 );
				float2 vertexToFrag11_g77032 = IN.ase_texcoord4.xy;
				half2 Second_UVs17_g77006 = vertexToFrag11_g77032;
				float4 tex2DNode89_g77006 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g77006 );
				float3 lerpResult6225_g77006 = lerp( float3( 1,1,1 ) , (tex2DNode89_g77006).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g77006 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				half Second_Mask81_g77006 = tex2DNode33_g77006.b;
				float clampResult17_g77114 = clamp( Second_Mask81_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77115 = _SecondMaskMinValue;
				float temp_output_10_0_g77115 = ( _SecondMaskMaxValue - temp_output_7_0_g77115 );
				half Second_Mask_Remap6130_g77006 = saturate( ( ( clampResult17_g77114 - temp_output_7_0_g77115 ) / ( temp_output_10_0_g77115 + 0.0001 ) ) );
				float lerpResult7672_g77006 = lerp( 1.0 , Second_Mask_Remap6130_g77006 , _SecondColorMode);
				float4 lerpResult7662_g77006 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g77006);
				half3 Second_Color_RGB7663_g77006 = (lerpResult7662_g77006).rgb;
				half3 Second_Albedo153_g77006 = ( lerpResult6225_g77006 * Second_Color_RGB7663_g77006 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77048 = 2.0;
				#else
				float staticSwitch1_g77048 = 4.594794;
				#endif
				float3 lerpResult4834_g77006 = lerp( ( Main_Albedo99_g77006 * Second_Albedo153_g77006 * staticSwitch1_g77048 ) , Second_Albedo153_g77006 , _DetailBlendMode);
				float lerpResult6885_g77006 = lerp( Main_Mask57_g77006 , Second_Mask81_g77006 , _DetailMaskMode);
				float clampResult17_g77084 = clamp( lerpResult6885_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77083 = _DetailMaskMinValue;
				float temp_output_10_0_g77083 = ( _DetailMaskMaxValue - temp_output_7_0_g77083 );
				half Blend_Mask_Texture6794_g77006 = saturate( ( ( clampResult17_g77084 - temp_output_7_0_g77083 ) / ( temp_output_10_0_g77083 + 0.0001 ) ) );
				half Mesh_DetailMask90_g77006 = IN.ase_color.b;
				half4 Normal_Packed45_g77110 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				float2 appendResult58_g77110 = (float2(( (Normal_Packed45_g77110).x * (Normal_Packed45_g77110).w ) , (Normal_Packed45_g77110).y));
				half2 Normal_Default50_g77110 = appendResult58_g77110;
				half2 Normal_ASTC41_g77110 = (Normal_Packed45_g77110).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77110 = Normal_ASTC41_g77110;
				#else
				float2 staticSwitch38_g77110 = Normal_Default50_g77110;
				#endif
				half2 Normal_NO_DTX544_g77110 = (Normal_Packed45_g77110).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77110 = Normal_NO_DTX544_g77110;
				#else
				float2 staticSwitch37_g77110 = staticSwitch38_g77110;
				#endif
				float2 temp_output_6555_0_g77006 = ( (staticSwitch37_g77110*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g77006 = (float3(temp_output_6555_0_g77006 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord5.xyz;
				float3 ase_worldNormal = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g77006 = appendResult7388_g77006;
				float3 worldNormal7389_g77006 = float3(dot(tanToWorld0,tanNormal7389_g77006), dot(tanToWorld1,tanNormal7389_g77006), dot(tanToWorld2,tanNormal7389_g77006));
				half3 Main_NormalWS7390_g77006 = worldNormal7389_g77006;
				float lerpResult6884_g77006 = lerp( Mesh_DetailMask90_g77006 , ((Main_NormalWS7390_g77006).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g77082 = clamp( lerpResult6884_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77081 = _DetailMeshMinValue;
				float temp_output_10_0_g77081 = ( _DetailMeshMaxValue - temp_output_7_0_g77081 );
				half Blend_Mask_Mesh1540_g77006 = saturate( ( ( clampResult17_g77082 - temp_output_7_0_g77081 ) / ( temp_output_10_0_g77081 + 0.0001 ) ) );
				float clampResult17_g77092 = clamp( ( Blend_Mask_Texture6794_g77006 * Blend_Mask_Mesh1540_g77006 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77107 = _DetailBlendMinValue;
				float temp_output_10_0_g77107 = ( _DetailBlendMaxValue - temp_output_7_0_g77107 );
				half Blend_Mask147_g77006 = ( saturate( ( ( clampResult17_g77092 - temp_output_7_0_g77107 ) / ( temp_output_10_0_g77107 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g77006 = lerp( Main_Albedo99_g77006 , lerpResult4834_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g77006 = lerpResult235_g77006;
				#else
				float3 staticSwitch255_g77006 = Main_Albedo99_g77006;
				#endif
				half3 Blend_Albedo265_g77006 = staticSwitch255_g77006;
				half Mesh_Height1524_g77006 = IN.ase_color.a;
				float temp_output_7_0_g77057 = _GradientMinValue;
				float temp_output_10_0_g77057 = ( _GradientMaxValue - temp_output_7_0_g77057 );
				half Tint_Gradient_Value2784_g77006 = saturate( ( ( Mesh_Height1524_g77006 - temp_output_7_0_g77057 ) / ( temp_output_10_0_g77057 + 0.0001 ) ) );
				float3 lerpResult2779_g77006 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g77006);
				float lerpResult6617_g77006 = lerp( Main_Mask_Remap5765_g77006 , Second_Mask_Remap6130_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g77006 = lerpResult6617_g77006;
				#else
				float staticSwitch6623_g77006 = Main_Mask_Remap5765_g77006;
				#endif
				half Blend_Mask_Remap6621_g77006 = staticSwitch6623_g77006;
				half Tint_Gradient_Mask6207_g77006 = Blend_Mask_Remap6621_g77006;
				float3 lerpResult6208_g77006 = lerp( float3( 1,1,1 ) , lerpResult2779_g77006 , Tint_Gradient_Mask6207_g77006);
				half3 Tint_Gradient_Color5769_g77006 = lerpResult6208_g77006;
				half3 Tint_Noise_Color5770_g77006 = float3(1,1,1);
				float Mesh_Occlusion318_g77006 = IN.ase_color.g;
				float clampResult17_g77054 = clamp( Mesh_Occlusion318_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77060 = _VertexOcclusionMinValue;
				float temp_output_10_0_g77060 = ( _VertexOcclusionMaxValue - temp_output_7_0_g77060 );
				half Occlusion_Mask6432_g77006 = saturate( ( ( clampResult17_g77054 - temp_output_7_0_g77060 ) / ( temp_output_10_0_g77060 + 0.0001 ) ) );
				float3 lerpResult2945_g77006 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g77006);
				half3 Occlusion_Color648_g77006 = lerpResult2945_g77006;
				half3 Matcap_Color7428_g77006 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g77006 = ( ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 * Occlusion_Color648_g77006 ) + Matcap_Color7428_g77006 );
				float3 temp_output_3_0_g77052 = Blend_Albedo_Tinted2808_g77006;
				float dotResult20_g77052 = dot( temp_output_3_0_g77052 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g77006 = dotResult20_g77052;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g77006).xxx;
				float temp_output_82_0_g77027 = _LayerColorsValue;
				float temp_output_19_0_g77031 = TVE_ColorsUsage[(int)temp_output_82_0_g77027];
				float4 temp_output_91_19_g77027 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g77006 = IN.ase_texcoord8.xyz;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 vertexToFrag4224_g77006 = IN.ase_texcoord9.xyz;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 lerpResult4822_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ColorsPositionMode);
				half2 UV94_g77027 = ( (temp_output_91_19_g77027).zw + ( (temp_output_91_19_g77027).xy * (lerpResult4822_g77006).xz ) );
				float4 tex2DArrayNode83_g77027 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g77027,temp_output_82_0_g77027), 0.0 );
				float4 temp_output_17_0_g77031 = tex2DArrayNode83_g77027;
				float4 temp_output_92_86_g77027 = TVE_ColorsParams;
				float4 temp_output_3_0_g77031 = temp_output_92_86_g77027;
				float4 ifLocalVar18_g77031 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77031 >= 0.5 )
				ifLocalVar18_g77031 = temp_output_17_0_g77031;
				else
				ifLocalVar18_g77031 = temp_output_3_0_g77031;
				float4 lerpResult22_g77031 = lerp( temp_output_3_0_g77031 , temp_output_17_0_g77031 , temp_output_19_0_g77031);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77031 = lerpResult22_g77031;
				#else
				float4 staticSwitch24_g77031 = ifLocalVar18_g77031;
				#endif
				half4 Global_Colors_Params5434_g77006 = staticSwitch24_g77031;
				float4 temp_output_346_0_g77013 = Global_Colors_Params5434_g77006;
				half Global_Colors_A1701_g77006 = saturate( (temp_output_346_0_g77013).w );
				half Colors_Influence3668_g77006 = Global_Colors_A1701_g77006;
				float temp_output_6306_0_g77006 = ( 1.0 - Colors_Influence3668_g77006 );
				float3 lerpResult3618_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g77006 * temp_output_6306_0_g77006 ) ));
				half3 Global_Colors_RGB1700_g77006 = (temp_output_346_0_g77013).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g77044 = 2.0;
				#else
				float staticSwitch1_g77044 = 4.594794;
				#endif
				half3 Colors_RGB1954_g77006 = ( Global_Colors_RGB1700_g77006 * staticSwitch1_g77044 * _ColorsIntensityValue );
				float lerpResult7679_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _ColorsMaskValue);
				half Colors_Value3692_g77006 = ( lerpResult7679_g77006 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = IN.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				float lerpResult3870_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _ColorsVariationValue);
				half Colors_Variation3650_g77006 = lerpResult3870_g77006;
				half Occlusion_Alpha6463_g77006 = _VertexOcclusionColor.a;
				float lerpResult6459_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult6459_g77006);
				half Occlusion_Colors6450_g77006 = lerpResult6461_g77006;
				float3 temp_output_3_0_g77053 = ( Blend_Albedo265_g77006 * Tint_Gradient_Color5769_g77006 * Tint_Noise_Color5770_g77006 );
				float dotResult20_g77053 = dot( temp_output_3_0_g77053 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g77006 = clamp( saturate( ( dotResult20_g77053 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g77006 = clampResult6740_g77006;
				float temp_output_7_0_g77090 = 0.1;
				float temp_output_10_0_g77090 = ( 0.2 - temp_output_7_0_g77090 );
				float lerpResult16_g77045 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g77006 * Colors_Influence3668_g77006 * Colors_Variation3650_g77006 * Occlusion_Colors6450_g77006 * Blend_Albedo_Globals6410_g77006 ) - temp_output_7_0_g77090 ) / ( temp_output_10_0_g77090 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g77006 = lerp( Blend_Albedo_Tinted2808_g77006 , ( lerpResult3618_g77006 * Colors_RGB1954_g77006 ) , lerpResult16_g77045);
				half3 Blend_Albedo_Colored_High6027_g77006 = lerpResult3628_g77006;
				half3 Blend_Albedo_Colored863_g77006 = Blend_Albedo_Colored_High6027_g77006;
				half3 Global_OverlayColor1758_g77006 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g77022 = _LayerExtrasValue;
				float temp_output_19_0_g77026 = TVE_ExtrasUsage[(int)temp_output_84_0_g77022];
				float4 temp_output_93_19_g77022 = TVE_ExtrasCoords;
				float3 lerpResult4827_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ExtrasPositionMode);
				half2 UV96_g77022 = ( (temp_output_93_19_g77022).zw + ( (temp_output_93_19_g77022).xy * (lerpResult4827_g77006).xz ) );
				float4 tex2DArrayNode48_g77022 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g77022,temp_output_84_0_g77022), 0.0 );
				float4 temp_output_17_0_g77026 = tex2DArrayNode48_g77022;
				float4 temp_output_94_85_g77022 = TVE_ExtrasParams;
				float4 temp_output_3_0_g77026 = temp_output_94_85_g77022;
				float4 ifLocalVar18_g77026 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77026 >= 0.5 )
				ifLocalVar18_g77026 = temp_output_17_0_g77026;
				else
				ifLocalVar18_g77026 = temp_output_3_0_g77026;
				float4 lerpResult22_g77026 = lerp( temp_output_3_0_g77026 , temp_output_17_0_g77026 , temp_output_19_0_g77026);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77026 = lerpResult22_g77026;
				#else
				float4 staticSwitch24_g77026 = ifLocalVar18_g77026;
				#endif
				half4 Global_Extras_Params5440_g77006 = staticSwitch24_g77026;
				float4 break456_g77036 = Global_Extras_Params5440_g77006;
				half Global_Extras_Overlay156_g77006 = break456_g77036.z;
				float lerpResult1065_g77006 = lerp( 1.0 , Global_MeshVariation5104_g77006 , _OverlayVariationValue);
				half Overlay_Variation4560_g77006 = lerpResult1065_g77006;
				half Overlay_Value5738_g77006 = ( _GlobalOverlay * Global_Extras_Overlay156_g77006 * Overlay_Variation4560_g77006 );
				half2 Main_Normal137_g77006 = temp_output_6555_0_g77006;
				float2 lerpResult3372_g77006 = lerp( float2( 0,0 ) , Main_Normal137_g77006 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				half4 Normal_Packed45_g77113 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				float2 appendResult58_g77113 = (float2(( (Normal_Packed45_g77113).x * (Normal_Packed45_g77113).w ) , (Normal_Packed45_g77113).y));
				half2 Normal_Default50_g77113 = appendResult58_g77113;
				half2 Normal_ASTC41_g77113 = (Normal_Packed45_g77113).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77113 = Normal_ASTC41_g77113;
				#else
				float2 staticSwitch38_g77113 = Normal_Default50_g77113;
				#endif
				half2 Normal_NO_DTX544_g77113 = (Normal_Packed45_g77113).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77113 = Normal_NO_DTX544_g77113;
				#else
				float2 staticSwitch37_g77113 = staticSwitch38_g77113;
				#endif
				float2 temp_output_6560_0_g77006 = ( (staticSwitch37_g77113*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77116 = temp_output_6560_0_g77006;
				float2 break64_g77116 = Normal_Planar45_g77116;
				float3 appendResult65_g77116 = (float3(break64_g77116.x , 0.0 , break64_g77116.y));
				float2 temp_output_7603_0_g77006 = (mul( ase_worldToTangent, appendResult65_g77116 )).xy;
				float2 ifLocalVar7604_g77006 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g77006 = temp_output_7603_0_g77006;
				else
				ifLocalVar7604_g77006 = temp_output_6560_0_g77006;
				half2 Second_Normal179_g77006 = ifLocalVar7604_g77006;
				float2 temp_output_36_0_g77049 = ( lerpResult3372_g77006 + Second_Normal179_g77006 );
				float2 lerpResult3376_g77006 = lerp( Main_Normal137_g77006 , temp_output_36_0_g77049 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g77006 = lerpResult3376_g77006;
				#else
				float2 staticSwitch267_g77006 = Main_Normal137_g77006;
				#endif
				half2 Blend_Normal312_g77006 = staticSwitch267_g77006;
				float3 appendResult7377_g77006 = (float3(Blend_Normal312_g77006 , 1.0));
				float3 tanNormal7376_g77006 = appendResult7377_g77006;
				float3 worldNormal7376_g77006 = float3(dot(tanToWorld0,tanNormal7376_g77006), dot(tanToWorld1,tanNormal7376_g77006), dot(tanToWorld2,tanNormal7376_g77006));
				half3 Blend_NormalWS7375_g77006 = worldNormal7376_g77006;
				float lerpResult7446_g77006 = lerp( (Blend_NormalWS7375_g77006).y , IN.ase_normal.y , Vertex_DynamicMode5112_g77006);
				float lerpResult6757_g77006 = lerp( 1.0 , saturate( lerpResult7446_g77006 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g77006 = lerpResult6757_g77006;
				half Overlay_Shading6688_g77006 = Blend_Albedo_Globals6410_g77006;
				half Overlay_Custom6707_g77006 = 1.0;
				float lerpResult7693_g77006 = lerp( Occlusion_Mask6432_g77006 , ( 1.0 - Occlusion_Mask6432_g77006 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g77006 = lerp( Occlusion_Alpha6463_g77006 , 1.0 , lerpResult7693_g77006);
				half Occlusion_Overlay6471_g77006 = lerpResult6467_g77006;
				float temp_output_7_0_g77058 = 0.1;
				float temp_output_10_0_g77058 = ( 0.2 - temp_output_7_0_g77058 );
				half Overlay_Mask_High6064_g77006 = saturate( ( ( ( Overlay_Value5738_g77006 * Overlay_Projection6081_g77006 * Overlay_Shading6688_g77006 * Overlay_Custom6707_g77006 * Occlusion_Overlay6471_g77006 ) - temp_output_7_0_g77058 ) / ( temp_output_10_0_g77058 + 0.0001 ) ) );
				half Overlay_Mask269_g77006 = Overlay_Mask_High6064_g77006;
				float3 lerpResult336_g77006 = lerp( Blend_Albedo_Colored863_g77006 , Global_OverlayColor1758_g77006 , Overlay_Mask269_g77006);
				half3 Blend_Albedo_Overlay359_g77006 = lerpResult336_g77006;
				half Global_WetnessContrast6502_g77006 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g77006 = break456_g77036.y;
				half Wetness_Value6343_g77006 = ( Global_Extras_Wetness305_g77006 * _GlobalWetness );
				float3 lerpResult6367_g77006 = lerp( Blend_Albedo_Overlay359_g77006 , ( Blend_Albedo_Overlay359_g77006 * Blend_Albedo_Overlay359_g77006 ) , ( Global_WetnessContrast6502_g77006 * Wetness_Value6343_g77006 ));
				half3 Blend_Albedo_Wetness6351_g77006 = lerpResult6367_g77006;
				float vertexToFrag11_g77047 = IN.ase_texcoord4.z;
				half3 Tint_Highlight_Color5771_g77006 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g77047 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g77006 = ( Blend_Albedo_Wetness6351_g77006 * Tint_Highlight_Color5771_g77006 );
				half3 Subsurface_Color1722_g77006 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g77006 );
				half Global_Subsurface4041_g77006 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g77006 = TVE_OverlaySubsurface;
				float lerpResult7362_g77006 = lerp( 1.0 , Global_OverlaySubsurface5667_g77006 , Overlay_Value5738_g77006);
				half Overlay_Subsurface7361_g77006 = lerpResult7362_g77006;
				half Subsurface_Intensity1752_g77006 = ( _SubsurfaceValue * Global_Subsurface4041_g77006 * Overlay_Subsurface7361_g77006 );
				float lerpResult7680_g77006 = lerp( 1.0 , Blend_Mask_Remap6621_g77006 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g77006 = lerpResult7680_g77006;
				half3 MainLight_Direction3926_g77006 = TVE_MainLightDirection;
				float3 ase_worldPos = IN.ase_texcoord10.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float dotResult785_g77006 = dot( -MainLight_Direction3926_g77006 , ViewDirection3963_g77006 );
				float saferPower1624_g77006 = abs( saturate( dotResult785_g77006 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g77006 = 0.0;
				#else
				float staticSwitch1602_g77006 = ( pow( saferPower1624_g77006 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View782_g77006 = staticSwitch1602_g77006;
				half3 Subsurface_Approximation1693_g77006 = ( Subsurface_Color1722_g77006 * Subsurface_Intensity1752_g77006 * Subsurface_Mask1557_g77006 * Mask_Subsurface_View782_g77006 );
				half3 Blend_Albedo_Subsurface149_g77006 = ( temp_output_6309_0_g77006 + Subsurface_Approximation1693_g77006 );
				half3 Blend_Albedo_RimLight7316_g77006 = Blend_Albedo_Subsurface149_g77006;
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g77006 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g77006 = temp_output_7161_0_g77006;
				half2 Emissive_UVs2468_g77006 = ( ( IN.ase_texcoord3.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77127 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77127).xxx;
				float temp_output_10_0_g77127 = ( _EmissiveTexMaxValue - temp_output_7_0_g77127 );
				half3 Emissive_Texture7022_g77006 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g77006 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77127 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g77006 = break456_g77036.x;
				float lerpResult4206_g77006 = lerp( 1.0 , Global_Extras_Emissive4203_g77006 , _GlobalEmissive);
				half Emissive_Value7024_g77006 = ( ( lerpResult4206_g77006 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g77006 = saturate( ( Emissive_Texture7022_g77006 + Emissive_Value7024_g77006 ) );
				float3 temp_output_3_0_g77129 = ( Emissive_Color7162_g77006 * Emissive_Mask6968_g77006 );
				float temp_output_15_0_g77129 = _emissive_intensity_value;
				float3 temp_output_23_0_g77129 = ( temp_output_3_0_g77129 * temp_output_15_0_g77129 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g77006 = temp_output_23_0_g77129;
				#else
				float3 staticSwitch7687_g77006 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g77006 = staticSwitch7687_g77006;
				
				float localCustomAlphaClip19_g77109 = ( 0.0 );
				half Main_Alpha316_g77006 = tex2DNode29_g77006.a;
				half Second_Alpha5007_g77006 = tex2DNode89_g77006.a;
				float lerpResult6153_g77006 = lerp( Main_Alpha316_g77006 , Second_Alpha5007_g77006 , Blend_Mask147_g77006);
				float lerpResult6785_g77006 = lerp( ( Main_Alpha316_g77006 * Second_Alpha5007_g77006 ) , lerpResult6153_g77006 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g77006 = lerpResult6785_g77006;
				#else
				float staticSwitch6158_g77006 = Main_Alpha316_g77006;
				#endif
				half Blend_Alpha6157_g77006 = staticSwitch6158_g77006;
				half AlphaTreshold2132_g77006 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g77006 = saturate( break456_g77036.w );
				float lerpResult5154_g77006 = lerp( 0.0 , Global_MeshVariation5104_g77006 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g77006 = lerpResult5154_g77006;
				float Emissive_Alpha7625_g77006 = 0.0;
				float lerpResult6866_g77006 = lerp( ( 1.0 - Blend_Mask147_g77006 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g77006 = lerpResult6866_g77006;
				#else
				float staticSwitch6612_g77006 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g77006 = staticSwitch6612_g77006;
				half Alpha_Mask6234_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5203_g77006 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g77006 - saturate( ( Global_Alpha_Variation5158_g77006 + Emissive_Alpha7625_g77006 ) ) ) + ( Global_Extras_Alpha1033_g77006 * 0.1 ) ) ) , ( Alpha_Mask6234_g77006 * _GlobalAlpha ));
				float lerpResult16_g77050 = lerp( 1.0 , lerpResult5203_g77006 , TVE_IsEnabled);
				half Global_Alpha315_g77006 = lerpResult16_g77050;
				float3 normalizeResult3971_g77006 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 WorldNormal_Derivates3972_g77006 = normalizeResult3971_g77006;
				float dotResult3851_g77006 = dot( ViewDirection3963_g77006 , WorldNormal_Derivates3972_g77006 );
				float lerpResult3993_g77006 = lerp( 1.0 , saturate( ( abs( dotResult3851_g77006 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g77006 = lerpResult3993_g77006;
				half Fade_Effects_A5360_g77006 = Fade_Glancing3853_g77006;
				float temp_output_7_0_g77059 = TVE_CameraFadeMin;
				float temp_output_10_0_g77059 = ( TVE_CameraFadeMax - temp_output_7_0_g77059 );
				float lerpResult4755_g77006 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77059 ) / ( temp_output_10_0_g77059 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g77006 = lerpResult4755_g77006;
				half Fade_Effects_B6228_g77006 = ( Fade_Effects_A5360_g77006 * Fade_Camera3743_g77006 );
				half Fade_Mask5149_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5141_g77006 = lerp( 1.0 , ( Fade_Effects_B6228_g77006 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g77006);
				half Fade_Effects_C7653_g77006 = lerpResult5141_g77006;
				float temp_output_5865_0_g77006 = saturate( ( Fade_Effects_C7653_g77006 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g77006 ) ).r ) );
				half Fade_Alpha3727_g77006 = temp_output_5865_0_g77006;
				half Final_Alpha7344_g77006 = min( ( ( Blend_Alpha6157_g77006 - AlphaTreshold2132_g77006 ) * Global_Alpha315_g77006 ) , Fade_Alpha3727_g77006 );
				float temp_output_3_0_g77109 = Final_Alpha7344_g77006;
				float Alpha19_g77109 = temp_output_3_0_g77109;
				float temp_output_15_0_g77109 = 0.01;
				float Treshold19_g77109 = temp_output_15_0_g77109;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#else
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g77006 = (lerpResult7654_g77006).a;
				half Second_Color_Alpha6152_g77006 = (lerpResult7662_g77006).a;
				float lerpResult6168_g77006 = lerp( Main_Color_Alpha6121_g77006 , Second_Color_Alpha6152_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g77006 = lerpResult6168_g77006;
				#else
				float staticSwitch6174_g77006 = Main_Color_Alpha6121_g77006;
				#endif
				half Blend_Color_Alpha6167_g77006 = staticSwitch6174_g77006;
				half Final_Clip914_g77006 = saturate( ( Alpha19_g77109 * Blend_Color_Alpha6167_g77006 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g77006;
				o.Normal = fixed3( 0, 0, 1 );
				o.Emission = Final_Emissive2476_g77006;
				o.Alpha = Final_Clip914_g77006;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				UnityMetaInput metaIN;
				UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
				metaIN.Albedo = o.Albedo;
				metaIN.Emission = o.Emission;
				#ifdef EDITOR_VISUALIZATION
					metaIN.VizUV = IN.vizUV;
					metaIN.LightCoord = IN.lightCoord;
				#endif
				return UnityMetaFragment(metaIN);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			CGPROGRAM
			#define ASE_GEOMETRY 1
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
				#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "HLSLSupport.cginc"

			#ifdef ASE_GEOMETRY
				#ifndef UNITY_INSTANCED_LOD_FADE
					#define UNITY_INSTANCED_LOD_FADE
				#endif
				#ifndef UNITY_INSTANCED_SH
					#define UNITY_INSTANCED_SH
				#endif
				#ifndef UNITY_INSTANCED_LIGHTMAPSTS
					#define UNITY_INSTANCED_LIGHTMAPSTS
				#endif
			#endif

			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_STANDARD_SHADER
			#define TVE_IS_PLANT_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				V2F_SHADOW_CASTER;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef UNITY_STANDARD_USE_DITHER_MASK
				sampler3D _DitherMaskLOD;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform half _render_cull;
			uniform half _render_coverage;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _IsStandardShader;
			uniform float _IsPlantShader;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
			SamplerState sampler_MainTex;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _MaxBoundsInfo;
			uniform half _RenderCull;
			uniform half _RenderMode;
			uniform half _CategoryRender;
			uniform half _RenderNormals;
			uniform half _MessageGlobalsVariation;
			uniform half _IsTVEShader;
			uniform half _HasOcclusion;
			uniform half _IsIdentifier;
			uniform half _IsCollected;
			uniform half _IsShared;
			uniform half _IsCustomShader;
			uniform half _HasGradient;
			uniform half _HasEmissive;
			uniform half _VertexVariationMode;
			uniform half _IsVersion;
			uniform half _SpaceGlobalLocals;
			uniform half _CategoryGlobals;
			uniform half _CategoryMain;
			uniform half _CategoryPerspective;
			uniform half _CategorySizeFade;
			uniform half _SpaceRenderFade;
			uniform half4 _RimLightRemap;
			uniform half _RenderDirect;
			uniform half _RenderAmbient;
			uniform half _RenderShadow;
			uniform half _IsCoreShader;
			uniform half _DetailTypeMode;
			uniform half _DetailOpaqueMode;
			uniform half _DetailCoordMode;
			uniform half4 _DetailMaskRemap;
			uniform half4 _DetailMeshRemap;
			uniform half4 _DetailBlendRemap;
			uniform half4 _Color;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
			SamplerState sampler_BumpMap;
			uniform half _Cutoff;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceAngleValue;
			uniform half _SubsurfaceScatteringValue;
			uniform half _MotionValue_30;
			uniform half _MotionValue_20;
			uniform half4 _MainMaskRemap;
			uniform half4 _SecondMaskRemap;
			uniform half _CategoryMotion;
			uniform half _MessageMotionVariation;
			uniform half _MessageSubsurface;
			uniform half _SpaceGlobalLayers;
			uniform half _SpaceGlobalOptions;
			uniform half _SpaceSubsurface;
			uniform half _SpaceMotionGlobals;
			uniform half _CategoryDetail;
			uniform half _CategoryOcclusion;
			uniform half _CategoryGradient;
			uniform half _CategoryNoise;
			uniform half _CategoryRimLight;
			uniform half _CategoryMatcap;
			uniform half _CategorySubsurface;
			uniform half _CategoryEmissive;
			uniform half _RenderZWrite;
			uniform half _RenderQueue;
			uniform half _RenderPriority;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _RenderClip;
			uniform half _RenderCoverage;
			uniform half _ColorsMaskMinValue;
			uniform half _ColorsMaskMaxValue;
			uniform half _DetailMaskInvertMode;
			uniform half _DetailMeshInvertMode;
			uniform half _MessageMainMask;
			uniform half _MessageSecondMask;
			uniform half4 _GradientMaskRemap;
			uniform half4 _NoiseMaskRemap;
			uniform half _MessageOcclusion;
			uniform half _EmissiveMode;
			uniform half _EmissiveIntensityValue;
			uniform half _EmissiveFlagMode;
			uniform half _EmissiveIntensityMode;
			uniform half4 _EmissiveTexRemap;
			uniform half4 _VertexOcclusionRemap;
			uniform half _VertexPivotMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionPosition_10;
			uniform float _MotionScale_10;
			uniform half TVE_NoiseTexTilling;
			uniform half4 TVE_MotionParams;
			uniform half4 TVE_TimeParams;
			uniform float _MotionSpeed_10;
			uniform half _MotionVariation_10;
			uniform half _VertexDynamicMode;
			SamplerState sampler_Linear_Repeat;
			uniform half _LayerMotionValue;
			uniform float TVE_MotionUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
			uniform half4 TVE_MotionCoords;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_WindEditor;
			uniform half _MotionAmplitude_10;
			uniform half TVE_MotionValue_10;
			uniform half _InteractionMaskValue;
			uniform half _InteractionAmplitude;
			uniform half _MotionScale_20;
			uniform half _MotionVariation_20;
			uniform half _MotionSpeed_20;
			uniform half _MotionFacingValue;
			uniform half _MotionAmplitude_20;
			uniform half TVE_MotionValue_20;
			uniform half _MotionAmplitude_22;
			uniform float _MotionScale_32;
			uniform float _MotionVariation_32;
			uniform float _MotionSpeed_32;
			uniform half _MotionAmplitude_32;
			uniform half TVE_MotionFadeEnd;
			uniform half TVE_MotionFadeStart;
			uniform half TVE_MotionValue_30;
			uniform half _PerspectivePushValue;
			uniform half _PerspectiveNoiseValue;
			uniform half _PerspectiveAngleValue;
			uniform half _LayerVertexValue;
			uniform float TVE_VertexUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_VertexTex);
			uniform half4 TVE_VertexCoords;
			uniform half4 TVE_VertexParams;
			uniform half _GlobalSize;
			uniform half TVE_DistanceFadeBias;
			uniform half _SizeFadeEndValue;
			uniform half _SizeFadeStartValue;
			uniform half TVE_IsEnabled;
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half _DetailMaskMode;
			uniform half _DetailMaskMinValue;
			uniform half _DetailMaskMaxValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _DetailMeshMode;
			uniform half _DetailMeshMinValue;
			uniform half _DetailMeshMaxValue;
			uniform half _DetailBlendMinValue;
			uniform half _DetailBlendMaxValue;
			uniform half _DetailMode;
			uniform half _DetailValue;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _AlphaVariationValue;
			uniform half _DetailFadeMode;
			uniform half _GlobalAlpha;
			uniform half _FadeGlancingValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			uniform half _SecondMaskMinValue;
			uniform half _SecondMaskMaxValue;
			uniform half _SecondColorMode;


			float2 DecodeFloatToVector2( float enc )
			{
				float2 result ;
				result.y = enc % 2048;
				result.x = floor(enc / 2048);
				return result / (2048 - 1);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g77006 = v.vertex.xyz;
				float3 appendResult60_g77016 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g77006 = ( appendResult60_g77016 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g77006 = Mesh_PivotsData2831_g77006;
				float3 temp_output_2283_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				half3 VertexPos40_g77087 = temp_output_2283_0_g77006;
				half3 VertexPos40_g77088 = VertexPos40_g77087;
				float3 appendResult74_g77088 = (float3(VertexPos40_g77088.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g77088 = appendResult74_g77088;
				float3 break84_g77088 = VertexPos40_g77088;
				float3 appendResult81_g77088 = (float3(0.0 , break84_g77088.y , break84_g77088.z));
				half3 VertexPosOtherAxis82_g77088 = appendResult81_g77088;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g77006 = ase_worldPos;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 WorldPosition_Shifted7477_g77006 = ( WorldPosition3905_g77006 - TVE_WorldOrigin );
				float4x4 break19_g77062 = unity_ObjectToWorld;
				float3 appendResult20_g77062 = (float3(break19_g77062[ 0 ][ 3 ] , break19_g77062[ 1 ][ 3 ] , break19_g77062[ 2 ][ 3 ]));
				float3 temp_output_122_0_g77062 = Mesh_PivotsData2831_g77006;
				float3 PivotsOnly105_g77062 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g77062 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g77064 = ( appendResult20_g77062 + PivotsOnly105_g77062 );
				half3 WorldData19_g77064 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77064 = WorldData19_g77064;
				#else
				float3 staticSwitch14_g77064 = ObjectData20_g77064;
				#endif
				float3 temp_output_114_0_g77062 = staticSwitch14_g77064;
				float3 vertexToFrag4224_g77006 = temp_output_114_0_g77062;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				float3 lerpResult6766_g77006 = lerp( WorldPosition_Shifted7477_g77006 , ObjectPosition_Shifted7481_g77006 , _MotionPosition_10);
				float3 Motion_10_Position6738_g77006 = lerpResult6766_g77006;
				half3 Input_Position419_g77102 = Motion_10_Position6738_g77006;
				float Input_MotionScale287_g77102 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77102 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77102 = (( Input_Position419_g77102 * Input_MotionScale287_g77102 * NoiseTex_Tilling735_g77102 * 0.0075 )).xz;
				float2 temp_output_447_0_g77011 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g77006 = temp_output_447_0_g77011;
				half2 Input_DirectionWS423_g77102 = Global_Wind_DirectionWS4683_g77006;
				float lerpResult128_g77103 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77102 = _MotionSpeed_10;
				half Input_MotionVariation284_g77102 = _MotionVariation_10;
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = v.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				half Input_GlobalMeshVariation569_g77102 = Global_MeshVariation5104_g77006;
				float temp_output_630_0_g77102 = ( ( ( lerpResult128_g77103 * Input_MotionSpeed62_g77102 ) + ( Input_MotionVariation284_g77102 * Input_GlobalMeshVariation569_g77102 ) ) * 0.03 );
				float temp_output_607_0_g77102 = frac( temp_output_630_0_g77102 );
				float4 lerpResult590_g77102 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * temp_output_607_0_g77102 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77102 + ( -Input_DirectionWS423_g77102 * frac( ( temp_output_630_0_g77102 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77102 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77102 = lerpResult590_g77102;
				float2 temp_output_645_0_g77102 = ((Noise_Complex703_g77102).rg*2.0 + -1.0);
				float2 break650_g77102 = temp_output_645_0_g77102;
				float3 appendResult649_g77102 = (float3(break650_g77102.x , 0.0 , break650_g77102.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g77006 = (( mul( unity_WorldToObject, float4( appendResult649_g77102 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g77093 = Global_Noise_OS5548_g77006;
				float2 break448_g77011 = temp_output_447_0_g77011;
				float3 appendResult452_g77011 = (float3(break448_g77011.x , 0.0 , break448_g77011.y));
				half2 Global_Wind_DirectionOS5692_g77006 = (( mul( unity_WorldToObject, float4( appendResult452_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g77093 = Global_Wind_DirectionOS5692_g77006;
				float temp_output_84_0_g77017 = _LayerMotionValue;
				float temp_output_19_0_g77021 = TVE_MotionUsage[(int)temp_output_84_0_g77017];
				float4 temp_output_91_19_g77017 = TVE_MotionCoords;
				half2 UV94_g77017 = ( (temp_output_91_19_g77017).zw + ( (temp_output_91_19_g77017).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77017 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g77017,temp_output_84_0_g77017), 0.0 );
				float4 temp_output_17_0_g77021 = tex2DArrayNode50_g77017;
				float4 temp_output_112_19_g77017 = TVE_MotionParams;
				float4 temp_output_3_0_g77021 = temp_output_112_19_g77017;
				float4 ifLocalVar18_g77021 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77021 >= 0.5 )
				ifLocalVar18_g77021 = temp_output_17_0_g77021;
				else
				ifLocalVar18_g77021 = temp_output_3_0_g77021;
				float4 lerpResult22_g77021 = lerp( temp_output_3_0_g77021 , temp_output_17_0_g77021 , temp_output_19_0_g77021);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77021 = lerpResult22_g77021;
				#else
				float4 staticSwitch24_g77021 = ifLocalVar18_g77021;
				#endif
				half4 Global_Motion_Params3909_g77006 = staticSwitch24_g77021;
				float4 break322_g77011 = Global_Motion_Params3909_g77006;
				float lerpResult457_g77011 = lerp( break322_g77011.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g77011 = ( 1.0 - lerpResult457_g77011 );
				half Global_Wind_Power2223_g77006 = ( 1.0 - ( temp_output_459_0_g77011 * temp_output_459_0_g77011 ) );
				half Input_WindPower449_g77093 = Global_Wind_Power2223_g77006;
				float2 lerpResult516_g77093 = lerp( Input_Noise_DirectionOS487_g77093 , Input_Wind_DirectionOS458_g77093 , ( Input_WindPower449_g77093 * 0.6 ));
				half Mesh_Motion_107572_g77006 = v.ase_color.a;
				half Input_MeshHeight388_g77093 = Mesh_Motion_107572_g77006;
				half ObjectData20_g77094 = Input_MeshHeight388_g77093;
				float enc62_g77121 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77121 = DecodeFloatToVector2( enc62_g77121 );
				float2 break63_g77121 = ( localDecodeFloatToVector262_g77121 * 100.0 );
				float Bounds_Height5230_g77006 = break63_g77121.x;
				half Input_BoundsHeight390_g77093 = Bounds_Height5230_g77006;
				half WorldData19_g77094 = ( Input_MeshHeight388_g77093 * Input_MeshHeight388_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77094 = WorldData19_g77094;
				#else
				float staticSwitch14_g77094 = ObjectData20_g77094;
				#endif
				half Final_Motion10_Mask321_g77093 = ( staticSwitch14_g77094 * 2.0 );
				half Input_BendingAmplitude376_g77093 = _MotionAmplitude_10;
				half Global_MotionValue640_g77093 = TVE_MotionValue_10;
				half2 Final_Bending631_g77093 = ( lerpResult516_g77093 * ( Final_Motion10_Mask321_g77093 * Input_BendingAmplitude376_g77093 * Input_WindPower449_g77093 * Input_WindPower449_g77093 * Global_MotionValue640_g77093 ) );
				float2 appendResult433_g77011 = (float2(break322_g77011.x , break322_g77011.y));
				float2 temp_output_436_0_g77011 = (appendResult433_g77011*2.0 + -1.0);
				float2 break441_g77011 = temp_output_436_0_g77011;
				float3 appendResult440_g77011 = (float3(break441_g77011.x , 0.0 , break441_g77011.y));
				half2 Global_React_DirectionOS39_g77006 = (( mul( unity_WorldToObject, float4( appendResult440_g77011 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g77093 = Global_React_DirectionOS39_g77006;
				float clampResult17_g77096 = clamp( Input_MeshHeight388_g77093 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77095 = 0.0;
				half Input_InteractionUseMask62_g77093 = _InteractionMaskValue;
				float temp_output_10_0_g77095 = ( Input_InteractionUseMask62_g77093 - temp_output_7_0_g77095 );
				half Final_InteractionRemap594_g77093 = saturate( ( ( clampResult17_g77096 - temp_output_7_0_g77095 ) / ( temp_output_10_0_g77095 + 0.0001 ) ) );
				half ObjectData20_g77097 = Final_InteractionRemap594_g77093;
				half WorldData19_g77097 = ( Final_InteractionRemap594_g77093 * Final_InteractionRemap594_g77093 * Input_BoundsHeight390_g77093 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77097 = WorldData19_g77097;
				#else
				float staticSwitch14_g77097 = ObjectData20_g77097;
				#endif
				half Final_InteractionMask373_g77093 = ( staticSwitch14_g77097 * 2.0 );
				half Input_InteractionAmplitude58_g77093 = _InteractionAmplitude;
				half2 Final_Interaction632_g77093 = ( Input_React_DirectionOS358_g77093 * Final_InteractionMask373_g77093 * Input_InteractionAmplitude58_g77093 );
				half Global_Interaction_Mask66_g77006 = ( break322_g77011.w * break322_g77011.w * break322_g77011.w * break322_g77011.w );
				float Input_InteractionGlobalMask330_g77093 = Global_Interaction_Mask66_g77006;
				half Final_InteractionValue525_g77093 = saturate( ( Input_InteractionAmplitude58_g77093 * Input_InteractionGlobalMask330_g77093 ) );
				float2 lerpResult551_g77093 = lerp( Final_Bending631_g77093 , Final_Interaction632_g77093 , Final_InteractionValue525_g77093);
				float2 break364_g77093 = lerpResult551_g77093;
				float3 appendResult638_g77093 = (float3(break364_g77093.x , 0.0 , break364_g77093.y));
				half3 Motion_10_Interaction7519_g77006 = appendResult638_g77093;
				half3 Angle44_g77087 = Motion_10_Interaction7519_g77006;
				half Angle44_g77088 = (Angle44_g77087).z;
				half3 VertexPos40_g77089 = ( VertexPosRotationAxis50_g77088 + ( VertexPosOtherAxis82_g77088 * cos( Angle44_g77088 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g77088 ) * sin( Angle44_g77088 ) ) );
				float3 appendResult74_g77089 = (float3(0.0 , 0.0 , VertexPos40_g77089.z));
				half3 VertexPosRotationAxis50_g77089 = appendResult74_g77089;
				float3 break84_g77089 = VertexPos40_g77089;
				float3 appendResult81_g77089 = (float3(break84_g77089.x , break84_g77089.y , 0.0));
				half3 VertexPosOtherAxis82_g77089 = appendResult81_g77089;
				half Angle44_g77089 = -(Angle44_g77087).x;
				half3 Input_Position419_g77117 = WorldPosition_Shifted7477_g77006;
				float3 break459_g77117 = Input_Position419_g77117;
				float Sum_Position446_g77117 = ( break459_g77117.x + break459_g77117.y + break459_g77117.z );
				half Input_MotionScale321_g77117 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77117 = _MotionVariation_20;
				half Input_GlobalVariation400_g77117 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77118 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77117 = _MotionSpeed_20;
				float temp_output_404_0_g77117 = ( lerpResult128_g77118 * Input_MotionSpeed62_g77117 );
				half Motion_SineA450_g77117 = sin( ( ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) + ( Input_MotionVariation330_g77117 * Input_GlobalVariation400_g77117 ) + temp_output_404_0_g77117 ) );
				half Motion_SineB395_g77117 = sin( ( ( temp_output_404_0_g77117 * 0.6842 ) + ( Sum_Position446_g77117 * Input_MotionScale321_g77117 ) ) );
				half3 Input_Position419_g77130 = VertexPosition3588_g77006;
				float3 normalizeResult518_g77130 = normalize( Input_Position419_g77130 );
				half2 Input_DirectionOS423_g77130 = Global_React_DirectionOS39_g77006;
				float2 break521_g77130 = -Input_DirectionOS423_g77130;
				float3 appendResult522_g77130 = (float3(break521_g77130.x , 0.0 , break521_g77130.y));
				float dotResult519_g77130 = dot( normalizeResult518_g77130 , appendResult522_g77130 );
				half Input_Value62_g77130 = _MotionFacingValue;
				float lerpResult524_g77130 = lerp( 1.0 , (dotResult519_g77130*0.5 + 0.5) , Input_Value62_g77130);
				half ObjectData20_g77131 = max( lerpResult524_g77130 , 0.001 );
				half WorldData19_g77131 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77131 = WorldData19_g77131;
				#else
				float staticSwitch14_g77131 = ObjectData20_g77131;
				#endif
				half Motion_FacingMask5214_g77006 = staticSwitch14_g77131;
				half Motion_20_Amplitude4381_g77006 = Motion_FacingMask5214_g77006;
				half Input_MotionAmplitude384_g77117 = Motion_20_Amplitude4381_g77006;
				half Input_GlobalWind407_g77117 = Global_Wind_Power2223_g77006;
				float4 break638_g77102 = abs( Noise_Complex703_g77102 );
				half Global_Noise_B5526_g77006 = break638_g77102.b;
				half Input_GlobalNoise411_g77117 = Global_Noise_B5526_g77006;
				float lerpResult413_g77117 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77117);
				half Motion_Amplitude418_g77117 = ( Input_MotionAmplitude384_g77117 * Input_GlobalWind407_g77117 * pow( Input_GlobalNoise411_g77117 , lerpResult413_g77117 ) );
				half Input_Squash58_g77117 = _MotionAmplitude_20;
				float enc59_g77121 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77121 = DecodeFloatToVector2( enc59_g77121 );
				float2 break61_g77121 = localDecodeFloatToVector259_g77121;
				half Mesh_Motion_2060_g77006 = break61_g77121.x;
				half Input_MeshMotion_20388_g77117 = Mesh_Motion_2060_g77006;
				float Bounds_Radius5231_g77006 = break63_g77121.y;
				half Input_BoundsRadius390_g77117 = Bounds_Radius5231_g77006;
				half Global_MotionValue462_g77117 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77117 = Global_React_DirectionOS39_g77006;
				float2 break371_g77117 = Input_DirectionOS366_g77117;
				float3 appendResult372_g77117 = (float3(break371_g77117.x , ( Motion_SineA450_g77117 * 0.3 ) , break371_g77117.y));
				half3 Motion_20_Squash4418_g77006 = ( ( (max( Motion_SineA450_g77117 , Motion_SineB395_g77117 )*0.5 + 0.5) * Motion_Amplitude418_g77117 * Input_Squash58_g77117 * Input_MeshMotion_20388_g77117 * Input_BoundsRadius390_g77117 * Global_MotionValue462_g77117 ) * appendResult372_g77117 );
				half3 VertexPos40_g77080 = ( ( VertexPosRotationAxis50_g77089 + ( VertexPosOtherAxis82_g77089 * cos( Angle44_g77089 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g77089 ) * sin( Angle44_g77089 ) ) ) + Motion_20_Squash4418_g77006 );
				float3 appendResult74_g77080 = (float3(0.0 , VertexPos40_g77080.y , 0.0));
				float3 VertexPosRotationAxis50_g77080 = appendResult74_g77080;
				float3 break84_g77080 = VertexPos40_g77080;
				float3 appendResult81_g77080 = (float3(break84_g77080.x , 0.0 , break84_g77080.z));
				float3 VertexPosOtherAxis82_g77080 = appendResult81_g77080;
				half Input_Rolling379_g77117 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g77006 = ( Motion_SineA450_g77117 * Motion_Amplitude418_g77117 * Input_Rolling379_g77117 * Input_MeshMotion_20388_g77117 * Global_MotionValue462_g77117 );
				half Angle44_g77080 = Motion_20_Rolling5257_g77006;
				half3 Input_Position500_g77098 = WorldPosition_Shifted7477_g77006;
				half Input_MotionScale321_g77098 = _MotionScale_32;
				half Input_MotionVariation330_g77098 = _MotionVariation_32;
				half Input_GlobalVariation372_g77098 = Global_MeshVariation5104_g77006;
				float lerpResult128_g77099 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77098 = _MotionSpeed_32;
				float4 tex2DNode460_g77098 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77098).xz * Input_MotionScale321_g77098 * 0.03 ) + ( Input_MotionVariation330_g77098 * Input_GlobalVariation372_g77098 ) + ( lerpResult128_g77099 * Input_MotionSpeed62_g77098 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77098 = (float3(tex2DNode460_g77098.r , tex2DNode460_g77098.g , tex2DNode460_g77098.b));
				half3 Flutter_Texture489_g77098 = (appendResult462_g77098*2.0 + -1.0);
				float temp_output_7_0_g77056 = TVE_MotionFadeEnd;
				float temp_output_10_0_g77056 = ( TVE_MotionFadeStart - temp_output_7_0_g77056 );
				half Motion_FadeOut4005_g77006 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77056 ) / ( temp_output_10_0_g77056 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g77006 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g77006 * Motion_FadeOut4005_g77006 );
				half Input_MotionAmplitude58_g77098 = Motion_30_Amplitude4960_g77006;
				half Mesh_Motion_30144_g77006 = break61_g77121.y;
				half Input_MeshMotion_30374_g77098 = Mesh_Motion_30144_g77006;
				half Input_GlobalWind471_g77098 = Global_Wind_Power2223_g77006;
				half Global_MotionValue503_g77098 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77098 = Global_Noise_B5526_g77006;
				float lerpResult466_g77098 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77098);
				half Flutter_Amplitude491_g77098 = ( Input_MotionAmplitude58_g77098 * Input_MeshMotion_30374_g77098 * Input_GlobalWind471_g77098 * Global_MotionValue503_g77098 * pow( Input_GlobalNoise472_g77098 , lerpResult466_g77098 ) );
				half3 Motion_30_Flutter263_g77006 = ( Flutter_Texture489_g77098 * Flutter_Amplitude491_g77098 );
				float3 Vertex_Motion_Object833_g77006 = ( ( VertexPosRotationAxis50_g77080 + ( VertexPosOtherAxis82_g77080 * cos( Angle44_g77080 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g77080 ) * sin( Angle44_g77080 ) ) ) + Motion_30_Flutter263_g77006 );
				half3 ObjectData20_g77074 = Vertex_Motion_Object833_g77006;
				float3 temp_output_3474_0_g77006 = ( VertexPosition3588_g77006 - Mesh_PivotsOS2291_g77006 );
				float3 Vertex_Motion_World1118_g77006 = ( ( ( temp_output_3474_0_g77006 + Motion_10_Interaction7519_g77006 ) + Motion_20_Squash4418_g77006 ) + Motion_30_Flutter263_g77006 );
				half3 WorldData19_g77074 = Vertex_Motion_World1118_g77006;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77074 = WorldData19_g77074;
				#else
				float3 staticSwitch14_g77074 = ObjectData20_g77074;
				#endif
				float3 temp_output_7495_0_g77006 = staticSwitch14_g77074;
				float3 Vertex_Motion7493_g77006 = temp_output_7495_0_g77006;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 break2709_g77006 = cross( ViewDirection3963_g77006 , half3(0,1,0) );
				float3 appendResult2710_g77006 = (float3(-break2709_g77006.z , 0.0 , break2709_g77006.x));
				float3 appendResult2667_g77006 = (float3(Global_MeshVariation5104_g77006 , 0.5 , Global_MeshVariation5104_g77006));
				half Mesh_Height1524_g77006 = v.ase_color.a;
				float dotResult2212_g77006 = dot( ViewDirection3963_g77006 , float3(0,1,0) );
				half Mask_HView2656_g77006 = dotResult2212_g77006;
				float saferPower2652_g77006 = abs( Mask_HView2656_g77006 );
				half3 Grass_Perspective2661_g77006 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g77006 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g77006*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g77006 * pow( saferPower2652_g77006 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g77038 = _LayerVertexValue;
				float temp_output_19_0_g77042 = TVE_VertexUsage[(int)temp_output_84_0_g77038];
				float4 temp_output_94_19_g77038 = TVE_VertexCoords;
				half2 UV97_g77038 = ( (temp_output_94_19_g77038).zw + ( (temp_output_94_19_g77038).xy * (ObjectPosition4223_g77006).xz ) );
				float4 tex2DArrayNode50_g77038 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g77038,temp_output_84_0_g77038), 0.0 );
				float4 temp_output_17_0_g77042 = tex2DArrayNode50_g77038;
				float4 temp_output_111_19_g77038 = TVE_VertexParams;
				float4 temp_output_3_0_g77042 = temp_output_111_19_g77038;
				float4 ifLocalVar18_g77042 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77042 >= 0.5 )
				ifLocalVar18_g77042 = temp_output_17_0_g77042;
				else
				ifLocalVar18_g77042 = temp_output_3_0_g77042;
				float4 lerpResult22_g77042 = lerp( temp_output_3_0_g77042 , temp_output_17_0_g77042 , temp_output_19_0_g77042);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77042 = lerpResult22_g77042;
				#else
				float4 staticSwitch24_g77042 = ifLocalVar18_g77042;
				#endif
				half4 Global_Vertex_Params4173_g77006 = staticSwitch24_g77042;
				float4 break322_g77043 = Global_Vertex_Params4173_g77006;
				half Global_VertexSize174_g77006 = saturate( break322_g77043.w );
				float lerpResult346_g77006 = lerp( 1.0 , Global_VertexSize174_g77006 , _GlobalSize);
				float3 appendResult3480_g77006 = (float3(lerpResult346_g77006 , lerpResult346_g77006 , lerpResult346_g77006));
				half3 ObjectData20_g77071 = appendResult3480_g77006;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g77071 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77071 = WorldData19_g77071;
				#else
				float3 staticSwitch14_g77071 = ObjectData20_g77071;
				#endif
				half3 Vertex_Size1741_g77006 = staticSwitch14_g77071;
				float temp_output_7_0_g77072 = _SizeFadeEndValue;
				float temp_output_10_0_g77072 = ( _SizeFadeStartValue - temp_output_7_0_g77072 );
				float temp_output_7453_0_g77006 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g77006 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g77072 ) / ( temp_output_10_0_g77072 + 0.0001 ) ) );
				float3 appendResult3482_g77006 = (float3(temp_output_7453_0_g77006 , temp_output_7453_0_g77006 , temp_output_7453_0_g77006));
				half3 ObjectData20_g77070 = appendResult3482_g77006;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g77070 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g77070 = WorldData19_g77070;
				#else
				float3 staticSwitch14_g77070 = ObjectData20_g77070;
				#endif
				float3 Vertex_SizeFade1740_g77006 = staticSwitch14_g77070;
				float3 lerpResult16_g77075 = lerp( VertexPosition3588_g77006 , ( ( ( Vertex_Motion7493_g77006 + Grass_Perspective2661_g77006 ) * Vertex_Size1741_g77006 * Vertex_SizeFade1740_g77006 ) + Mesh_PivotsOS2291_g77006 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g77006 = lerpResult16_g77075;
				float3 Final_VertexPosition890_g77006 = ( temp_output_4912_0_g77006 + _DisableSRPBatcher );
				
				float4 break33_g77126 = _second_uvs_mode;
				float2 temp_output_30_0_g77126 = ( v.ase_texcoord.xy * break33_g77126.x );
				float2 appendResult21_g77121 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g77006 = appendResult21_g77121;
				float2 temp_output_29_0_g77126 = ( Mesh_DetailCoord3_g77006 * break33_g77126.y );
				float2 temp_output_31_0_g77126 = ( (WorldPosition_Shifted7477_g77006).xz * break33_g77126.z );
				half2 Second_UVs_Tilling7609_g77006 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g77006 = ( 1.0 / Second_UVs_Tilling7609_g77006 );
				float2 lerpResult7614_g77006 = lerp( Second_UVs_Tilling7609_g77006 , Second_UVs_Scale7610_g77006 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g77006 = (_SecondUVs).zw;
				float2 vertexToFrag11_g77032 = ( ( ( temp_output_30_0_g77126 + temp_output_29_0_g77126 + temp_output_31_0_g77126 ) * lerpResult7614_g77006 ) + Second_UVs_Offset7605_g77006 );
				o.ase_texcoord3.xy = vertexToFrag11_g77032;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				o.ase_texcoord7.xyz = vertexToFrag3890_g77006;
				o.ase_texcoord8.xyz = vertexToFrag4224_g77006;
				o.ase_texcoord9.xyz = ase_worldPos;
				
				o.ase_texcoord2 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				o.ase_texcoord9.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g77006;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				#if !defined( CAN_SKIP_VPOS )
				, UNITY_VPOS_TYPE vpos : VPOS
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(ASE_LIGHTING_SIMPLE)
					SurfaceOutput o = (SurfaceOutput)0;
				#else
					#if defined(_SPECULAR_SETUP)
						SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
					#else
						SurfaceOutputStandard o = (SurfaceOutputStandard)0;
					#endif
				#endif

				float localCustomAlphaClip19_g77109 = ( 0.0 );
				half2 Main_UVs15_g77006 = ( ( IN.ase_texcoord2.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g77006 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g77006 );
				half Main_Alpha316_g77006 = tex2DNode29_g77006.a;
				float2 vertexToFrag11_g77032 = IN.ase_texcoord3.xy;
				half2 Second_UVs17_g77006 = vertexToFrag11_g77032;
				float4 tex2DNode89_g77006 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g77006 );
				half Second_Alpha5007_g77006 = tex2DNode89_g77006.a;
				float4 tex2DNode35_g77006 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				half Main_Mask57_g77006 = tex2DNode35_g77006.b;
				float4 tex2DNode33_g77006 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g77006 );
				half Second_Mask81_g77006 = tex2DNode33_g77006.b;
				float lerpResult6885_g77006 = lerp( Main_Mask57_g77006 , Second_Mask81_g77006 , _DetailMaskMode);
				float clampResult17_g77084 = clamp( lerpResult6885_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77083 = _DetailMaskMinValue;
				float temp_output_10_0_g77083 = ( _DetailMaskMaxValue - temp_output_7_0_g77083 );
				half Blend_Mask_Texture6794_g77006 = saturate( ( ( clampResult17_g77084 - temp_output_7_0_g77083 ) / ( temp_output_10_0_g77083 + 0.0001 ) ) );
				half Mesh_DetailMask90_g77006 = IN.ase_color.b;
				half4 Normal_Packed45_g77110 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g77006 );
				float2 appendResult58_g77110 = (float2(( (Normal_Packed45_g77110).x * (Normal_Packed45_g77110).w ) , (Normal_Packed45_g77110).y));
				half2 Normal_Default50_g77110 = appendResult58_g77110;
				half2 Normal_ASTC41_g77110 = (Normal_Packed45_g77110).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77110 = Normal_ASTC41_g77110;
				#else
				float2 staticSwitch38_g77110 = Normal_Default50_g77110;
				#endif
				half2 Normal_NO_DTX544_g77110 = (Normal_Packed45_g77110).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77110 = Normal_NO_DTX544_g77110;
				#else
				float2 staticSwitch37_g77110 = staticSwitch38_g77110;
				#endif
				float2 temp_output_6555_0_g77006 = ( (staticSwitch37_g77110*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g77006 = (float3(temp_output_6555_0_g77006 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g77006 = appendResult7388_g77006;
				float3 worldNormal7389_g77006 = float3(dot(tanToWorld0,tanNormal7389_g77006), dot(tanToWorld1,tanNormal7389_g77006), dot(tanToWorld2,tanNormal7389_g77006));
				half3 Main_NormalWS7390_g77006 = worldNormal7389_g77006;
				float lerpResult6884_g77006 = lerp( Mesh_DetailMask90_g77006 , ((Main_NormalWS7390_g77006).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g77082 = clamp( lerpResult6884_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77081 = _DetailMeshMinValue;
				float temp_output_10_0_g77081 = ( _DetailMeshMaxValue - temp_output_7_0_g77081 );
				half Blend_Mask_Mesh1540_g77006 = saturate( ( ( clampResult17_g77082 - temp_output_7_0_g77081 ) / ( temp_output_10_0_g77081 + 0.0001 ) ) );
				float clampResult17_g77092 = clamp( ( Blend_Mask_Texture6794_g77006 * Blend_Mask_Mesh1540_g77006 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77107 = _DetailBlendMinValue;
				float temp_output_10_0_g77107 = ( _DetailBlendMaxValue - temp_output_7_0_g77107 );
				half Blend_Mask147_g77006 = ( saturate( ( ( clampResult17_g77092 - temp_output_7_0_g77107 ) / ( temp_output_10_0_g77107 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float lerpResult6153_g77006 = lerp( Main_Alpha316_g77006 , Second_Alpha5007_g77006 , Blend_Mask147_g77006);
				float lerpResult6785_g77006 = lerp( ( Main_Alpha316_g77006 * Second_Alpha5007_g77006 ) , lerpResult6153_g77006 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g77006 = lerpResult6785_g77006;
				#else
				float staticSwitch6158_g77006 = Main_Alpha316_g77006;
				#endif
				half Blend_Alpha6157_g77006 = staticSwitch6158_g77006;
				half AlphaTreshold2132_g77006 = _AlphaClipValue;
				float temp_output_84_0_g77022 = _LayerExtrasValue;
				float temp_output_19_0_g77026 = TVE_ExtrasUsage[(int)temp_output_84_0_g77022];
				float4 temp_output_93_19_g77022 = TVE_ExtrasCoords;
				float3 vertexToFrag3890_g77006 = IN.ase_texcoord7.xyz;
				float3 WorldPosition3905_g77006 = vertexToFrag3890_g77006;
				float3 vertexToFrag4224_g77006 = IN.ase_texcoord8.xyz;
				float3 ObjectPosition4223_g77006 = vertexToFrag4224_g77006;
				float3 lerpResult4827_g77006 = lerp( WorldPosition3905_g77006 , ObjectPosition4223_g77006 , _ExtrasPositionMode);
				half2 UV96_g77022 = ( (temp_output_93_19_g77022).zw + ( (temp_output_93_19_g77022).xy * (lerpResult4827_g77006).xz ) );
				float4 tex2DArrayNode48_g77022 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g77022,temp_output_84_0_g77022), 0.0 );
				float4 temp_output_17_0_g77026 = tex2DArrayNode48_g77022;
				float4 temp_output_94_85_g77022 = TVE_ExtrasParams;
				float4 temp_output_3_0_g77026 = temp_output_94_85_g77022;
				float4 ifLocalVar18_g77026 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g77026 >= 0.5 )
				ifLocalVar18_g77026 = temp_output_17_0_g77026;
				else
				ifLocalVar18_g77026 = temp_output_3_0_g77026;
				float4 lerpResult22_g77026 = lerp( temp_output_3_0_g77026 , temp_output_17_0_g77026 , temp_output_19_0_g77026);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g77026 = lerpResult22_g77026;
				#else
				float4 staticSwitch24_g77026 = ifLocalVar18_g77026;
				#endif
				half4 Global_Extras_Params5440_g77006 = staticSwitch24_g77026;
				float4 break456_g77036 = Global_Extras_Params5440_g77006;
				half Global_Extras_Alpha1033_g77006 = saturate( break456_g77036.w );
				float3 ObjectPosition_Shifted7481_g77006 = ( ObjectPosition4223_g77006 - TVE_WorldOrigin );
				half3 Input_Position167_g77132 = ObjectPosition_Shifted7481_g77006;
				float dotResult156_g77132 = dot( (Input_Position167_g77132).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g77006 = _VertexDynamicMode;
				half Input_DynamicMode120_g77132 = Vertex_DynamicMode5112_g77006;
				float Postion_Random162_g77132 = ( sin( dotResult156_g77132 ) * ( 1.0 - Input_DynamicMode120_g77132 ) );
				float Mesh_Variation16_g77006 = IN.ase_color.r;
				half Input_Variation124_g77132 = Mesh_Variation16_g77006;
				half ObjectData20_g77134 = frac( ( Postion_Random162_g77132 + Input_Variation124_g77132 ) );
				half WorldData19_g77134 = Input_Variation124_g77132;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77134 = WorldData19_g77134;
				#else
				float staticSwitch14_g77134 = ObjectData20_g77134;
				#endif
				float temp_output_112_0_g77132 = staticSwitch14_g77134;
				float clampResult171_g77132 = clamp( temp_output_112_0_g77132 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g77006 = clampResult171_g77132;
				float lerpResult5154_g77006 = lerp( 0.0 , Global_MeshVariation5104_g77006 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g77006 = lerpResult5154_g77006;
				float Emissive_Alpha7625_g77006 = 0.0;
				float lerpResult6866_g77006 = lerp( ( 1.0 - Blend_Mask147_g77006 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g77006 = lerpResult6866_g77006;
				#else
				float staticSwitch6612_g77006 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g77006 = staticSwitch6612_g77006;
				half Alpha_Mask6234_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5203_g77006 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g77006 - saturate( ( Global_Alpha_Variation5158_g77006 + Emissive_Alpha7625_g77006 ) ) ) + ( Global_Extras_Alpha1033_g77006 * 0.1 ) ) ) , ( Alpha_Mask6234_g77006 * _GlobalAlpha ));
				float lerpResult16_g77050 = lerp( 1.0 , lerpResult5203_g77006 , TVE_IsEnabled);
				half Global_Alpha315_g77006 = lerpResult16_g77050;
				float3 ase_worldPos = IN.ase_texcoord9.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g77006 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g77006 = normalizeResult2169_g77006;
				float3 normalizeResult3971_g77006 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 WorldNormal_Derivates3972_g77006 = normalizeResult3971_g77006;
				float dotResult3851_g77006 = dot( ViewDirection3963_g77006 , WorldNormal_Derivates3972_g77006 );
				float lerpResult3993_g77006 = lerp( 1.0 , saturate( ( abs( dotResult3851_g77006 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g77006 = lerpResult3993_g77006;
				half Fade_Effects_A5360_g77006 = Fade_Glancing3853_g77006;
				float temp_output_7_0_g77059 = TVE_CameraFadeMin;
				float temp_output_10_0_g77059 = ( TVE_CameraFadeMax - temp_output_7_0_g77059 );
				float lerpResult4755_g77006 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g77059 ) / ( temp_output_10_0_g77059 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g77006 = lerpResult4755_g77006;
				half Fade_Effects_B6228_g77006 = ( Fade_Effects_A5360_g77006 * Fade_Camera3743_g77006 );
				half Fade_Mask5149_g77006 = ( 1.0 * Blend_Mask_Invert6260_g77006 );
				float lerpResult5141_g77006 = lerp( 1.0 , ( Fade_Effects_B6228_g77006 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g77006);
				half Fade_Effects_C7653_g77006 = lerpResult5141_g77006;
				float temp_output_5865_0_g77006 = saturate( ( Fade_Effects_C7653_g77006 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g77006 ) ).r ) );
				half Fade_Alpha3727_g77006 = temp_output_5865_0_g77006;
				half Final_Alpha7344_g77006 = min( ( ( Blend_Alpha6157_g77006 - AlphaTreshold2132_g77006 ) * Global_Alpha315_g77006 ) , Fade_Alpha3727_g77006 );
				float temp_output_3_0_g77109 = Final_Alpha7344_g77006;
				float Alpha19_g77109 = temp_output_3_0_g77109;
				float temp_output_15_0_g77109 = 0.01;
				float Treshold19_g77109 = temp_output_15_0_g77109;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#else
				clip(Alpha19_g77109 - Treshold19_g77109);
				#endif
				#endif
				}
				float clampResult17_g77111 = clamp( Main_Mask57_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77112 = _MainMaskMinValue;
				float temp_output_10_0_g77112 = ( _MainMaskMaxValue - temp_output_7_0_g77112 );
				half Main_Mask_Remap5765_g77006 = saturate( ( ( clampResult17_g77111 - temp_output_7_0_g77112 ) / ( temp_output_10_0_g77112 + 0.0001 ) ) );
				float lerpResult7671_g77006 = lerp( 1.0 , Main_Mask_Remap5765_g77006 , _MainColorMode);
				float4 lerpResult7654_g77006 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g77006);
				half Main_Color_Alpha6121_g77006 = (lerpResult7654_g77006).a;
				float clampResult17_g77114 = clamp( Second_Mask81_g77006 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77115 = _SecondMaskMinValue;
				float temp_output_10_0_g77115 = ( _SecondMaskMaxValue - temp_output_7_0_g77115 );
				half Second_Mask_Remap6130_g77006 = saturate( ( ( clampResult17_g77114 - temp_output_7_0_g77115 ) / ( temp_output_10_0_g77115 + 0.0001 ) ) );
				float lerpResult7672_g77006 = lerp( 1.0 , Second_Mask_Remap6130_g77006 , _SecondColorMode);
				float4 lerpResult7662_g77006 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g77006);
				half Second_Color_Alpha6152_g77006 = (lerpResult7662_g77006).a;
				float lerpResult6168_g77006 = lerp( Main_Color_Alpha6121_g77006 , Second_Color_Alpha6152_g77006 , Blend_Mask147_g77006);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g77006 = lerpResult6168_g77006;
				#else
				float staticSwitch6174_g77006 = Main_Color_Alpha6121_g77006;
				#endif
				half Blend_Color_Alpha6167_g77006 = staticSwitch6174_g77006;
				half Final_Clip914_g77006 = saturate( ( Alpha19_g77109 * Blend_Color_Alpha6167_g77006 ) );
				
				o.Normal = fixed3( 0, 0, 1 );
				#if !defined(ASE_LIGHTING_SIMPLE)
					o.Occlusion = 1;
				#endif
				o.Alpha = Final_Clip914_g77006;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef _ALPHATEST_SHADOW_ON
					if (unity_LightShadowBias.z != 0.0)
						clip(o.Alpha - AlphaClipThresholdShadow);
					#ifdef _ALPHATEST_ON
					else
						clip(o.Alpha - AlphaClipThreshold);
					#endif
				#else
					#ifdef _ALPHATEST_ON
						clip(o.Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif

				#ifdef UNITY_STANDARD_USE_DITHER_MASK
					half alphaRef = tex3D(_DitherMaskLOD, float3(vpos.xy*0.25,o.Alpha*0.9375)).a;
					clip(alphaRef - 0.01);
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				SHADOW_CASTER_FRAGMENT(IN)
			}
			ENDCG
		}
		
	}
	CustomEditor "TVEShaderCoreGUI"
	
	Fallback "Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback"
}
/*ASEBEGIN
Version=19202
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-768;Half;False;Property;_render_cull;_render_cull;248;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1277.803;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;408;-2176,384;Inherit;False;1282.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-896;Inherit;False;1282.837;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;641;-1408,-768;Half;False;Property;_render_coverage;_render_coverage;252;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1595,-771;Half;False;Property;_render_zw;_render_zw;251;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-1984,-768;Half;False;Property;_render_src;_render_src;249;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1792,-768;Half;False;Property;_render_dst;_render_dst;250;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;638;-2176,512;Inherit;False;Define Pipeline Standard;-1;;76876;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;640;-1280,512;Inherit;False;Compile Core;-1;;76879;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;639;-1088,512;Inherit;False;Compile All Shaders;-1;;76880;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;673;-1920,512;Inherit;False;Define Lighting Standard;253;;77004;116a5c57ec750cb4896f729a6748c509;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;610;-1664,512;Inherit;False;Define ShaderType Plant;255;;77005;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;672;-2176,-384;Inherit;False;Base Shader Core;0;;77006;856f7164d1c579d43a5cf4968a75ca43;98,7343,0,3880,1,4028,1,3900,1,3908,1,4172,1,7691,1,7692,1,4179,1,6791,1,1298,1,1300,1,6792,1,3586,0,4499,1,1708,1,6056,1,3509,1,3873,1,893,1,6230,0,5156,1,5345,0,1717,1,1718,1,7566,1,6116,1,5075,1,1714,1,1715,1,6076,1,6068,1,6592,1,6692,0,6729,1,1776,1,6352,1,6378,1,3475,1,6655,1,4210,1,1745,1,3479,0,1646,1,3501,1,2807,1,6206,1,7565,1,4999,0,6194,1,3887,0,7321,0,7332,0,3957,1,6647,0,6257,0,5357,0,2172,1,3883,0,7650,0,3728,1,5350,0,2658,1,7617,0,1742,1,3484,0,6166,1,6161,1,1736,1,4837,1,1734,1,6848,1,6320,1,1737,1,6622,1,1735,1,7429,0,7624,0,860,1,6721,1,2261,1,2260,1,2054,1,2032,1,5258,1,2039,1,2062,1,7548,1,7550,1,3243,1,5220,1,4217,1,6699,1,5339,0,7689,1,7492,0,5090,1,4242,1;10;7333;FLOAT3;1,1,1;False;6196;FLOAT;1;False;6693;FLOAT;1;False;6201;FLOAT;1;False;6205;FLOAT;1;False;7652;FLOAT;1;False;5143;FLOAT;1;False;6231;FLOAT;1;False;6198;FLOAT;1;False;5340;FLOAT3;0,0,0;False;23;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4842;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT;532;FLOAT;5389;FLOAT;721;FLOAT3;1230;FLOAT;5296;FLOAT;1461;FLOAT;1290;FLOAT;629;FLOAT3;534;FLOAT;4867;FLOAT4;5246;FLOAT4;4841
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;674;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ExtraPrePass;0;0;ExtraPrePass;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;675;-1152,-384;Float;False;True;-1;2;TVEShaderCoreGUI;0;17;BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Standard Lit;28cd5599e02859647ae1798e4fcaef6c;True;ForwardBase;0;1;ForwardBase;20;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;True;_render_coverage;True;True;2;True;_render_cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_render_zw;True;0;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;5;False;0;True;True;1;1;True;_render_src;0;True;_render_dst;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;0;0;Standard;41;Category;0;0;Workflow;0;638375590553056210;Surface;0;0;  Blend;0;0;  Refraction Model;0;0;  Dither Shadows;1;0;Two Sided;0;638375590536500017;Deferred Pass;1;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Ambient Light;1;0;Meta Pass;1;0;Add Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Fwd Specular Highlights Toggle;0;0;Fwd Reflections Toggle;0;0;Disable Batching;0;0;Vertex Position,InvertActionOnDeselection;0;638375590615142544;0;6;False;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;676;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ForwardAdd;0;2;ForwardAdd;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;677;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Deferred;0;3;Deferred;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;678;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Meta;0;4;Meta;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;679;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ShadowCaster;0;5;ShadowCaster;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
WireConnection;675;0;672;0
WireConnection;675;1;672;528
WireConnection;675;2;672;2489
WireConnection;675;3;672;3678
WireConnection;675;6;672;531
WireConnection;675;5;672;530
WireConnection;675;7;672;532
WireConnection;675;15;672;534
ASEEND*/
//CHKSM=9608E80A5BA24B92C81CF5D4FC8CAE32DC74585B
