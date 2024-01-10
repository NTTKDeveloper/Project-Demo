// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Subsurface Lit"
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
		[HideInInspector]_render_src("_render_src", Float) = 5
		[HideInInspector]_render_dst("_render_dst", Float) = 10
		[HideInInspector]_render_zw("_render_zw", Float) = 1
		[HideInInspector]_render_coverage("_render_coverage", Float) = 0
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1
		[HideInInspector]_IsPlantShader("_IsPlantShader", Float) = 1

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		_TransStrength( "Strength", Range( 0, 50 ) ) = 1
		_TransNormal( "Normal Distortion", Range( 0, 1 ) ) = 0.5
		_TransScattering( "Scattering", Range( 1, 50 ) ) = 2
		_TransDirect( "Direct", Range( 0, 1 ) ) = 0.9
		_TransAmbient( "Ambient", Range( 0, 1 ) ) = 0.1
		_TransShadow( "Shadow", Range( 0, 1 ) ) = 0.5
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
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _SPECULAR_SETUP 1
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
			#define TVE_IS_SUBSURFACE_SHADER
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
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
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
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;


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

				float3 VertexPosition3588_g76908 = v.vertex.xyz;
				float3 appendResult60_g76918 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76908 = ( appendResult60_g76918 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g76908 = Mesh_PivotsData2831_g76908;
				float3 temp_output_2283_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				half3 VertexPos40_g76989 = temp_output_2283_0_g76908;
				half3 VertexPos40_g76990 = VertexPos40_g76989;
				float3 appendResult74_g76990 = (float3(VertexPos40_g76990.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76990 = appendResult74_g76990;
				float3 break84_g76990 = VertexPos40_g76990;
				float3 appendResult81_g76990 = (float3(0.0 , break84_g76990.y , break84_g76990.z));
				half3 VertexPosOtherAxis82_g76990 = appendResult81_g76990;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76908 = ase_worldPos;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 WorldPosition_Shifted7477_g76908 = ( WorldPosition3905_g76908 - TVE_WorldOrigin );
				float4x4 break19_g76964 = unity_ObjectToWorld;
				float3 appendResult20_g76964 = (float3(break19_g76964[ 0 ][ 3 ] , break19_g76964[ 1 ][ 3 ] , break19_g76964[ 2 ][ 3 ]));
				float3 temp_output_122_0_g76964 = Mesh_PivotsData2831_g76908;
				float3 PivotsOnly105_g76964 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76964 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76966 = ( appendResult20_g76964 + PivotsOnly105_g76964 );
				half3 WorldData19_g76966 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76966 = WorldData19_g76966;
				#else
				float3 staticSwitch14_g76966 = ObjectData20_g76966;
				#endif
				float3 temp_output_114_0_g76964 = staticSwitch14_g76966;
				float3 vertexToFrag4224_g76908 = temp_output_114_0_g76964;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				float3 lerpResult6766_g76908 = lerp( WorldPosition_Shifted7477_g76908 , ObjectPosition_Shifted7481_g76908 , _MotionPosition_10);
				float3 Motion_10_Position6738_g76908 = lerpResult6766_g76908;
				half3 Input_Position419_g77004 = Motion_10_Position6738_g76908;
				float Input_MotionScale287_g77004 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77004 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77004 = (( Input_Position419_g77004 * Input_MotionScale287_g77004 * NoiseTex_Tilling735_g77004 * 0.0075 )).xz;
				float2 temp_output_447_0_g76913 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g76908 = temp_output_447_0_g76913;
				half2 Input_DirectionWS423_g77004 = Global_Wind_DirectionWS4683_g76908;
				float lerpResult128_g77005 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77004 = _MotionSpeed_10;
				half Input_MotionVariation284_g77004 = _MotionVariation_10;
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = v.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				half Input_GlobalMeshVariation569_g77004 = Global_MeshVariation5104_g76908;
				float temp_output_630_0_g77004 = ( ( ( lerpResult128_g77005 * Input_MotionSpeed62_g77004 ) + ( Input_MotionVariation284_g77004 * Input_GlobalMeshVariation569_g77004 ) ) * 0.03 );
				float temp_output_607_0_g77004 = frac( temp_output_630_0_g77004 );
				float4 lerpResult590_g77004 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * temp_output_607_0_g77004 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * frac( ( temp_output_630_0_g77004 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77004 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77004 = lerpResult590_g77004;
				float2 temp_output_645_0_g77004 = ((Noise_Complex703_g77004).rg*2.0 + -1.0);
				float2 break650_g77004 = temp_output_645_0_g77004;
				float3 appendResult649_g77004 = (float3(break650_g77004.x , 0.0 , break650_g77004.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g76908 = (( mul( unity_WorldToObject, float4( appendResult649_g77004 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76995 = Global_Noise_OS5548_g76908;
				float2 break448_g76913 = temp_output_447_0_g76913;
				float3 appendResult452_g76913 = (float3(break448_g76913.x , 0.0 , break448_g76913.y));
				half2 Global_Wind_DirectionOS5692_g76908 = (( mul( unity_WorldToObject, float4( appendResult452_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76995 = Global_Wind_DirectionOS5692_g76908;
				float temp_output_84_0_g76919 = _LayerMotionValue;
				float temp_output_19_0_g76923 = TVE_MotionUsage[(int)temp_output_84_0_g76919];
				float4 temp_output_91_19_g76919 = TVE_MotionCoords;
				half2 UV94_g76919 = ( (temp_output_91_19_g76919).zw + ( (temp_output_91_19_g76919).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76919 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76919,temp_output_84_0_g76919), 0.0 );
				float4 temp_output_17_0_g76923 = tex2DArrayNode50_g76919;
				float4 temp_output_112_19_g76919 = TVE_MotionParams;
				float4 temp_output_3_0_g76923 = temp_output_112_19_g76919;
				float4 ifLocalVar18_g76923 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76923 >= 0.5 )
				ifLocalVar18_g76923 = temp_output_17_0_g76923;
				else
				ifLocalVar18_g76923 = temp_output_3_0_g76923;
				float4 lerpResult22_g76923 = lerp( temp_output_3_0_g76923 , temp_output_17_0_g76923 , temp_output_19_0_g76923);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76923 = lerpResult22_g76923;
				#else
				float4 staticSwitch24_g76923 = ifLocalVar18_g76923;
				#endif
				half4 Global_Motion_Params3909_g76908 = staticSwitch24_g76923;
				float4 break322_g76913 = Global_Motion_Params3909_g76908;
				float lerpResult457_g76913 = lerp( break322_g76913.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76913 = ( 1.0 - lerpResult457_g76913 );
				half Global_Wind_Power2223_g76908 = ( 1.0 - ( temp_output_459_0_g76913 * temp_output_459_0_g76913 ) );
				half Input_WindPower449_g76995 = Global_Wind_Power2223_g76908;
				float2 lerpResult516_g76995 = lerp( Input_Noise_DirectionOS487_g76995 , Input_Wind_DirectionOS458_g76995 , ( Input_WindPower449_g76995 * 0.6 ));
				half Mesh_Motion_107572_g76908 = v.ase_color.a;
				half Input_MeshHeight388_g76995 = Mesh_Motion_107572_g76908;
				half ObjectData20_g76996 = Input_MeshHeight388_g76995;
				float enc62_g77023 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77023 = DecodeFloatToVector2( enc62_g77023 );
				float2 break63_g77023 = ( localDecodeFloatToVector262_g77023 * 100.0 );
				float Bounds_Height5230_g76908 = break63_g77023.x;
				half Input_BoundsHeight390_g76995 = Bounds_Height5230_g76908;
				half WorldData19_g76996 = ( Input_MeshHeight388_g76995 * Input_MeshHeight388_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76996 = WorldData19_g76996;
				#else
				float staticSwitch14_g76996 = ObjectData20_g76996;
				#endif
				half Final_Motion10_Mask321_g76995 = ( staticSwitch14_g76996 * 2.0 );
				half Input_BendingAmplitude376_g76995 = _MotionAmplitude_10;
				half Global_MotionValue640_g76995 = TVE_MotionValue_10;
				half2 Final_Bending631_g76995 = ( lerpResult516_g76995 * ( Final_Motion10_Mask321_g76995 * Input_BendingAmplitude376_g76995 * Input_WindPower449_g76995 * Input_WindPower449_g76995 * Global_MotionValue640_g76995 ) );
				float2 appendResult433_g76913 = (float2(break322_g76913.x , break322_g76913.y));
				float2 temp_output_436_0_g76913 = (appendResult433_g76913*2.0 + -1.0);
				float2 break441_g76913 = temp_output_436_0_g76913;
				float3 appendResult440_g76913 = (float3(break441_g76913.x , 0.0 , break441_g76913.y));
				half2 Global_React_DirectionOS39_g76908 = (( mul( unity_WorldToObject, float4( appendResult440_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76995 = Global_React_DirectionOS39_g76908;
				float clampResult17_g76998 = clamp( Input_MeshHeight388_g76995 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76997 = 0.0;
				half Input_InteractionUseMask62_g76995 = _InteractionMaskValue;
				float temp_output_10_0_g76997 = ( Input_InteractionUseMask62_g76995 - temp_output_7_0_g76997 );
				half Final_InteractionRemap594_g76995 = saturate( ( ( clampResult17_g76998 - temp_output_7_0_g76997 ) / ( temp_output_10_0_g76997 + 0.0001 ) ) );
				half ObjectData20_g76999 = Final_InteractionRemap594_g76995;
				half WorldData19_g76999 = ( Final_InteractionRemap594_g76995 * Final_InteractionRemap594_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76999 = WorldData19_g76999;
				#else
				float staticSwitch14_g76999 = ObjectData20_g76999;
				#endif
				half Final_InteractionMask373_g76995 = ( staticSwitch14_g76999 * 2.0 );
				half Input_InteractionAmplitude58_g76995 = _InteractionAmplitude;
				half2 Final_Interaction632_g76995 = ( Input_React_DirectionOS358_g76995 * Final_InteractionMask373_g76995 * Input_InteractionAmplitude58_g76995 );
				half Global_Interaction_Mask66_g76908 = ( break322_g76913.w * break322_g76913.w * break322_g76913.w * break322_g76913.w );
				float Input_InteractionGlobalMask330_g76995 = Global_Interaction_Mask66_g76908;
				half Final_InteractionValue525_g76995 = saturate( ( Input_InteractionAmplitude58_g76995 * Input_InteractionGlobalMask330_g76995 ) );
				float2 lerpResult551_g76995 = lerp( Final_Bending631_g76995 , Final_Interaction632_g76995 , Final_InteractionValue525_g76995);
				float2 break364_g76995 = lerpResult551_g76995;
				float3 appendResult638_g76995 = (float3(break364_g76995.x , 0.0 , break364_g76995.y));
				half3 Motion_10_Interaction7519_g76908 = appendResult638_g76995;
				half3 Angle44_g76989 = Motion_10_Interaction7519_g76908;
				half Angle44_g76990 = (Angle44_g76989).z;
				half3 VertexPos40_g76991 = ( VertexPosRotationAxis50_g76990 + ( VertexPosOtherAxis82_g76990 * cos( Angle44_g76990 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76990 ) * sin( Angle44_g76990 ) ) );
				float3 appendResult74_g76991 = (float3(0.0 , 0.0 , VertexPos40_g76991.z));
				half3 VertexPosRotationAxis50_g76991 = appendResult74_g76991;
				float3 break84_g76991 = VertexPos40_g76991;
				float3 appendResult81_g76991 = (float3(break84_g76991.x , break84_g76991.y , 0.0));
				half3 VertexPosOtherAxis82_g76991 = appendResult81_g76991;
				half Angle44_g76991 = -(Angle44_g76989).x;
				half3 Input_Position419_g77019 = WorldPosition_Shifted7477_g76908;
				float3 break459_g77019 = Input_Position419_g77019;
				float Sum_Position446_g77019 = ( break459_g77019.x + break459_g77019.y + break459_g77019.z );
				half Input_MotionScale321_g77019 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77019 = _MotionVariation_20;
				half Input_GlobalVariation400_g77019 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77020 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77019 = _MotionSpeed_20;
				float temp_output_404_0_g77019 = ( lerpResult128_g77020 * Input_MotionSpeed62_g77019 );
				half Motion_SineA450_g77019 = sin( ( ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) + ( Input_MotionVariation330_g77019 * Input_GlobalVariation400_g77019 ) + temp_output_404_0_g77019 ) );
				half Motion_SineB395_g77019 = sin( ( ( temp_output_404_0_g77019 * 0.6842 ) + ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) ) );
				half3 Input_Position419_g77032 = VertexPosition3588_g76908;
				float3 normalizeResult518_g77032 = normalize( Input_Position419_g77032 );
				half2 Input_DirectionOS423_g77032 = Global_React_DirectionOS39_g76908;
				float2 break521_g77032 = -Input_DirectionOS423_g77032;
				float3 appendResult522_g77032 = (float3(break521_g77032.x , 0.0 , break521_g77032.y));
				float dotResult519_g77032 = dot( normalizeResult518_g77032 , appendResult522_g77032 );
				half Input_Value62_g77032 = _MotionFacingValue;
				float lerpResult524_g77032 = lerp( 1.0 , (dotResult519_g77032*0.5 + 0.5) , Input_Value62_g77032);
				half ObjectData20_g77033 = max( lerpResult524_g77032 , 0.001 );
				half WorldData19_g77033 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77033 = WorldData19_g77033;
				#else
				float staticSwitch14_g77033 = ObjectData20_g77033;
				#endif
				half Motion_FacingMask5214_g76908 = staticSwitch14_g77033;
				half Motion_20_Amplitude4381_g76908 = Motion_FacingMask5214_g76908;
				half Input_MotionAmplitude384_g77019 = Motion_20_Amplitude4381_g76908;
				half Input_GlobalWind407_g77019 = Global_Wind_Power2223_g76908;
				float4 break638_g77004 = abs( Noise_Complex703_g77004 );
				half Global_Noise_B5526_g76908 = break638_g77004.b;
				half Input_GlobalNoise411_g77019 = Global_Noise_B5526_g76908;
				float lerpResult413_g77019 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77019);
				half Motion_Amplitude418_g77019 = ( Input_MotionAmplitude384_g77019 * Input_GlobalWind407_g77019 * pow( Input_GlobalNoise411_g77019 , lerpResult413_g77019 ) );
				half Input_Squash58_g77019 = _MotionAmplitude_20;
				float enc59_g77023 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77023 = DecodeFloatToVector2( enc59_g77023 );
				float2 break61_g77023 = localDecodeFloatToVector259_g77023;
				half Mesh_Motion_2060_g76908 = break61_g77023.x;
				half Input_MeshMotion_20388_g77019 = Mesh_Motion_2060_g76908;
				float Bounds_Radius5231_g76908 = break63_g77023.y;
				half Input_BoundsRadius390_g77019 = Bounds_Radius5231_g76908;
				half Global_MotionValue462_g77019 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77019 = Global_React_DirectionOS39_g76908;
				float2 break371_g77019 = Input_DirectionOS366_g77019;
				float3 appendResult372_g77019 = (float3(break371_g77019.x , ( Motion_SineA450_g77019 * 0.3 ) , break371_g77019.y));
				half3 Motion_20_Squash4418_g76908 = ( ( (max( Motion_SineA450_g77019 , Motion_SineB395_g77019 )*0.5 + 0.5) * Motion_Amplitude418_g77019 * Input_Squash58_g77019 * Input_MeshMotion_20388_g77019 * Input_BoundsRadius390_g77019 * Global_MotionValue462_g77019 ) * appendResult372_g77019 );
				half3 VertexPos40_g76982 = ( ( VertexPosRotationAxis50_g76991 + ( VertexPosOtherAxis82_g76991 * cos( Angle44_g76991 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76991 ) * sin( Angle44_g76991 ) ) ) + Motion_20_Squash4418_g76908 );
				float3 appendResult74_g76982 = (float3(0.0 , VertexPos40_g76982.y , 0.0));
				float3 VertexPosRotationAxis50_g76982 = appendResult74_g76982;
				float3 break84_g76982 = VertexPos40_g76982;
				float3 appendResult81_g76982 = (float3(break84_g76982.x , 0.0 , break84_g76982.z));
				float3 VertexPosOtherAxis82_g76982 = appendResult81_g76982;
				half Input_Rolling379_g77019 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g76908 = ( Motion_SineA450_g77019 * Motion_Amplitude418_g77019 * Input_Rolling379_g77019 * Input_MeshMotion_20388_g77019 * Global_MotionValue462_g77019 );
				half Angle44_g76982 = Motion_20_Rolling5257_g76908;
				half3 Input_Position500_g77000 = WorldPosition_Shifted7477_g76908;
				half Input_MotionScale321_g77000 = _MotionScale_32;
				half Input_MotionVariation330_g77000 = _MotionVariation_32;
				half Input_GlobalVariation372_g77000 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77001 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77000 = _MotionSpeed_32;
				float4 tex2DNode460_g77000 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77000).xz * Input_MotionScale321_g77000 * 0.03 ) + ( Input_MotionVariation330_g77000 * Input_GlobalVariation372_g77000 ) + ( lerpResult128_g77001 * Input_MotionSpeed62_g77000 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77000 = (float3(tex2DNode460_g77000.r , tex2DNode460_g77000.g , tex2DNode460_g77000.b));
				half3 Flutter_Texture489_g77000 = (appendResult462_g77000*2.0 + -1.0);
				float temp_output_7_0_g76958 = TVE_MotionFadeEnd;
				float temp_output_10_0_g76958 = ( TVE_MotionFadeStart - temp_output_7_0_g76958 );
				half Motion_FadeOut4005_g76908 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76958 ) / ( temp_output_10_0_g76958 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g76908 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g76908 * Motion_FadeOut4005_g76908 );
				half Input_MotionAmplitude58_g77000 = Motion_30_Amplitude4960_g76908;
				half Mesh_Motion_30144_g76908 = break61_g77023.y;
				half Input_MeshMotion_30374_g77000 = Mesh_Motion_30144_g76908;
				half Input_GlobalWind471_g77000 = Global_Wind_Power2223_g76908;
				half Global_MotionValue503_g77000 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77000 = Global_Noise_B5526_g76908;
				float lerpResult466_g77000 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77000);
				half Flutter_Amplitude491_g77000 = ( Input_MotionAmplitude58_g77000 * Input_MeshMotion_30374_g77000 * Input_GlobalWind471_g77000 * Global_MotionValue503_g77000 * pow( Input_GlobalNoise472_g77000 , lerpResult466_g77000 ) );
				half3 Motion_30_Flutter263_g76908 = ( Flutter_Texture489_g77000 * Flutter_Amplitude491_g77000 );
				float3 Vertex_Motion_Object833_g76908 = ( ( VertexPosRotationAxis50_g76982 + ( VertexPosOtherAxis82_g76982 * cos( Angle44_g76982 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g76982 ) * sin( Angle44_g76982 ) ) ) + Motion_30_Flutter263_g76908 );
				half3 ObjectData20_g76976 = Vertex_Motion_Object833_g76908;
				float3 temp_output_3474_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				float3 Vertex_Motion_World1118_g76908 = ( ( ( temp_output_3474_0_g76908 + Motion_10_Interaction7519_g76908 ) + Motion_20_Squash4418_g76908 ) + Motion_30_Flutter263_g76908 );
				half3 WorldData19_g76976 = Vertex_Motion_World1118_g76908;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76976 = WorldData19_g76976;
				#else
				float3 staticSwitch14_g76976 = ObjectData20_g76976;
				#endif
				float3 temp_output_7495_0_g76908 = staticSwitch14_g76976;
				float3 Vertex_Motion7493_g76908 = temp_output_7495_0_g76908;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 break2709_g76908 = cross( ViewDirection3963_g76908 , half3(0,1,0) );
				float3 appendResult2710_g76908 = (float3(-break2709_g76908.z , 0.0 , break2709_g76908.x));
				float3 appendResult2667_g76908 = (float3(Global_MeshVariation5104_g76908 , 0.5 , Global_MeshVariation5104_g76908));
				half Mesh_Height1524_g76908 = v.ase_color.a;
				float dotResult2212_g76908 = dot( ViewDirection3963_g76908 , float3(0,1,0) );
				half Mask_HView2656_g76908 = dotResult2212_g76908;
				float saferPower2652_g76908 = abs( Mask_HView2656_g76908 );
				half3 Grass_Perspective2661_g76908 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g76908 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g76908*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g76908 * pow( saferPower2652_g76908 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g76940 = _LayerVertexValue;
				float temp_output_19_0_g76944 = TVE_VertexUsage[(int)temp_output_84_0_g76940];
				float4 temp_output_94_19_g76940 = TVE_VertexCoords;
				half2 UV97_g76940 = ( (temp_output_94_19_g76940).zw + ( (temp_output_94_19_g76940).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76940 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76940,temp_output_84_0_g76940), 0.0 );
				float4 temp_output_17_0_g76944 = tex2DArrayNode50_g76940;
				float4 temp_output_111_19_g76940 = TVE_VertexParams;
				float4 temp_output_3_0_g76944 = temp_output_111_19_g76940;
				float4 ifLocalVar18_g76944 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76944 >= 0.5 )
				ifLocalVar18_g76944 = temp_output_17_0_g76944;
				else
				ifLocalVar18_g76944 = temp_output_3_0_g76944;
				float4 lerpResult22_g76944 = lerp( temp_output_3_0_g76944 , temp_output_17_0_g76944 , temp_output_19_0_g76944);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76944 = lerpResult22_g76944;
				#else
				float4 staticSwitch24_g76944 = ifLocalVar18_g76944;
				#endif
				half4 Global_Vertex_Params4173_g76908 = staticSwitch24_g76944;
				float4 break322_g76945 = Global_Vertex_Params4173_g76908;
				half Global_VertexSize174_g76908 = saturate( break322_g76945.w );
				float lerpResult346_g76908 = lerp( 1.0 , Global_VertexSize174_g76908 , _GlobalSize);
				float3 appendResult3480_g76908 = (float3(lerpResult346_g76908 , lerpResult346_g76908 , lerpResult346_g76908));
				half3 ObjectData20_g76973 = appendResult3480_g76908;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g76973 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76973 = WorldData19_g76973;
				#else
				float3 staticSwitch14_g76973 = ObjectData20_g76973;
				#endif
				half3 Vertex_Size1741_g76908 = staticSwitch14_g76973;
				float temp_output_7_0_g76974 = _SizeFadeEndValue;
				float temp_output_10_0_g76974 = ( _SizeFadeStartValue - temp_output_7_0_g76974 );
				float temp_output_7453_0_g76908 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g76908 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g76974 ) / ( temp_output_10_0_g76974 + 0.0001 ) ) );
				float3 appendResult3482_g76908 = (float3(temp_output_7453_0_g76908 , temp_output_7453_0_g76908 , temp_output_7453_0_g76908));
				half3 ObjectData20_g76972 = appendResult3482_g76908;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g76972 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76972 = WorldData19_g76972;
				#else
				float3 staticSwitch14_g76972 = ObjectData20_g76972;
				#endif
				float3 Vertex_SizeFade1740_g76908 = staticSwitch14_g76972;
				float3 lerpResult16_g76977 = lerp( VertexPosition3588_g76908 , ( ( ( Vertex_Motion7493_g76908 + Grass_Perspective2661_g76908 ) * Vertex_Size1741_g76908 * Vertex_SizeFade1740_g76908 ) + Mesh_PivotsOS2291_g76908 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g76908 = lerpResult16_g76977;
				float3 Final_VertexPosition890_g76908 = ( temp_output_4912_0_g76908 + _DisableSRPBatcher );
				
				float4 break33_g77028 = _second_uvs_mode;
				float2 temp_output_30_0_g77028 = ( v.ase_texcoord.xy * break33_g77028.x );
				float2 appendResult21_g77023 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76908 = appendResult21_g77023;
				float2 temp_output_29_0_g77028 = ( Mesh_DetailCoord3_g76908 * break33_g77028.y );
				float2 temp_output_31_0_g77028 = ( (WorldPosition_Shifted7477_g76908).xz * break33_g77028.z );
				half2 Second_UVs_Tilling7609_g76908 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76908 = ( 1.0 / Second_UVs_Tilling7609_g76908 );
				float2 lerpResult7614_g76908 = lerp( Second_UVs_Tilling7609_g76908 , Second_UVs_Scale7610_g76908 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76908 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76934 = ( ( ( temp_output_30_0_g77028 + temp_output_29_0_g77028 + temp_output_31_0_g77028 ) * lerpResult7614_g76908 ) + Second_UVs_Offset7605_g76908 );
				o.ase_texcoord10.xy = vertexToFrag11_g76934;
				o.ase_texcoord11.xyz = vertexToFrag3890_g76908;
				o.ase_texcoord12.xyz = vertexToFrag4224_g76908;
				half Global_Noise_A4860_g76908 = break638_g77004.a;
				half Tint_Highlight_Value3231_g76908 = ( Global_Noise_A4860_g76908 * Global_Wind_Power2223_g76908 * Motion_FadeOut4005_g76908 * Mesh_Height1524_g76908 );
				float vertexToFrag11_g76949 = Tint_Highlight_Value3231_g76908;
				o.ase_texcoord10.z = vertexToFrag11_g76949;
				
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
				float3 vertexValue = Final_VertexPosition890_g76908;
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

				half2 Main_UVs15_g76908 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76908 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76908 );
				float3 lerpResult6223_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76908).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76908 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				half Main_Mask57_g76908 = tex2DNode35_g76908.b;
				float clampResult17_g77013 = clamp( Main_Mask57_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77014 = _MainMaskMinValue;
				float temp_output_10_0_g77014 = ( _MainMaskMaxValue - temp_output_7_0_g77014 );
				half Main_Mask_Remap5765_g76908 = saturate( ( ( clampResult17_g77013 - temp_output_7_0_g77014 ) / ( temp_output_10_0_g77014 + 0.0001 ) ) );
				float lerpResult7671_g76908 = lerp( 1.0 , Main_Mask_Remap5765_g76908 , _MainColorMode);
				float4 lerpResult7654_g76908 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76908);
				half3 Main_Color_RGB7657_g76908 = (lerpResult7654_g76908).rgb;
				half3 Main_Albedo99_g76908 = ( lerpResult6223_g76908 * Main_Color_RGB7657_g76908 );
				float2 vertexToFrag11_g76934 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g76908 = vertexToFrag11_g76934;
				float4 tex2DNode89_g76908 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76908 );
				float3 lerpResult6225_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76908).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76908 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				half Second_Mask81_g76908 = tex2DNode33_g76908.b;
				float clampResult17_g77016 = clamp( Second_Mask81_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77017 = _SecondMaskMinValue;
				float temp_output_10_0_g77017 = ( _SecondMaskMaxValue - temp_output_7_0_g77017 );
				half Second_Mask_Remap6130_g76908 = saturate( ( ( clampResult17_g77016 - temp_output_7_0_g77017 ) / ( temp_output_10_0_g77017 + 0.0001 ) ) );
				float lerpResult7672_g76908 = lerp( 1.0 , Second_Mask_Remap6130_g76908 , _SecondColorMode);
				float4 lerpResult7662_g76908 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76908);
				half3 Second_Color_RGB7663_g76908 = (lerpResult7662_g76908).rgb;
				half3 Second_Albedo153_g76908 = ( lerpResult6225_g76908 * Second_Color_RGB7663_g76908 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76950 = 2.0;
				#else
				float staticSwitch1_g76950 = 4.594794;
				#endif
				float3 lerpResult4834_g76908 = lerp( ( Main_Albedo99_g76908 * Second_Albedo153_g76908 * staticSwitch1_g76950 ) , Second_Albedo153_g76908 , _DetailBlendMode);
				float lerpResult6885_g76908 = lerp( Main_Mask57_g76908 , Second_Mask81_g76908 , _DetailMaskMode);
				float clampResult17_g76986 = clamp( lerpResult6885_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76985 = _DetailMaskMinValue;
				float temp_output_10_0_g76985 = ( _DetailMaskMaxValue - temp_output_7_0_g76985 );
				half Blend_Mask_Texture6794_g76908 = saturate( ( ( clampResult17_g76986 - temp_output_7_0_g76985 ) / ( temp_output_10_0_g76985 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76908 = IN.ase_color.b;
				half4 Normal_Packed45_g77012 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				float2 appendResult58_g77012 = (float2(( (Normal_Packed45_g77012).x * (Normal_Packed45_g77012).w ) , (Normal_Packed45_g77012).y));
				half2 Normal_Default50_g77012 = appendResult58_g77012;
				half2 Normal_ASTC41_g77012 = (Normal_Packed45_g77012).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77012 = Normal_ASTC41_g77012;
				#else
				float2 staticSwitch38_g77012 = Normal_Default50_g77012;
				#endif
				half2 Normal_NO_DTX544_g77012 = (Normal_Packed45_g77012).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77012 = Normal_NO_DTX544_g77012;
				#else
				float2 staticSwitch37_g77012 = staticSwitch38_g77012;
				#endif
				float2 temp_output_6555_0_g76908 = ( (staticSwitch37_g77012*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76908 = (float3(temp_output_6555_0_g76908 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g76908 = appendResult7388_g76908;
				float3 worldNormal7389_g76908 = float3(dot(tanToWorld0,tanNormal7389_g76908), dot(tanToWorld1,tanNormal7389_g76908), dot(tanToWorld2,tanNormal7389_g76908));
				half3 Main_NormalWS7390_g76908 = worldNormal7389_g76908;
				float lerpResult6884_g76908 = lerp( Mesh_DetailMask90_g76908 , ((Main_NormalWS7390_g76908).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76984 = clamp( lerpResult6884_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76983 = _DetailMeshMinValue;
				float temp_output_10_0_g76983 = ( _DetailMeshMaxValue - temp_output_7_0_g76983 );
				half Blend_Mask_Mesh1540_g76908 = saturate( ( ( clampResult17_g76984 - temp_output_7_0_g76983 ) / ( temp_output_10_0_g76983 + 0.0001 ) ) );
				float clampResult17_g76994 = clamp( ( Blend_Mask_Texture6794_g76908 * Blend_Mask_Mesh1540_g76908 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77009 = _DetailBlendMinValue;
				float temp_output_10_0_g77009 = ( _DetailBlendMaxValue - temp_output_7_0_g77009 );
				half Blend_Mask147_g76908 = ( saturate( ( ( clampResult17_g76994 - temp_output_7_0_g77009 ) / ( temp_output_10_0_g77009 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76908 = lerp( Main_Albedo99_g76908 , lerpResult4834_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76908 = lerpResult235_g76908;
				#else
				float3 staticSwitch255_g76908 = Main_Albedo99_g76908;
				#endif
				half3 Blend_Albedo265_g76908 = staticSwitch255_g76908;
				half Mesh_Height1524_g76908 = IN.ase_color.a;
				float temp_output_7_0_g76959 = _GradientMinValue;
				float temp_output_10_0_g76959 = ( _GradientMaxValue - temp_output_7_0_g76959 );
				half Tint_Gradient_Value2784_g76908 = saturate( ( ( Mesh_Height1524_g76908 - temp_output_7_0_g76959 ) / ( temp_output_10_0_g76959 + 0.0001 ) ) );
				float3 lerpResult2779_g76908 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g76908);
				float lerpResult6617_g76908 = lerp( Main_Mask_Remap5765_g76908 , Second_Mask_Remap6130_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76908 = lerpResult6617_g76908;
				#else
				float staticSwitch6623_g76908 = Main_Mask_Remap5765_g76908;
				#endif
				half Blend_Mask_Remap6621_g76908 = staticSwitch6623_g76908;
				half Tint_Gradient_Mask6207_g76908 = Blend_Mask_Remap6621_g76908;
				float3 lerpResult6208_g76908 = lerp( float3( 1,1,1 ) , lerpResult2779_g76908 , Tint_Gradient_Mask6207_g76908);
				half3 Tint_Gradient_Color5769_g76908 = lerpResult6208_g76908;
				half3 Tint_Noise_Color5770_g76908 = float3(1,1,1);
				float Mesh_Occlusion318_g76908 = IN.ase_color.g;
				float clampResult17_g76956 = clamp( Mesh_Occlusion318_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76962 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76962 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76962 );
				half Occlusion_Mask6432_g76908 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76962 ) / ( temp_output_10_0_g76962 + 0.0001 ) ) );
				float3 lerpResult2945_g76908 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76908);
				half3 Occlusion_Color648_g76908 = lerpResult2945_g76908;
				half3 Matcap_Color7428_g76908 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76908 = ( ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 * Occlusion_Color648_g76908 ) + Matcap_Color7428_g76908 );
				float3 temp_output_3_0_g76954 = Blend_Albedo_Tinted2808_g76908;
				float dotResult20_g76954 = dot( temp_output_3_0_g76954 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76908 = dotResult20_g76954;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76908).xxx;
				float temp_output_82_0_g76929 = _LayerColorsValue;
				float temp_output_19_0_g76933 = TVE_ColorsUsage[(int)temp_output_82_0_g76929];
				float4 temp_output_91_19_g76929 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76908 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 vertexToFrag4224_g76908 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 lerpResult4822_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ColorsPositionMode);
				half2 UV94_g76929 = ( (temp_output_91_19_g76929).zw + ( (temp_output_91_19_g76929).xy * (lerpResult4822_g76908).xz ) );
				float4 tex2DArrayNode83_g76929 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76929,temp_output_82_0_g76929), 0.0 );
				float4 temp_output_17_0_g76933 = tex2DArrayNode83_g76929;
				float4 temp_output_92_86_g76929 = TVE_ColorsParams;
				float4 temp_output_3_0_g76933 = temp_output_92_86_g76929;
				float4 ifLocalVar18_g76933 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76933 >= 0.5 )
				ifLocalVar18_g76933 = temp_output_17_0_g76933;
				else
				ifLocalVar18_g76933 = temp_output_3_0_g76933;
				float4 lerpResult22_g76933 = lerp( temp_output_3_0_g76933 , temp_output_17_0_g76933 , temp_output_19_0_g76933);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76933 = lerpResult22_g76933;
				#else
				float4 staticSwitch24_g76933 = ifLocalVar18_g76933;
				#endif
				half4 Global_Colors_Params5434_g76908 = staticSwitch24_g76933;
				float4 temp_output_346_0_g76915 = Global_Colors_Params5434_g76908;
				half Global_Colors_A1701_g76908 = saturate( (temp_output_346_0_g76915).w );
				half Colors_Influence3668_g76908 = Global_Colors_A1701_g76908;
				float temp_output_6306_0_g76908 = ( 1.0 - Colors_Influence3668_g76908 );
				float3 lerpResult3618_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76908 * temp_output_6306_0_g76908 ) ));
				half3 Global_Colors_RGB1700_g76908 = (temp_output_346_0_g76915).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76946 = 2.0;
				#else
				float staticSwitch1_g76946 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76908 = ( Global_Colors_RGB1700_g76908 * staticSwitch1_g76946 * _ColorsIntensityValue );
				float lerpResult7679_g76908 = lerp( 1.0 , Blend_Mask_Remap6621_g76908 , _ColorsMaskValue);
				half Colors_Value3692_g76908 = ( lerpResult7679_g76908 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = IN.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				float lerpResult3870_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _ColorsVariationValue);
				half Colors_Variation3650_g76908 = lerpResult3870_g76908;
				half Occlusion_Alpha6463_g76908 = _VertexOcclusionColor.a;
				float lerpResult6459_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult6459_g76908);
				half Occlusion_Colors6450_g76908 = lerpResult6461_g76908;
				float3 temp_output_3_0_g76955 = ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 );
				float dotResult20_g76955 = dot( temp_output_3_0_g76955 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76908 = clamp( saturate( ( dotResult20_g76955 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76908 = clampResult6740_g76908;
				float temp_output_7_0_g76992 = 0.1;
				float temp_output_10_0_g76992 = ( 0.2 - temp_output_7_0_g76992 );
				float lerpResult16_g76947 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76908 * Colors_Influence3668_g76908 * Colors_Variation3650_g76908 * Occlusion_Colors6450_g76908 * Blend_Albedo_Globals6410_g76908 ) - temp_output_7_0_g76992 ) / ( temp_output_10_0_g76992 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , ( lerpResult3618_g76908 * Colors_RGB1954_g76908 ) , lerpResult16_g76947);
				half3 Blend_Albedo_Colored_High6027_g76908 = lerpResult3628_g76908;
				half3 Blend_Albedo_Colored863_g76908 = Blend_Albedo_Colored_High6027_g76908;
				half3 Global_OverlayColor1758_g76908 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76924 = _LayerExtrasValue;
				float temp_output_19_0_g76928 = TVE_ExtrasUsage[(int)temp_output_84_0_g76924];
				float4 temp_output_93_19_g76924 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ExtrasPositionMode);
				half2 UV96_g76924 = ( (temp_output_93_19_g76924).zw + ( (temp_output_93_19_g76924).xy * (lerpResult4827_g76908).xz ) );
				float4 tex2DArrayNode48_g76924 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76924,temp_output_84_0_g76924), 0.0 );
				float4 temp_output_17_0_g76928 = tex2DArrayNode48_g76924;
				float4 temp_output_94_85_g76924 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76928 = temp_output_94_85_g76924;
				float4 ifLocalVar18_g76928 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76928 >= 0.5 )
				ifLocalVar18_g76928 = temp_output_17_0_g76928;
				else
				ifLocalVar18_g76928 = temp_output_3_0_g76928;
				float4 lerpResult22_g76928 = lerp( temp_output_3_0_g76928 , temp_output_17_0_g76928 , temp_output_19_0_g76928);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76928 = lerpResult22_g76928;
				#else
				float4 staticSwitch24_g76928 = ifLocalVar18_g76928;
				#endif
				half4 Global_Extras_Params5440_g76908 = staticSwitch24_g76928;
				float4 break456_g76938 = Global_Extras_Params5440_g76908;
				half Global_Extras_Overlay156_g76908 = break456_g76938.z;
				float lerpResult1065_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _OverlayVariationValue);
				half Overlay_Variation4560_g76908 = lerpResult1065_g76908;
				half Overlay_Value5738_g76908 = ( _GlobalOverlay * Global_Extras_Overlay156_g76908 * Overlay_Variation4560_g76908 );
				half2 Main_Normal137_g76908 = temp_output_6555_0_g76908;
				float2 lerpResult3372_g76908 = lerp( float2( 0,0 ) , Main_Normal137_g76908 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g77015 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				float2 appendResult58_g77015 = (float2(( (Normal_Packed45_g77015).x * (Normal_Packed45_g77015).w ) , (Normal_Packed45_g77015).y));
				half2 Normal_Default50_g77015 = appendResult58_g77015;
				half2 Normal_ASTC41_g77015 = (Normal_Packed45_g77015).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77015 = Normal_ASTC41_g77015;
				#else
				float2 staticSwitch38_g77015 = Normal_Default50_g77015;
				#endif
				half2 Normal_NO_DTX544_g77015 = (Normal_Packed45_g77015).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77015 = Normal_NO_DTX544_g77015;
				#else
				float2 staticSwitch37_g77015 = staticSwitch38_g77015;
				#endif
				float2 temp_output_6560_0_g76908 = ( (staticSwitch37_g77015*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77018 = temp_output_6560_0_g76908;
				float2 break64_g77018 = Normal_Planar45_g77018;
				float3 appendResult65_g77018 = (float3(break64_g77018.x , 0.0 , break64_g77018.y));
				float2 temp_output_7603_0_g76908 = (mul( ase_worldToTangent, appendResult65_g77018 )).xy;
				float2 ifLocalVar7604_g76908 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76908 = temp_output_7603_0_g76908;
				else
				ifLocalVar7604_g76908 = temp_output_6560_0_g76908;
				half2 Second_Normal179_g76908 = ifLocalVar7604_g76908;
				float2 temp_output_36_0_g76951 = ( lerpResult3372_g76908 + Second_Normal179_g76908 );
				float2 lerpResult3376_g76908 = lerp( Main_Normal137_g76908 , temp_output_36_0_g76951 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76908 = lerpResult3376_g76908;
				#else
				float2 staticSwitch267_g76908 = Main_Normal137_g76908;
				#endif
				half2 Blend_Normal312_g76908 = staticSwitch267_g76908;
				float3 appendResult7377_g76908 = (float3(Blend_Normal312_g76908 , 1.0));
				float3 tanNormal7376_g76908 = appendResult7377_g76908;
				float3 worldNormal7376_g76908 = float3(dot(tanToWorld0,tanNormal7376_g76908), dot(tanToWorld1,tanNormal7376_g76908), dot(tanToWorld2,tanNormal7376_g76908));
				half3 Blend_NormalWS7375_g76908 = worldNormal7376_g76908;
				float lerpResult7446_g76908 = lerp( (Blend_NormalWS7375_g76908).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76908);
				float lerpResult6757_g76908 = lerp( 1.0 , saturate( lerpResult7446_g76908 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76908 = lerpResult6757_g76908;
				half Overlay_Shading6688_g76908 = Blend_Albedo_Globals6410_g76908;
				half Overlay_Custom6707_g76908 = 1.0;
				float lerpResult7693_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult7693_g76908);
				half Occlusion_Overlay6471_g76908 = lerpResult6467_g76908;
				float temp_output_7_0_g76960 = 0.1;
				float temp_output_10_0_g76960 = ( 0.2 - temp_output_7_0_g76960 );
				half Overlay_Mask_High6064_g76908 = saturate( ( ( ( Overlay_Value5738_g76908 * Overlay_Projection6081_g76908 * Overlay_Shading6688_g76908 * Overlay_Custom6707_g76908 * Occlusion_Overlay6471_g76908 ) - temp_output_7_0_g76960 ) / ( temp_output_10_0_g76960 + 0.0001 ) ) );
				half Overlay_Mask269_g76908 = Overlay_Mask_High6064_g76908;
				float3 lerpResult336_g76908 = lerp( Blend_Albedo_Colored863_g76908 , Global_OverlayColor1758_g76908 , Overlay_Mask269_g76908);
				half3 Blend_Albedo_Overlay359_g76908 = lerpResult336_g76908;
				half Global_WetnessContrast6502_g76908 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76908 = break456_g76938.y;
				half Wetness_Value6343_g76908 = ( Global_Extras_Wetness305_g76908 * _GlobalWetness );
				float3 lerpResult6367_g76908 = lerp( Blend_Albedo_Overlay359_g76908 , ( Blend_Albedo_Overlay359_g76908 * Blend_Albedo_Overlay359_g76908 ) , ( Global_WetnessContrast6502_g76908 * Wetness_Value6343_g76908 ));
				half3 Blend_Albedo_Wetness6351_g76908 = lerpResult6367_g76908;
				float vertexToFrag11_g76949 = IN.ase_texcoord10.z;
				half3 Tint_Highlight_Color5771_g76908 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g76949 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g76908 = ( Blend_Albedo_Wetness6351_g76908 * Tint_Highlight_Color5771_g76908 );
				half3 Blend_Albedo_Subsurface149_g76908 = temp_output_6309_0_g76908;
				half3 Blend_Albedo_RimLight7316_g76908 = Blend_Albedo_Subsurface149_g76908;
				
				half Global_OverlayNormalScale6581_g76908 = TVE_OverlayNormalValue;
				float lerpResult6585_g76908 = lerp( 1.0 , Global_OverlayNormalScale6581_g76908 , Overlay_Mask269_g76908);
				half2 Blend_Normal_Overlay366_g76908 = ( Blend_Normal312_g76908 * lerpResult6585_g76908 );
				half Global_WetnessNormalScale6571_g76908 = TVE_WetnessNormalValue;
				float lerpResult6579_g76908 = lerp( 1.0 , Global_WetnessNormalScale6571_g76908 , ( Wetness_Value6343_g76908 * Wetness_Value6343_g76908 ));
				half2 Blend_Normal_Wetness6372_g76908 = ( Blend_Normal_Overlay366_g76908 * lerpResult6579_g76908 );
				float3 appendResult6568_g76908 = (float3(Blend_Normal_Wetness6372_g76908 , 1.0));
				float3 temp_output_13_0_g76939 = appendResult6568_g76908;
				float3 temp_output_33_0_g76939 = ( temp_output_13_0_g76939 * _render_normals );
				float3 switchResult12_g76939 = (((ase_vface>0)?(temp_output_13_0_g76939):(temp_output_33_0_g76939)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76908 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76908 = temp_output_7161_0_g76908;
				half2 Emissive_UVs2468_g76908 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77029 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77029).xxx;
				float temp_output_10_0_g77029 = ( _EmissiveTexMaxValue - temp_output_7_0_g77029 );
				half3 Emissive_Texture7022_g76908 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76908 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77029 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76908 = break456_g76938.x;
				float lerpResult4206_g76908 = lerp( 1.0 , Global_Extras_Emissive4203_g76908 , _GlobalEmissive);
				half Emissive_Value7024_g76908 = ( ( lerpResult4206_g76908 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76908 = saturate( ( Emissive_Texture7022_g76908 + Emissive_Value7024_g76908 ) );
				float3 temp_output_3_0_g77031 = ( Emissive_Color7162_g76908 * Emissive_Mask6968_g76908 );
				float temp_output_15_0_g77031 = _emissive_intensity_value;
				float3 temp_output_23_0_g77031 = ( temp_output_3_0_g77031 * temp_output_15_0_g77031 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76908 = temp_output_23_0_g77031;
				#else
				float3 staticSwitch7687_g76908 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76908 = staticSwitch7687_g76908;
				
				half Render_Specular4861_g76908 = _RenderSpecular;
				float3 temp_cast_13 = (( 0.04 * Render_Specular4861_g76908 )).xxx;
				
				float lerpResult240_g76908 = lerp( 1.0 , tex2DNode35_g76908.g , _MainOcclusionValue);
				half Main_Occlusion247_g76908 = lerpResult240_g76908;
				float lerpResult239_g76908 = lerp( 1.0 , tex2DNode33_g76908.g , _SecondOcclusionValue);
				half Second_Occlusion251_g76908 = lerpResult239_g76908;
				float lerpResult294_g76908 = lerp( Main_Occlusion247_g76908 , Second_Occlusion251_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch310_g76908 = lerpResult294_g76908;
				#else
				float staticSwitch310_g76908 = Main_Occlusion247_g76908;
				#endif
				half Blend_Occlusion323_g76908 = staticSwitch310_g76908;
				
				half Main_Smoothness227_g76908 = ( tex2DNode35_g76908.a * _MainSmoothnessValue );
				half Second_Smoothness236_g76908 = ( tex2DNode33_g76908.a * _SecondSmoothnessValue );
				float lerpResult266_g76908 = lerp( Main_Smoothness227_g76908 , Second_Smoothness236_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch297_g76908 = lerpResult266_g76908;
				#else
				float staticSwitch297_g76908 = Main_Smoothness227_g76908;
				#endif
				half Blend_Smoothness314_g76908 = staticSwitch297_g76908;
				half Global_OverlaySmoothness311_g76908 = TVE_OverlaySmoothness;
				float lerpResult343_g76908 = lerp( Blend_Smoothness314_g76908 , Global_OverlaySmoothness311_g76908 , Overlay_Mask269_g76908);
				half Blend_Smoothness_Overlay371_g76908 = lerpResult343_g76908;
				float temp_output_6499_0_g76908 = ( 1.0 - Wetness_Value6343_g76908 );
				half Blend_Smoothness_Wetness4130_g76908 = saturate( ( Blend_Smoothness_Overlay371_g76908 + ( 1.0 - ( temp_output_6499_0_g76908 * temp_output_6499_0_g76908 ) ) ) );
				
				float localCustomAlphaClip19_g77011 = ( 0.0 );
				half Main_Alpha316_g76908 = tex2DNode29_g76908.a;
				half Second_Alpha5007_g76908 = tex2DNode89_g76908.a;
				float lerpResult6153_g76908 = lerp( Main_Alpha316_g76908 , Second_Alpha5007_g76908 , Blend_Mask147_g76908);
				float lerpResult6785_g76908 = lerp( ( Main_Alpha316_g76908 * Second_Alpha5007_g76908 ) , lerpResult6153_g76908 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76908 = lerpResult6785_g76908;
				#else
				float staticSwitch6158_g76908 = Main_Alpha316_g76908;
				#endif
				half Blend_Alpha6157_g76908 = staticSwitch6158_g76908;
				half AlphaTreshold2132_g76908 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g76908 = saturate( break456_g76938.w );
				float lerpResult5154_g76908 = lerp( 0.0 , Global_MeshVariation5104_g76908 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g76908 = lerpResult5154_g76908;
				float Emissive_Alpha7625_g76908 = 0.0;
				float lerpResult6866_g76908 = lerp( ( 1.0 - Blend_Mask147_g76908 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76908 = lerpResult6866_g76908;
				#else
				float staticSwitch6612_g76908 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76908 = staticSwitch6612_g76908;
				half Alpha_Mask6234_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5203_g76908 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g76908 - saturate( ( Global_Alpha_Variation5158_g76908 + Emissive_Alpha7625_g76908 ) ) ) + ( Global_Extras_Alpha1033_g76908 * 0.1 ) ) ) , ( Alpha_Mask6234_g76908 * _GlobalAlpha ));
				float lerpResult16_g76952 = lerp( 1.0 , lerpResult5203_g76908 , TVE_IsEnabled);
				half Global_Alpha315_g76908 = lerpResult16_g76952;
				float3 normalizeResult2169_g76908 = normalize( worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 normalizeResult3971_g76908 = normalize( cross( ddy( worldPos ) , ddx( worldPos ) ) );
				float3 WorldNormal_Derivates3972_g76908 = normalizeResult3971_g76908;
				float dotResult3851_g76908 = dot( ViewDirection3963_g76908 , WorldNormal_Derivates3972_g76908 );
				float lerpResult3993_g76908 = lerp( 1.0 , saturate( ( abs( dotResult3851_g76908 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g76908 = lerpResult3993_g76908;
				half Fade_Effects_A5360_g76908 = Fade_Glancing3853_g76908;
				float temp_output_7_0_g76961 = TVE_CameraFadeMin;
				float temp_output_10_0_g76961 = ( TVE_CameraFadeMax - temp_output_7_0_g76961 );
				float lerpResult4755_g76908 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76961 ) / ( temp_output_10_0_g76961 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76908 = lerpResult4755_g76908;
				half Fade_Effects_B6228_g76908 = ( Fade_Effects_A5360_g76908 * Fade_Camera3743_g76908 );
				half Fade_Mask5149_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5141_g76908 = lerp( 1.0 , ( Fade_Effects_B6228_g76908 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76908);
				half Fade_Effects_C7653_g76908 = lerpResult5141_g76908;
				float temp_output_5865_0_g76908 = saturate( ( Fade_Effects_C7653_g76908 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76908 ) ).r ) );
				half Fade_Alpha3727_g76908 = temp_output_5865_0_g76908;
				half Final_Alpha7344_g76908 = min( ( ( Blend_Alpha6157_g76908 - AlphaTreshold2132_g76908 ) * Global_Alpha315_g76908 ) , Fade_Alpha3727_g76908 );
				float temp_output_3_0_g77011 = Final_Alpha7344_g76908;
				float Alpha19_g77011 = temp_output_3_0_g77011;
				float temp_output_15_0_g77011 = 0.01;
				float Treshold19_g77011 = temp_output_15_0_g77011;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#else
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76908 = (lerpResult7654_g76908).a;
				half Second_Color_Alpha6152_g76908 = (lerpResult7662_g76908).a;
				float lerpResult6168_g76908 = lerp( Main_Color_Alpha6121_g76908 , Second_Color_Alpha6152_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76908 = lerpResult6168_g76908;
				#else
				float staticSwitch6174_g76908 = Main_Color_Alpha6121_g76908;
				#endif
				half Blend_Color_Alpha6167_g76908 = staticSwitch6174_g76908;
				half Final_Clip914_g76908 = saturate( ( Alpha19_g77011 * Blend_Color_Alpha6167_g76908 ) );
				
				half3 Subsurface_Color1722_g76908 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g76908 );
				half Global_Subsurface4041_g76908 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g76908 = TVE_OverlaySubsurface;
				float lerpResult7362_g76908 = lerp( 1.0 , Global_OverlaySubsurface5667_g76908 , Overlay_Value5738_g76908);
				half Overlay_Subsurface7361_g76908 = lerpResult7362_g76908;
				half Subsurface_Intensity1752_g76908 = ( _SubsurfaceValue * Global_Subsurface4041_g76908 * Overlay_Subsurface7361_g76908 );
				float lerpResult7680_g76908 = lerp( 1.0 , Blend_Mask_Remap6621_g76908 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g76908 = lerpResult7680_g76908;
				half3 Subsurface_Translucency884_g76908 = ( Subsurface_Color1722_g76908 * Subsurface_Intensity1752_g76908 * Subsurface_Mask1557_g76908 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76908;
				o.Normal = switchResult12_g76939;
				o.Emission = Final_Emissive2476_g76908;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_13;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion323_g76908;
					o.Smoothness = Blend_Smoothness_Wetness4130_g76908;
				#endif

				o.Alpha = Final_Clip914_g76908;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g76908;

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
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _SPECULAR_SETUP 1
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
			#define TVE_IS_SUBSURFACE_SHADER
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
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
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
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;
			uniform half _SubsurfaceMaskValue;


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

				float3 VertexPosition3588_g76908 = v.vertex.xyz;
				float3 appendResult60_g76918 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76908 = ( appendResult60_g76918 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g76908 = Mesh_PivotsData2831_g76908;
				float3 temp_output_2283_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				half3 VertexPos40_g76989 = temp_output_2283_0_g76908;
				half3 VertexPos40_g76990 = VertexPos40_g76989;
				float3 appendResult74_g76990 = (float3(VertexPos40_g76990.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76990 = appendResult74_g76990;
				float3 break84_g76990 = VertexPos40_g76990;
				float3 appendResult81_g76990 = (float3(0.0 , break84_g76990.y , break84_g76990.z));
				half3 VertexPosOtherAxis82_g76990 = appendResult81_g76990;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76908 = ase_worldPos;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 WorldPosition_Shifted7477_g76908 = ( WorldPosition3905_g76908 - TVE_WorldOrigin );
				float4x4 break19_g76964 = unity_ObjectToWorld;
				float3 appendResult20_g76964 = (float3(break19_g76964[ 0 ][ 3 ] , break19_g76964[ 1 ][ 3 ] , break19_g76964[ 2 ][ 3 ]));
				float3 temp_output_122_0_g76964 = Mesh_PivotsData2831_g76908;
				float3 PivotsOnly105_g76964 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76964 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76966 = ( appendResult20_g76964 + PivotsOnly105_g76964 );
				half3 WorldData19_g76966 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76966 = WorldData19_g76966;
				#else
				float3 staticSwitch14_g76966 = ObjectData20_g76966;
				#endif
				float3 temp_output_114_0_g76964 = staticSwitch14_g76966;
				float3 vertexToFrag4224_g76908 = temp_output_114_0_g76964;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				float3 lerpResult6766_g76908 = lerp( WorldPosition_Shifted7477_g76908 , ObjectPosition_Shifted7481_g76908 , _MotionPosition_10);
				float3 Motion_10_Position6738_g76908 = lerpResult6766_g76908;
				half3 Input_Position419_g77004 = Motion_10_Position6738_g76908;
				float Input_MotionScale287_g77004 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77004 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77004 = (( Input_Position419_g77004 * Input_MotionScale287_g77004 * NoiseTex_Tilling735_g77004 * 0.0075 )).xz;
				float2 temp_output_447_0_g76913 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g76908 = temp_output_447_0_g76913;
				half2 Input_DirectionWS423_g77004 = Global_Wind_DirectionWS4683_g76908;
				float lerpResult128_g77005 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77004 = _MotionSpeed_10;
				half Input_MotionVariation284_g77004 = _MotionVariation_10;
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = v.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				half Input_GlobalMeshVariation569_g77004 = Global_MeshVariation5104_g76908;
				float temp_output_630_0_g77004 = ( ( ( lerpResult128_g77005 * Input_MotionSpeed62_g77004 ) + ( Input_MotionVariation284_g77004 * Input_GlobalMeshVariation569_g77004 ) ) * 0.03 );
				float temp_output_607_0_g77004 = frac( temp_output_630_0_g77004 );
				float4 lerpResult590_g77004 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * temp_output_607_0_g77004 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * frac( ( temp_output_630_0_g77004 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77004 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77004 = lerpResult590_g77004;
				float2 temp_output_645_0_g77004 = ((Noise_Complex703_g77004).rg*2.0 + -1.0);
				float2 break650_g77004 = temp_output_645_0_g77004;
				float3 appendResult649_g77004 = (float3(break650_g77004.x , 0.0 , break650_g77004.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g76908 = (( mul( unity_WorldToObject, float4( appendResult649_g77004 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76995 = Global_Noise_OS5548_g76908;
				float2 break448_g76913 = temp_output_447_0_g76913;
				float3 appendResult452_g76913 = (float3(break448_g76913.x , 0.0 , break448_g76913.y));
				half2 Global_Wind_DirectionOS5692_g76908 = (( mul( unity_WorldToObject, float4( appendResult452_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76995 = Global_Wind_DirectionOS5692_g76908;
				float temp_output_84_0_g76919 = _LayerMotionValue;
				float temp_output_19_0_g76923 = TVE_MotionUsage[(int)temp_output_84_0_g76919];
				float4 temp_output_91_19_g76919 = TVE_MotionCoords;
				half2 UV94_g76919 = ( (temp_output_91_19_g76919).zw + ( (temp_output_91_19_g76919).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76919 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76919,temp_output_84_0_g76919), 0.0 );
				float4 temp_output_17_0_g76923 = tex2DArrayNode50_g76919;
				float4 temp_output_112_19_g76919 = TVE_MotionParams;
				float4 temp_output_3_0_g76923 = temp_output_112_19_g76919;
				float4 ifLocalVar18_g76923 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76923 >= 0.5 )
				ifLocalVar18_g76923 = temp_output_17_0_g76923;
				else
				ifLocalVar18_g76923 = temp_output_3_0_g76923;
				float4 lerpResult22_g76923 = lerp( temp_output_3_0_g76923 , temp_output_17_0_g76923 , temp_output_19_0_g76923);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76923 = lerpResult22_g76923;
				#else
				float4 staticSwitch24_g76923 = ifLocalVar18_g76923;
				#endif
				half4 Global_Motion_Params3909_g76908 = staticSwitch24_g76923;
				float4 break322_g76913 = Global_Motion_Params3909_g76908;
				float lerpResult457_g76913 = lerp( break322_g76913.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76913 = ( 1.0 - lerpResult457_g76913 );
				half Global_Wind_Power2223_g76908 = ( 1.0 - ( temp_output_459_0_g76913 * temp_output_459_0_g76913 ) );
				half Input_WindPower449_g76995 = Global_Wind_Power2223_g76908;
				float2 lerpResult516_g76995 = lerp( Input_Noise_DirectionOS487_g76995 , Input_Wind_DirectionOS458_g76995 , ( Input_WindPower449_g76995 * 0.6 ));
				half Mesh_Motion_107572_g76908 = v.ase_color.a;
				half Input_MeshHeight388_g76995 = Mesh_Motion_107572_g76908;
				half ObjectData20_g76996 = Input_MeshHeight388_g76995;
				float enc62_g77023 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77023 = DecodeFloatToVector2( enc62_g77023 );
				float2 break63_g77023 = ( localDecodeFloatToVector262_g77023 * 100.0 );
				float Bounds_Height5230_g76908 = break63_g77023.x;
				half Input_BoundsHeight390_g76995 = Bounds_Height5230_g76908;
				half WorldData19_g76996 = ( Input_MeshHeight388_g76995 * Input_MeshHeight388_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76996 = WorldData19_g76996;
				#else
				float staticSwitch14_g76996 = ObjectData20_g76996;
				#endif
				half Final_Motion10_Mask321_g76995 = ( staticSwitch14_g76996 * 2.0 );
				half Input_BendingAmplitude376_g76995 = _MotionAmplitude_10;
				half Global_MotionValue640_g76995 = TVE_MotionValue_10;
				half2 Final_Bending631_g76995 = ( lerpResult516_g76995 * ( Final_Motion10_Mask321_g76995 * Input_BendingAmplitude376_g76995 * Input_WindPower449_g76995 * Input_WindPower449_g76995 * Global_MotionValue640_g76995 ) );
				float2 appendResult433_g76913 = (float2(break322_g76913.x , break322_g76913.y));
				float2 temp_output_436_0_g76913 = (appendResult433_g76913*2.0 + -1.0);
				float2 break441_g76913 = temp_output_436_0_g76913;
				float3 appendResult440_g76913 = (float3(break441_g76913.x , 0.0 , break441_g76913.y));
				half2 Global_React_DirectionOS39_g76908 = (( mul( unity_WorldToObject, float4( appendResult440_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76995 = Global_React_DirectionOS39_g76908;
				float clampResult17_g76998 = clamp( Input_MeshHeight388_g76995 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76997 = 0.0;
				half Input_InteractionUseMask62_g76995 = _InteractionMaskValue;
				float temp_output_10_0_g76997 = ( Input_InteractionUseMask62_g76995 - temp_output_7_0_g76997 );
				half Final_InteractionRemap594_g76995 = saturate( ( ( clampResult17_g76998 - temp_output_7_0_g76997 ) / ( temp_output_10_0_g76997 + 0.0001 ) ) );
				half ObjectData20_g76999 = Final_InteractionRemap594_g76995;
				half WorldData19_g76999 = ( Final_InteractionRemap594_g76995 * Final_InteractionRemap594_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76999 = WorldData19_g76999;
				#else
				float staticSwitch14_g76999 = ObjectData20_g76999;
				#endif
				half Final_InteractionMask373_g76995 = ( staticSwitch14_g76999 * 2.0 );
				half Input_InteractionAmplitude58_g76995 = _InteractionAmplitude;
				half2 Final_Interaction632_g76995 = ( Input_React_DirectionOS358_g76995 * Final_InteractionMask373_g76995 * Input_InteractionAmplitude58_g76995 );
				half Global_Interaction_Mask66_g76908 = ( break322_g76913.w * break322_g76913.w * break322_g76913.w * break322_g76913.w );
				float Input_InteractionGlobalMask330_g76995 = Global_Interaction_Mask66_g76908;
				half Final_InteractionValue525_g76995 = saturate( ( Input_InteractionAmplitude58_g76995 * Input_InteractionGlobalMask330_g76995 ) );
				float2 lerpResult551_g76995 = lerp( Final_Bending631_g76995 , Final_Interaction632_g76995 , Final_InteractionValue525_g76995);
				float2 break364_g76995 = lerpResult551_g76995;
				float3 appendResult638_g76995 = (float3(break364_g76995.x , 0.0 , break364_g76995.y));
				half3 Motion_10_Interaction7519_g76908 = appendResult638_g76995;
				half3 Angle44_g76989 = Motion_10_Interaction7519_g76908;
				half Angle44_g76990 = (Angle44_g76989).z;
				half3 VertexPos40_g76991 = ( VertexPosRotationAxis50_g76990 + ( VertexPosOtherAxis82_g76990 * cos( Angle44_g76990 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76990 ) * sin( Angle44_g76990 ) ) );
				float3 appendResult74_g76991 = (float3(0.0 , 0.0 , VertexPos40_g76991.z));
				half3 VertexPosRotationAxis50_g76991 = appendResult74_g76991;
				float3 break84_g76991 = VertexPos40_g76991;
				float3 appendResult81_g76991 = (float3(break84_g76991.x , break84_g76991.y , 0.0));
				half3 VertexPosOtherAxis82_g76991 = appendResult81_g76991;
				half Angle44_g76991 = -(Angle44_g76989).x;
				half3 Input_Position419_g77019 = WorldPosition_Shifted7477_g76908;
				float3 break459_g77019 = Input_Position419_g77019;
				float Sum_Position446_g77019 = ( break459_g77019.x + break459_g77019.y + break459_g77019.z );
				half Input_MotionScale321_g77019 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77019 = _MotionVariation_20;
				half Input_GlobalVariation400_g77019 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77020 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77019 = _MotionSpeed_20;
				float temp_output_404_0_g77019 = ( lerpResult128_g77020 * Input_MotionSpeed62_g77019 );
				half Motion_SineA450_g77019 = sin( ( ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) + ( Input_MotionVariation330_g77019 * Input_GlobalVariation400_g77019 ) + temp_output_404_0_g77019 ) );
				half Motion_SineB395_g77019 = sin( ( ( temp_output_404_0_g77019 * 0.6842 ) + ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) ) );
				half3 Input_Position419_g77032 = VertexPosition3588_g76908;
				float3 normalizeResult518_g77032 = normalize( Input_Position419_g77032 );
				half2 Input_DirectionOS423_g77032 = Global_React_DirectionOS39_g76908;
				float2 break521_g77032 = -Input_DirectionOS423_g77032;
				float3 appendResult522_g77032 = (float3(break521_g77032.x , 0.0 , break521_g77032.y));
				float dotResult519_g77032 = dot( normalizeResult518_g77032 , appendResult522_g77032 );
				half Input_Value62_g77032 = _MotionFacingValue;
				float lerpResult524_g77032 = lerp( 1.0 , (dotResult519_g77032*0.5 + 0.5) , Input_Value62_g77032);
				half ObjectData20_g77033 = max( lerpResult524_g77032 , 0.001 );
				half WorldData19_g77033 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77033 = WorldData19_g77033;
				#else
				float staticSwitch14_g77033 = ObjectData20_g77033;
				#endif
				half Motion_FacingMask5214_g76908 = staticSwitch14_g77033;
				half Motion_20_Amplitude4381_g76908 = Motion_FacingMask5214_g76908;
				half Input_MotionAmplitude384_g77019 = Motion_20_Amplitude4381_g76908;
				half Input_GlobalWind407_g77019 = Global_Wind_Power2223_g76908;
				float4 break638_g77004 = abs( Noise_Complex703_g77004 );
				half Global_Noise_B5526_g76908 = break638_g77004.b;
				half Input_GlobalNoise411_g77019 = Global_Noise_B5526_g76908;
				float lerpResult413_g77019 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77019);
				half Motion_Amplitude418_g77019 = ( Input_MotionAmplitude384_g77019 * Input_GlobalWind407_g77019 * pow( Input_GlobalNoise411_g77019 , lerpResult413_g77019 ) );
				half Input_Squash58_g77019 = _MotionAmplitude_20;
				float enc59_g77023 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77023 = DecodeFloatToVector2( enc59_g77023 );
				float2 break61_g77023 = localDecodeFloatToVector259_g77023;
				half Mesh_Motion_2060_g76908 = break61_g77023.x;
				half Input_MeshMotion_20388_g77019 = Mesh_Motion_2060_g76908;
				float Bounds_Radius5231_g76908 = break63_g77023.y;
				half Input_BoundsRadius390_g77019 = Bounds_Radius5231_g76908;
				half Global_MotionValue462_g77019 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77019 = Global_React_DirectionOS39_g76908;
				float2 break371_g77019 = Input_DirectionOS366_g77019;
				float3 appendResult372_g77019 = (float3(break371_g77019.x , ( Motion_SineA450_g77019 * 0.3 ) , break371_g77019.y));
				half3 Motion_20_Squash4418_g76908 = ( ( (max( Motion_SineA450_g77019 , Motion_SineB395_g77019 )*0.5 + 0.5) * Motion_Amplitude418_g77019 * Input_Squash58_g77019 * Input_MeshMotion_20388_g77019 * Input_BoundsRadius390_g77019 * Global_MotionValue462_g77019 ) * appendResult372_g77019 );
				half3 VertexPos40_g76982 = ( ( VertexPosRotationAxis50_g76991 + ( VertexPosOtherAxis82_g76991 * cos( Angle44_g76991 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76991 ) * sin( Angle44_g76991 ) ) ) + Motion_20_Squash4418_g76908 );
				float3 appendResult74_g76982 = (float3(0.0 , VertexPos40_g76982.y , 0.0));
				float3 VertexPosRotationAxis50_g76982 = appendResult74_g76982;
				float3 break84_g76982 = VertexPos40_g76982;
				float3 appendResult81_g76982 = (float3(break84_g76982.x , 0.0 , break84_g76982.z));
				float3 VertexPosOtherAxis82_g76982 = appendResult81_g76982;
				half Input_Rolling379_g77019 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g76908 = ( Motion_SineA450_g77019 * Motion_Amplitude418_g77019 * Input_Rolling379_g77019 * Input_MeshMotion_20388_g77019 * Global_MotionValue462_g77019 );
				half Angle44_g76982 = Motion_20_Rolling5257_g76908;
				half3 Input_Position500_g77000 = WorldPosition_Shifted7477_g76908;
				half Input_MotionScale321_g77000 = _MotionScale_32;
				half Input_MotionVariation330_g77000 = _MotionVariation_32;
				half Input_GlobalVariation372_g77000 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77001 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77000 = _MotionSpeed_32;
				float4 tex2DNode460_g77000 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77000).xz * Input_MotionScale321_g77000 * 0.03 ) + ( Input_MotionVariation330_g77000 * Input_GlobalVariation372_g77000 ) + ( lerpResult128_g77001 * Input_MotionSpeed62_g77000 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77000 = (float3(tex2DNode460_g77000.r , tex2DNode460_g77000.g , tex2DNode460_g77000.b));
				half3 Flutter_Texture489_g77000 = (appendResult462_g77000*2.0 + -1.0);
				float temp_output_7_0_g76958 = TVE_MotionFadeEnd;
				float temp_output_10_0_g76958 = ( TVE_MotionFadeStart - temp_output_7_0_g76958 );
				half Motion_FadeOut4005_g76908 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76958 ) / ( temp_output_10_0_g76958 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g76908 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g76908 * Motion_FadeOut4005_g76908 );
				half Input_MotionAmplitude58_g77000 = Motion_30_Amplitude4960_g76908;
				half Mesh_Motion_30144_g76908 = break61_g77023.y;
				half Input_MeshMotion_30374_g77000 = Mesh_Motion_30144_g76908;
				half Input_GlobalWind471_g77000 = Global_Wind_Power2223_g76908;
				half Global_MotionValue503_g77000 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77000 = Global_Noise_B5526_g76908;
				float lerpResult466_g77000 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77000);
				half Flutter_Amplitude491_g77000 = ( Input_MotionAmplitude58_g77000 * Input_MeshMotion_30374_g77000 * Input_GlobalWind471_g77000 * Global_MotionValue503_g77000 * pow( Input_GlobalNoise472_g77000 , lerpResult466_g77000 ) );
				half3 Motion_30_Flutter263_g76908 = ( Flutter_Texture489_g77000 * Flutter_Amplitude491_g77000 );
				float3 Vertex_Motion_Object833_g76908 = ( ( VertexPosRotationAxis50_g76982 + ( VertexPosOtherAxis82_g76982 * cos( Angle44_g76982 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g76982 ) * sin( Angle44_g76982 ) ) ) + Motion_30_Flutter263_g76908 );
				half3 ObjectData20_g76976 = Vertex_Motion_Object833_g76908;
				float3 temp_output_3474_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				float3 Vertex_Motion_World1118_g76908 = ( ( ( temp_output_3474_0_g76908 + Motion_10_Interaction7519_g76908 ) + Motion_20_Squash4418_g76908 ) + Motion_30_Flutter263_g76908 );
				half3 WorldData19_g76976 = Vertex_Motion_World1118_g76908;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76976 = WorldData19_g76976;
				#else
				float3 staticSwitch14_g76976 = ObjectData20_g76976;
				#endif
				float3 temp_output_7495_0_g76908 = staticSwitch14_g76976;
				float3 Vertex_Motion7493_g76908 = temp_output_7495_0_g76908;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 break2709_g76908 = cross( ViewDirection3963_g76908 , half3(0,1,0) );
				float3 appendResult2710_g76908 = (float3(-break2709_g76908.z , 0.0 , break2709_g76908.x));
				float3 appendResult2667_g76908 = (float3(Global_MeshVariation5104_g76908 , 0.5 , Global_MeshVariation5104_g76908));
				half Mesh_Height1524_g76908 = v.ase_color.a;
				float dotResult2212_g76908 = dot( ViewDirection3963_g76908 , float3(0,1,0) );
				half Mask_HView2656_g76908 = dotResult2212_g76908;
				float saferPower2652_g76908 = abs( Mask_HView2656_g76908 );
				half3 Grass_Perspective2661_g76908 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g76908 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g76908*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g76908 * pow( saferPower2652_g76908 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g76940 = _LayerVertexValue;
				float temp_output_19_0_g76944 = TVE_VertexUsage[(int)temp_output_84_0_g76940];
				float4 temp_output_94_19_g76940 = TVE_VertexCoords;
				half2 UV97_g76940 = ( (temp_output_94_19_g76940).zw + ( (temp_output_94_19_g76940).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76940 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76940,temp_output_84_0_g76940), 0.0 );
				float4 temp_output_17_0_g76944 = tex2DArrayNode50_g76940;
				float4 temp_output_111_19_g76940 = TVE_VertexParams;
				float4 temp_output_3_0_g76944 = temp_output_111_19_g76940;
				float4 ifLocalVar18_g76944 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76944 >= 0.5 )
				ifLocalVar18_g76944 = temp_output_17_0_g76944;
				else
				ifLocalVar18_g76944 = temp_output_3_0_g76944;
				float4 lerpResult22_g76944 = lerp( temp_output_3_0_g76944 , temp_output_17_0_g76944 , temp_output_19_0_g76944);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76944 = lerpResult22_g76944;
				#else
				float4 staticSwitch24_g76944 = ifLocalVar18_g76944;
				#endif
				half4 Global_Vertex_Params4173_g76908 = staticSwitch24_g76944;
				float4 break322_g76945 = Global_Vertex_Params4173_g76908;
				half Global_VertexSize174_g76908 = saturate( break322_g76945.w );
				float lerpResult346_g76908 = lerp( 1.0 , Global_VertexSize174_g76908 , _GlobalSize);
				float3 appendResult3480_g76908 = (float3(lerpResult346_g76908 , lerpResult346_g76908 , lerpResult346_g76908));
				half3 ObjectData20_g76973 = appendResult3480_g76908;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g76973 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76973 = WorldData19_g76973;
				#else
				float3 staticSwitch14_g76973 = ObjectData20_g76973;
				#endif
				half3 Vertex_Size1741_g76908 = staticSwitch14_g76973;
				float temp_output_7_0_g76974 = _SizeFadeEndValue;
				float temp_output_10_0_g76974 = ( _SizeFadeStartValue - temp_output_7_0_g76974 );
				float temp_output_7453_0_g76908 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g76908 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g76974 ) / ( temp_output_10_0_g76974 + 0.0001 ) ) );
				float3 appendResult3482_g76908 = (float3(temp_output_7453_0_g76908 , temp_output_7453_0_g76908 , temp_output_7453_0_g76908));
				half3 ObjectData20_g76972 = appendResult3482_g76908;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g76972 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76972 = WorldData19_g76972;
				#else
				float3 staticSwitch14_g76972 = ObjectData20_g76972;
				#endif
				float3 Vertex_SizeFade1740_g76908 = staticSwitch14_g76972;
				float3 lerpResult16_g76977 = lerp( VertexPosition3588_g76908 , ( ( ( Vertex_Motion7493_g76908 + Grass_Perspective2661_g76908 ) * Vertex_Size1741_g76908 * Vertex_SizeFade1740_g76908 ) + Mesh_PivotsOS2291_g76908 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g76908 = lerpResult16_g76977;
				float3 Final_VertexPosition890_g76908 = ( temp_output_4912_0_g76908 + _DisableSRPBatcher );
				
				float4 break33_g77028 = _second_uvs_mode;
				float2 temp_output_30_0_g77028 = ( v.ase_texcoord.xy * break33_g77028.x );
				float2 appendResult21_g77023 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76908 = appendResult21_g77023;
				float2 temp_output_29_0_g77028 = ( Mesh_DetailCoord3_g76908 * break33_g77028.y );
				float2 temp_output_31_0_g77028 = ( (WorldPosition_Shifted7477_g76908).xz * break33_g77028.z );
				half2 Second_UVs_Tilling7609_g76908 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76908 = ( 1.0 / Second_UVs_Tilling7609_g76908 );
				float2 lerpResult7614_g76908 = lerp( Second_UVs_Tilling7609_g76908 , Second_UVs_Scale7610_g76908 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76908 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76934 = ( ( ( temp_output_30_0_g77028 + temp_output_29_0_g77028 + temp_output_31_0_g77028 ) * lerpResult7614_g76908 ) + Second_UVs_Offset7605_g76908 );
				o.ase_texcoord10.xy = vertexToFrag11_g76934;
				o.ase_texcoord11.xyz = vertexToFrag3890_g76908;
				o.ase_texcoord12.xyz = vertexToFrag4224_g76908;
				half Global_Noise_A4860_g76908 = break638_g77004.a;
				half Tint_Highlight_Value3231_g76908 = ( Global_Noise_A4860_g76908 * Global_Wind_Power2223_g76908 * Motion_FadeOut4005_g76908 * Mesh_Height1524_g76908 );
				float vertexToFrag11_g76949 = Tint_Highlight_Value3231_g76908;
				o.ase_texcoord10.z = vertexToFrag11_g76949;
				
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
				float3 vertexValue = Final_VertexPosition890_g76908;
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


				half2 Main_UVs15_g76908 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76908 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76908 );
				float3 lerpResult6223_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76908).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76908 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				half Main_Mask57_g76908 = tex2DNode35_g76908.b;
				float clampResult17_g77013 = clamp( Main_Mask57_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77014 = _MainMaskMinValue;
				float temp_output_10_0_g77014 = ( _MainMaskMaxValue - temp_output_7_0_g77014 );
				half Main_Mask_Remap5765_g76908 = saturate( ( ( clampResult17_g77013 - temp_output_7_0_g77014 ) / ( temp_output_10_0_g77014 + 0.0001 ) ) );
				float lerpResult7671_g76908 = lerp( 1.0 , Main_Mask_Remap5765_g76908 , _MainColorMode);
				float4 lerpResult7654_g76908 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76908);
				half3 Main_Color_RGB7657_g76908 = (lerpResult7654_g76908).rgb;
				half3 Main_Albedo99_g76908 = ( lerpResult6223_g76908 * Main_Color_RGB7657_g76908 );
				float2 vertexToFrag11_g76934 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g76908 = vertexToFrag11_g76934;
				float4 tex2DNode89_g76908 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76908 );
				float3 lerpResult6225_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76908).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76908 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				half Second_Mask81_g76908 = tex2DNode33_g76908.b;
				float clampResult17_g77016 = clamp( Second_Mask81_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77017 = _SecondMaskMinValue;
				float temp_output_10_0_g77017 = ( _SecondMaskMaxValue - temp_output_7_0_g77017 );
				half Second_Mask_Remap6130_g76908 = saturate( ( ( clampResult17_g77016 - temp_output_7_0_g77017 ) / ( temp_output_10_0_g77017 + 0.0001 ) ) );
				float lerpResult7672_g76908 = lerp( 1.0 , Second_Mask_Remap6130_g76908 , _SecondColorMode);
				float4 lerpResult7662_g76908 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76908);
				half3 Second_Color_RGB7663_g76908 = (lerpResult7662_g76908).rgb;
				half3 Second_Albedo153_g76908 = ( lerpResult6225_g76908 * Second_Color_RGB7663_g76908 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76950 = 2.0;
				#else
				float staticSwitch1_g76950 = 4.594794;
				#endif
				float3 lerpResult4834_g76908 = lerp( ( Main_Albedo99_g76908 * Second_Albedo153_g76908 * staticSwitch1_g76950 ) , Second_Albedo153_g76908 , _DetailBlendMode);
				float lerpResult6885_g76908 = lerp( Main_Mask57_g76908 , Second_Mask81_g76908 , _DetailMaskMode);
				float clampResult17_g76986 = clamp( lerpResult6885_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76985 = _DetailMaskMinValue;
				float temp_output_10_0_g76985 = ( _DetailMaskMaxValue - temp_output_7_0_g76985 );
				half Blend_Mask_Texture6794_g76908 = saturate( ( ( clampResult17_g76986 - temp_output_7_0_g76985 ) / ( temp_output_10_0_g76985 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76908 = IN.ase_color.b;
				half4 Normal_Packed45_g77012 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				float2 appendResult58_g77012 = (float2(( (Normal_Packed45_g77012).x * (Normal_Packed45_g77012).w ) , (Normal_Packed45_g77012).y));
				half2 Normal_Default50_g77012 = appendResult58_g77012;
				half2 Normal_ASTC41_g77012 = (Normal_Packed45_g77012).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77012 = Normal_ASTC41_g77012;
				#else
				float2 staticSwitch38_g77012 = Normal_Default50_g77012;
				#endif
				half2 Normal_NO_DTX544_g77012 = (Normal_Packed45_g77012).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77012 = Normal_NO_DTX544_g77012;
				#else
				float2 staticSwitch37_g77012 = staticSwitch38_g77012;
				#endif
				float2 temp_output_6555_0_g76908 = ( (staticSwitch37_g77012*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76908 = (float3(temp_output_6555_0_g76908 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g76908 = appendResult7388_g76908;
				float3 worldNormal7389_g76908 = float3(dot(tanToWorld0,tanNormal7389_g76908), dot(tanToWorld1,tanNormal7389_g76908), dot(tanToWorld2,tanNormal7389_g76908));
				half3 Main_NormalWS7390_g76908 = worldNormal7389_g76908;
				float lerpResult6884_g76908 = lerp( Mesh_DetailMask90_g76908 , ((Main_NormalWS7390_g76908).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76984 = clamp( lerpResult6884_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76983 = _DetailMeshMinValue;
				float temp_output_10_0_g76983 = ( _DetailMeshMaxValue - temp_output_7_0_g76983 );
				half Blend_Mask_Mesh1540_g76908 = saturate( ( ( clampResult17_g76984 - temp_output_7_0_g76983 ) / ( temp_output_10_0_g76983 + 0.0001 ) ) );
				float clampResult17_g76994 = clamp( ( Blend_Mask_Texture6794_g76908 * Blend_Mask_Mesh1540_g76908 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77009 = _DetailBlendMinValue;
				float temp_output_10_0_g77009 = ( _DetailBlendMaxValue - temp_output_7_0_g77009 );
				half Blend_Mask147_g76908 = ( saturate( ( ( clampResult17_g76994 - temp_output_7_0_g77009 ) / ( temp_output_10_0_g77009 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76908 = lerp( Main_Albedo99_g76908 , lerpResult4834_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76908 = lerpResult235_g76908;
				#else
				float3 staticSwitch255_g76908 = Main_Albedo99_g76908;
				#endif
				half3 Blend_Albedo265_g76908 = staticSwitch255_g76908;
				half Mesh_Height1524_g76908 = IN.ase_color.a;
				float temp_output_7_0_g76959 = _GradientMinValue;
				float temp_output_10_0_g76959 = ( _GradientMaxValue - temp_output_7_0_g76959 );
				half Tint_Gradient_Value2784_g76908 = saturate( ( ( Mesh_Height1524_g76908 - temp_output_7_0_g76959 ) / ( temp_output_10_0_g76959 + 0.0001 ) ) );
				float3 lerpResult2779_g76908 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g76908);
				float lerpResult6617_g76908 = lerp( Main_Mask_Remap5765_g76908 , Second_Mask_Remap6130_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76908 = lerpResult6617_g76908;
				#else
				float staticSwitch6623_g76908 = Main_Mask_Remap5765_g76908;
				#endif
				half Blend_Mask_Remap6621_g76908 = staticSwitch6623_g76908;
				half Tint_Gradient_Mask6207_g76908 = Blend_Mask_Remap6621_g76908;
				float3 lerpResult6208_g76908 = lerp( float3( 1,1,1 ) , lerpResult2779_g76908 , Tint_Gradient_Mask6207_g76908);
				half3 Tint_Gradient_Color5769_g76908 = lerpResult6208_g76908;
				half3 Tint_Noise_Color5770_g76908 = float3(1,1,1);
				float Mesh_Occlusion318_g76908 = IN.ase_color.g;
				float clampResult17_g76956 = clamp( Mesh_Occlusion318_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76962 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76962 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76962 );
				half Occlusion_Mask6432_g76908 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76962 ) / ( temp_output_10_0_g76962 + 0.0001 ) ) );
				float3 lerpResult2945_g76908 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76908);
				half3 Occlusion_Color648_g76908 = lerpResult2945_g76908;
				half3 Matcap_Color7428_g76908 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76908 = ( ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 * Occlusion_Color648_g76908 ) + Matcap_Color7428_g76908 );
				float3 temp_output_3_0_g76954 = Blend_Albedo_Tinted2808_g76908;
				float dotResult20_g76954 = dot( temp_output_3_0_g76954 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76908 = dotResult20_g76954;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76908).xxx;
				float temp_output_82_0_g76929 = _LayerColorsValue;
				float temp_output_19_0_g76933 = TVE_ColorsUsage[(int)temp_output_82_0_g76929];
				float4 temp_output_91_19_g76929 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76908 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 vertexToFrag4224_g76908 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 lerpResult4822_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ColorsPositionMode);
				half2 UV94_g76929 = ( (temp_output_91_19_g76929).zw + ( (temp_output_91_19_g76929).xy * (lerpResult4822_g76908).xz ) );
				float4 tex2DArrayNode83_g76929 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76929,temp_output_82_0_g76929), 0.0 );
				float4 temp_output_17_0_g76933 = tex2DArrayNode83_g76929;
				float4 temp_output_92_86_g76929 = TVE_ColorsParams;
				float4 temp_output_3_0_g76933 = temp_output_92_86_g76929;
				float4 ifLocalVar18_g76933 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76933 >= 0.5 )
				ifLocalVar18_g76933 = temp_output_17_0_g76933;
				else
				ifLocalVar18_g76933 = temp_output_3_0_g76933;
				float4 lerpResult22_g76933 = lerp( temp_output_3_0_g76933 , temp_output_17_0_g76933 , temp_output_19_0_g76933);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76933 = lerpResult22_g76933;
				#else
				float4 staticSwitch24_g76933 = ifLocalVar18_g76933;
				#endif
				half4 Global_Colors_Params5434_g76908 = staticSwitch24_g76933;
				float4 temp_output_346_0_g76915 = Global_Colors_Params5434_g76908;
				half Global_Colors_A1701_g76908 = saturate( (temp_output_346_0_g76915).w );
				half Colors_Influence3668_g76908 = Global_Colors_A1701_g76908;
				float temp_output_6306_0_g76908 = ( 1.0 - Colors_Influence3668_g76908 );
				float3 lerpResult3618_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76908 * temp_output_6306_0_g76908 ) ));
				half3 Global_Colors_RGB1700_g76908 = (temp_output_346_0_g76915).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76946 = 2.0;
				#else
				float staticSwitch1_g76946 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76908 = ( Global_Colors_RGB1700_g76908 * staticSwitch1_g76946 * _ColorsIntensityValue );
				float lerpResult7679_g76908 = lerp( 1.0 , Blend_Mask_Remap6621_g76908 , _ColorsMaskValue);
				half Colors_Value3692_g76908 = ( lerpResult7679_g76908 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = IN.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				float lerpResult3870_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _ColorsVariationValue);
				half Colors_Variation3650_g76908 = lerpResult3870_g76908;
				half Occlusion_Alpha6463_g76908 = _VertexOcclusionColor.a;
				float lerpResult6459_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult6459_g76908);
				half Occlusion_Colors6450_g76908 = lerpResult6461_g76908;
				float3 temp_output_3_0_g76955 = ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 );
				float dotResult20_g76955 = dot( temp_output_3_0_g76955 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76908 = clamp( saturate( ( dotResult20_g76955 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76908 = clampResult6740_g76908;
				float temp_output_7_0_g76992 = 0.1;
				float temp_output_10_0_g76992 = ( 0.2 - temp_output_7_0_g76992 );
				float lerpResult16_g76947 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76908 * Colors_Influence3668_g76908 * Colors_Variation3650_g76908 * Occlusion_Colors6450_g76908 * Blend_Albedo_Globals6410_g76908 ) - temp_output_7_0_g76992 ) / ( temp_output_10_0_g76992 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , ( lerpResult3618_g76908 * Colors_RGB1954_g76908 ) , lerpResult16_g76947);
				half3 Blend_Albedo_Colored_High6027_g76908 = lerpResult3628_g76908;
				half3 Blend_Albedo_Colored863_g76908 = Blend_Albedo_Colored_High6027_g76908;
				half3 Global_OverlayColor1758_g76908 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76924 = _LayerExtrasValue;
				float temp_output_19_0_g76928 = TVE_ExtrasUsage[(int)temp_output_84_0_g76924];
				float4 temp_output_93_19_g76924 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ExtrasPositionMode);
				half2 UV96_g76924 = ( (temp_output_93_19_g76924).zw + ( (temp_output_93_19_g76924).xy * (lerpResult4827_g76908).xz ) );
				float4 tex2DArrayNode48_g76924 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76924,temp_output_84_0_g76924), 0.0 );
				float4 temp_output_17_0_g76928 = tex2DArrayNode48_g76924;
				float4 temp_output_94_85_g76924 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76928 = temp_output_94_85_g76924;
				float4 ifLocalVar18_g76928 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76928 >= 0.5 )
				ifLocalVar18_g76928 = temp_output_17_0_g76928;
				else
				ifLocalVar18_g76928 = temp_output_3_0_g76928;
				float4 lerpResult22_g76928 = lerp( temp_output_3_0_g76928 , temp_output_17_0_g76928 , temp_output_19_0_g76928);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76928 = lerpResult22_g76928;
				#else
				float4 staticSwitch24_g76928 = ifLocalVar18_g76928;
				#endif
				half4 Global_Extras_Params5440_g76908 = staticSwitch24_g76928;
				float4 break456_g76938 = Global_Extras_Params5440_g76908;
				half Global_Extras_Overlay156_g76908 = break456_g76938.z;
				float lerpResult1065_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _OverlayVariationValue);
				half Overlay_Variation4560_g76908 = lerpResult1065_g76908;
				half Overlay_Value5738_g76908 = ( _GlobalOverlay * Global_Extras_Overlay156_g76908 * Overlay_Variation4560_g76908 );
				half2 Main_Normal137_g76908 = temp_output_6555_0_g76908;
				float2 lerpResult3372_g76908 = lerp( float2( 0,0 ) , Main_Normal137_g76908 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g77015 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				float2 appendResult58_g77015 = (float2(( (Normal_Packed45_g77015).x * (Normal_Packed45_g77015).w ) , (Normal_Packed45_g77015).y));
				half2 Normal_Default50_g77015 = appendResult58_g77015;
				half2 Normal_ASTC41_g77015 = (Normal_Packed45_g77015).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77015 = Normal_ASTC41_g77015;
				#else
				float2 staticSwitch38_g77015 = Normal_Default50_g77015;
				#endif
				half2 Normal_NO_DTX544_g77015 = (Normal_Packed45_g77015).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77015 = Normal_NO_DTX544_g77015;
				#else
				float2 staticSwitch37_g77015 = staticSwitch38_g77015;
				#endif
				float2 temp_output_6560_0_g76908 = ( (staticSwitch37_g77015*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77018 = temp_output_6560_0_g76908;
				float2 break64_g77018 = Normal_Planar45_g77018;
				float3 appendResult65_g77018 = (float3(break64_g77018.x , 0.0 , break64_g77018.y));
				float2 temp_output_7603_0_g76908 = (mul( ase_worldToTangent, appendResult65_g77018 )).xy;
				float2 ifLocalVar7604_g76908 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76908 = temp_output_7603_0_g76908;
				else
				ifLocalVar7604_g76908 = temp_output_6560_0_g76908;
				half2 Second_Normal179_g76908 = ifLocalVar7604_g76908;
				float2 temp_output_36_0_g76951 = ( lerpResult3372_g76908 + Second_Normal179_g76908 );
				float2 lerpResult3376_g76908 = lerp( Main_Normal137_g76908 , temp_output_36_0_g76951 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76908 = lerpResult3376_g76908;
				#else
				float2 staticSwitch267_g76908 = Main_Normal137_g76908;
				#endif
				half2 Blend_Normal312_g76908 = staticSwitch267_g76908;
				float3 appendResult7377_g76908 = (float3(Blend_Normal312_g76908 , 1.0));
				float3 tanNormal7376_g76908 = appendResult7377_g76908;
				float3 worldNormal7376_g76908 = float3(dot(tanToWorld0,tanNormal7376_g76908), dot(tanToWorld1,tanNormal7376_g76908), dot(tanToWorld2,tanNormal7376_g76908));
				half3 Blend_NormalWS7375_g76908 = worldNormal7376_g76908;
				float lerpResult7446_g76908 = lerp( (Blend_NormalWS7375_g76908).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76908);
				float lerpResult6757_g76908 = lerp( 1.0 , saturate( lerpResult7446_g76908 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76908 = lerpResult6757_g76908;
				half Overlay_Shading6688_g76908 = Blend_Albedo_Globals6410_g76908;
				half Overlay_Custom6707_g76908 = 1.0;
				float lerpResult7693_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult7693_g76908);
				half Occlusion_Overlay6471_g76908 = lerpResult6467_g76908;
				float temp_output_7_0_g76960 = 0.1;
				float temp_output_10_0_g76960 = ( 0.2 - temp_output_7_0_g76960 );
				half Overlay_Mask_High6064_g76908 = saturate( ( ( ( Overlay_Value5738_g76908 * Overlay_Projection6081_g76908 * Overlay_Shading6688_g76908 * Overlay_Custom6707_g76908 * Occlusion_Overlay6471_g76908 ) - temp_output_7_0_g76960 ) / ( temp_output_10_0_g76960 + 0.0001 ) ) );
				half Overlay_Mask269_g76908 = Overlay_Mask_High6064_g76908;
				float3 lerpResult336_g76908 = lerp( Blend_Albedo_Colored863_g76908 , Global_OverlayColor1758_g76908 , Overlay_Mask269_g76908);
				half3 Blend_Albedo_Overlay359_g76908 = lerpResult336_g76908;
				half Global_WetnessContrast6502_g76908 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76908 = break456_g76938.y;
				half Wetness_Value6343_g76908 = ( Global_Extras_Wetness305_g76908 * _GlobalWetness );
				float3 lerpResult6367_g76908 = lerp( Blend_Albedo_Overlay359_g76908 , ( Blend_Albedo_Overlay359_g76908 * Blend_Albedo_Overlay359_g76908 ) , ( Global_WetnessContrast6502_g76908 * Wetness_Value6343_g76908 ));
				half3 Blend_Albedo_Wetness6351_g76908 = lerpResult6367_g76908;
				float vertexToFrag11_g76949 = IN.ase_texcoord10.z;
				half3 Tint_Highlight_Color5771_g76908 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g76949 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g76908 = ( Blend_Albedo_Wetness6351_g76908 * Tint_Highlight_Color5771_g76908 );
				half3 Blend_Albedo_Subsurface149_g76908 = temp_output_6309_0_g76908;
				half3 Blend_Albedo_RimLight7316_g76908 = Blend_Albedo_Subsurface149_g76908;
				
				half Global_OverlayNormalScale6581_g76908 = TVE_OverlayNormalValue;
				float lerpResult6585_g76908 = lerp( 1.0 , Global_OverlayNormalScale6581_g76908 , Overlay_Mask269_g76908);
				half2 Blend_Normal_Overlay366_g76908 = ( Blend_Normal312_g76908 * lerpResult6585_g76908 );
				half Global_WetnessNormalScale6571_g76908 = TVE_WetnessNormalValue;
				float lerpResult6579_g76908 = lerp( 1.0 , Global_WetnessNormalScale6571_g76908 , ( Wetness_Value6343_g76908 * Wetness_Value6343_g76908 ));
				half2 Blend_Normal_Wetness6372_g76908 = ( Blend_Normal_Overlay366_g76908 * lerpResult6579_g76908 );
				float3 appendResult6568_g76908 = (float3(Blend_Normal_Wetness6372_g76908 , 1.0));
				float3 temp_output_13_0_g76939 = appendResult6568_g76908;
				float3 temp_output_33_0_g76939 = ( temp_output_13_0_g76939 * _render_normals );
				float3 switchResult12_g76939 = (((ase_vface>0)?(temp_output_13_0_g76939):(temp_output_33_0_g76939)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76908 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76908 = temp_output_7161_0_g76908;
				half2 Emissive_UVs2468_g76908 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77029 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77029).xxx;
				float temp_output_10_0_g77029 = ( _EmissiveTexMaxValue - temp_output_7_0_g77029 );
				half3 Emissive_Texture7022_g76908 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76908 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77029 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76908 = break456_g76938.x;
				float lerpResult4206_g76908 = lerp( 1.0 , Global_Extras_Emissive4203_g76908 , _GlobalEmissive);
				half Emissive_Value7024_g76908 = ( ( lerpResult4206_g76908 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76908 = saturate( ( Emissive_Texture7022_g76908 + Emissive_Value7024_g76908 ) );
				float3 temp_output_3_0_g77031 = ( Emissive_Color7162_g76908 * Emissive_Mask6968_g76908 );
				float temp_output_15_0_g77031 = _emissive_intensity_value;
				float3 temp_output_23_0_g77031 = ( temp_output_3_0_g77031 * temp_output_15_0_g77031 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76908 = temp_output_23_0_g77031;
				#else
				float3 staticSwitch7687_g76908 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76908 = staticSwitch7687_g76908;
				
				half Render_Specular4861_g76908 = _RenderSpecular;
				float3 temp_cast_13 = (( 0.04 * Render_Specular4861_g76908 )).xxx;
				
				float lerpResult240_g76908 = lerp( 1.0 , tex2DNode35_g76908.g , _MainOcclusionValue);
				half Main_Occlusion247_g76908 = lerpResult240_g76908;
				float lerpResult239_g76908 = lerp( 1.0 , tex2DNode33_g76908.g , _SecondOcclusionValue);
				half Second_Occlusion251_g76908 = lerpResult239_g76908;
				float lerpResult294_g76908 = lerp( Main_Occlusion247_g76908 , Second_Occlusion251_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch310_g76908 = lerpResult294_g76908;
				#else
				float staticSwitch310_g76908 = Main_Occlusion247_g76908;
				#endif
				half Blend_Occlusion323_g76908 = staticSwitch310_g76908;
				
				half Main_Smoothness227_g76908 = ( tex2DNode35_g76908.a * _MainSmoothnessValue );
				half Second_Smoothness236_g76908 = ( tex2DNode33_g76908.a * _SecondSmoothnessValue );
				float lerpResult266_g76908 = lerp( Main_Smoothness227_g76908 , Second_Smoothness236_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch297_g76908 = lerpResult266_g76908;
				#else
				float staticSwitch297_g76908 = Main_Smoothness227_g76908;
				#endif
				half Blend_Smoothness314_g76908 = staticSwitch297_g76908;
				half Global_OverlaySmoothness311_g76908 = TVE_OverlaySmoothness;
				float lerpResult343_g76908 = lerp( Blend_Smoothness314_g76908 , Global_OverlaySmoothness311_g76908 , Overlay_Mask269_g76908);
				half Blend_Smoothness_Overlay371_g76908 = lerpResult343_g76908;
				float temp_output_6499_0_g76908 = ( 1.0 - Wetness_Value6343_g76908 );
				half Blend_Smoothness_Wetness4130_g76908 = saturate( ( Blend_Smoothness_Overlay371_g76908 + ( 1.0 - ( temp_output_6499_0_g76908 * temp_output_6499_0_g76908 ) ) ) );
				
				float localCustomAlphaClip19_g77011 = ( 0.0 );
				half Main_Alpha316_g76908 = tex2DNode29_g76908.a;
				half Second_Alpha5007_g76908 = tex2DNode89_g76908.a;
				float lerpResult6153_g76908 = lerp( Main_Alpha316_g76908 , Second_Alpha5007_g76908 , Blend_Mask147_g76908);
				float lerpResult6785_g76908 = lerp( ( Main_Alpha316_g76908 * Second_Alpha5007_g76908 ) , lerpResult6153_g76908 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76908 = lerpResult6785_g76908;
				#else
				float staticSwitch6158_g76908 = Main_Alpha316_g76908;
				#endif
				half Blend_Alpha6157_g76908 = staticSwitch6158_g76908;
				half AlphaTreshold2132_g76908 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g76908 = saturate( break456_g76938.w );
				float lerpResult5154_g76908 = lerp( 0.0 , Global_MeshVariation5104_g76908 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g76908 = lerpResult5154_g76908;
				float Emissive_Alpha7625_g76908 = 0.0;
				float lerpResult6866_g76908 = lerp( ( 1.0 - Blend_Mask147_g76908 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76908 = lerpResult6866_g76908;
				#else
				float staticSwitch6612_g76908 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76908 = staticSwitch6612_g76908;
				half Alpha_Mask6234_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5203_g76908 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g76908 - saturate( ( Global_Alpha_Variation5158_g76908 + Emissive_Alpha7625_g76908 ) ) ) + ( Global_Extras_Alpha1033_g76908 * 0.1 ) ) ) , ( Alpha_Mask6234_g76908 * _GlobalAlpha ));
				float lerpResult16_g76952 = lerp( 1.0 , lerpResult5203_g76908 , TVE_IsEnabled);
				half Global_Alpha315_g76908 = lerpResult16_g76952;
				float3 normalizeResult2169_g76908 = normalize( worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 normalizeResult3971_g76908 = normalize( cross( ddy( worldPos ) , ddx( worldPos ) ) );
				float3 WorldNormal_Derivates3972_g76908 = normalizeResult3971_g76908;
				float dotResult3851_g76908 = dot( ViewDirection3963_g76908 , WorldNormal_Derivates3972_g76908 );
				float lerpResult3993_g76908 = lerp( 1.0 , saturate( ( abs( dotResult3851_g76908 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g76908 = lerpResult3993_g76908;
				half Fade_Effects_A5360_g76908 = Fade_Glancing3853_g76908;
				float temp_output_7_0_g76961 = TVE_CameraFadeMin;
				float temp_output_10_0_g76961 = ( TVE_CameraFadeMax - temp_output_7_0_g76961 );
				float lerpResult4755_g76908 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76961 ) / ( temp_output_10_0_g76961 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76908 = lerpResult4755_g76908;
				half Fade_Effects_B6228_g76908 = ( Fade_Effects_A5360_g76908 * Fade_Camera3743_g76908 );
				half Fade_Mask5149_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5141_g76908 = lerp( 1.0 , ( Fade_Effects_B6228_g76908 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76908);
				half Fade_Effects_C7653_g76908 = lerpResult5141_g76908;
				float temp_output_5865_0_g76908 = saturate( ( Fade_Effects_C7653_g76908 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76908 ) ).r ) );
				half Fade_Alpha3727_g76908 = temp_output_5865_0_g76908;
				half Final_Alpha7344_g76908 = min( ( ( Blend_Alpha6157_g76908 - AlphaTreshold2132_g76908 ) * Global_Alpha315_g76908 ) , Fade_Alpha3727_g76908 );
				float temp_output_3_0_g77011 = Final_Alpha7344_g76908;
				float Alpha19_g77011 = temp_output_3_0_g77011;
				float temp_output_15_0_g77011 = 0.01;
				float Treshold19_g77011 = temp_output_15_0_g77011;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#else
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76908 = (lerpResult7654_g76908).a;
				half Second_Color_Alpha6152_g76908 = (lerpResult7662_g76908).a;
				float lerpResult6168_g76908 = lerp( Main_Color_Alpha6121_g76908 , Second_Color_Alpha6152_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76908 = lerpResult6168_g76908;
				#else
				float staticSwitch6174_g76908 = Main_Color_Alpha6121_g76908;
				#endif
				half Blend_Color_Alpha6167_g76908 = staticSwitch6174_g76908;
				half Final_Clip914_g76908 = saturate( ( Alpha19_g77011 * Blend_Color_Alpha6167_g76908 ) );
				
				half3 Subsurface_Color1722_g76908 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g76908 );
				half Global_Subsurface4041_g76908 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g76908 = TVE_OverlaySubsurface;
				float lerpResult7362_g76908 = lerp( 1.0 , Global_OverlaySubsurface5667_g76908 , Overlay_Value5738_g76908);
				half Overlay_Subsurface7361_g76908 = lerpResult7362_g76908;
				half Subsurface_Intensity1752_g76908 = ( _SubsurfaceValue * Global_Subsurface4041_g76908 * Overlay_Subsurface7361_g76908 );
				float lerpResult7680_g76908 = lerp( 1.0 , Blend_Mask_Remap6621_g76908 , _SubsurfaceMaskValue);
				half Subsurface_Mask1557_g76908 = lerpResult7680_g76908;
				half3 Subsurface_Translucency884_g76908 = ( Subsurface_Color1722_g76908 * Subsurface_Intensity1752_g76908 * Subsurface_Mask1557_g76908 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76908;
				o.Normal = switchResult12_g76939;
				o.Emission = Final_Emissive2476_g76908;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = temp_cast_13;
					#else
						o.Metallic = 0;
					#endif
					o.Occlusion = Blend_Occlusion323_g76908;
					o.Smoothness = Blend_Smoothness_Wetness4130_g76908;
				#endif

				o.Alpha = Final_Clip914_g76908;
				float AlphaClipThreshold = 0.5;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g76908;

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
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _SPECULAR_SETUP 1
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
			#define TVE_IS_SUBSURFACE_SHADER
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
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
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

				float3 VertexPosition3588_g76908 = v.vertex.xyz;
				float3 appendResult60_g76918 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76908 = ( appendResult60_g76918 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g76908 = Mesh_PivotsData2831_g76908;
				float3 temp_output_2283_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				half3 VertexPos40_g76989 = temp_output_2283_0_g76908;
				half3 VertexPos40_g76990 = VertexPos40_g76989;
				float3 appendResult74_g76990 = (float3(VertexPos40_g76990.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76990 = appendResult74_g76990;
				float3 break84_g76990 = VertexPos40_g76990;
				float3 appendResult81_g76990 = (float3(0.0 , break84_g76990.y , break84_g76990.z));
				half3 VertexPosOtherAxis82_g76990 = appendResult81_g76990;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76908 = ase_worldPos;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 WorldPosition_Shifted7477_g76908 = ( WorldPosition3905_g76908 - TVE_WorldOrigin );
				float4x4 break19_g76964 = unity_ObjectToWorld;
				float3 appendResult20_g76964 = (float3(break19_g76964[ 0 ][ 3 ] , break19_g76964[ 1 ][ 3 ] , break19_g76964[ 2 ][ 3 ]));
				float3 temp_output_122_0_g76964 = Mesh_PivotsData2831_g76908;
				float3 PivotsOnly105_g76964 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76964 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76966 = ( appendResult20_g76964 + PivotsOnly105_g76964 );
				half3 WorldData19_g76966 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76966 = WorldData19_g76966;
				#else
				float3 staticSwitch14_g76966 = ObjectData20_g76966;
				#endif
				float3 temp_output_114_0_g76964 = staticSwitch14_g76966;
				float3 vertexToFrag4224_g76908 = temp_output_114_0_g76964;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				float3 lerpResult6766_g76908 = lerp( WorldPosition_Shifted7477_g76908 , ObjectPosition_Shifted7481_g76908 , _MotionPosition_10);
				float3 Motion_10_Position6738_g76908 = lerpResult6766_g76908;
				half3 Input_Position419_g77004 = Motion_10_Position6738_g76908;
				float Input_MotionScale287_g77004 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77004 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77004 = (( Input_Position419_g77004 * Input_MotionScale287_g77004 * NoiseTex_Tilling735_g77004 * 0.0075 )).xz;
				float2 temp_output_447_0_g76913 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g76908 = temp_output_447_0_g76913;
				half2 Input_DirectionWS423_g77004 = Global_Wind_DirectionWS4683_g76908;
				float lerpResult128_g77005 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77004 = _MotionSpeed_10;
				half Input_MotionVariation284_g77004 = _MotionVariation_10;
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = v.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				half Input_GlobalMeshVariation569_g77004 = Global_MeshVariation5104_g76908;
				float temp_output_630_0_g77004 = ( ( ( lerpResult128_g77005 * Input_MotionSpeed62_g77004 ) + ( Input_MotionVariation284_g77004 * Input_GlobalMeshVariation569_g77004 ) ) * 0.03 );
				float temp_output_607_0_g77004 = frac( temp_output_630_0_g77004 );
				float4 lerpResult590_g77004 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * temp_output_607_0_g77004 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * frac( ( temp_output_630_0_g77004 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77004 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77004 = lerpResult590_g77004;
				float2 temp_output_645_0_g77004 = ((Noise_Complex703_g77004).rg*2.0 + -1.0);
				float2 break650_g77004 = temp_output_645_0_g77004;
				float3 appendResult649_g77004 = (float3(break650_g77004.x , 0.0 , break650_g77004.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g76908 = (( mul( unity_WorldToObject, float4( appendResult649_g77004 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76995 = Global_Noise_OS5548_g76908;
				float2 break448_g76913 = temp_output_447_0_g76913;
				float3 appendResult452_g76913 = (float3(break448_g76913.x , 0.0 , break448_g76913.y));
				half2 Global_Wind_DirectionOS5692_g76908 = (( mul( unity_WorldToObject, float4( appendResult452_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76995 = Global_Wind_DirectionOS5692_g76908;
				float temp_output_84_0_g76919 = _LayerMotionValue;
				float temp_output_19_0_g76923 = TVE_MotionUsage[(int)temp_output_84_0_g76919];
				float4 temp_output_91_19_g76919 = TVE_MotionCoords;
				half2 UV94_g76919 = ( (temp_output_91_19_g76919).zw + ( (temp_output_91_19_g76919).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76919 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76919,temp_output_84_0_g76919), 0.0 );
				float4 temp_output_17_0_g76923 = tex2DArrayNode50_g76919;
				float4 temp_output_112_19_g76919 = TVE_MotionParams;
				float4 temp_output_3_0_g76923 = temp_output_112_19_g76919;
				float4 ifLocalVar18_g76923 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76923 >= 0.5 )
				ifLocalVar18_g76923 = temp_output_17_0_g76923;
				else
				ifLocalVar18_g76923 = temp_output_3_0_g76923;
				float4 lerpResult22_g76923 = lerp( temp_output_3_0_g76923 , temp_output_17_0_g76923 , temp_output_19_0_g76923);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76923 = lerpResult22_g76923;
				#else
				float4 staticSwitch24_g76923 = ifLocalVar18_g76923;
				#endif
				half4 Global_Motion_Params3909_g76908 = staticSwitch24_g76923;
				float4 break322_g76913 = Global_Motion_Params3909_g76908;
				float lerpResult457_g76913 = lerp( break322_g76913.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76913 = ( 1.0 - lerpResult457_g76913 );
				half Global_Wind_Power2223_g76908 = ( 1.0 - ( temp_output_459_0_g76913 * temp_output_459_0_g76913 ) );
				half Input_WindPower449_g76995 = Global_Wind_Power2223_g76908;
				float2 lerpResult516_g76995 = lerp( Input_Noise_DirectionOS487_g76995 , Input_Wind_DirectionOS458_g76995 , ( Input_WindPower449_g76995 * 0.6 ));
				half Mesh_Motion_107572_g76908 = v.ase_color.a;
				half Input_MeshHeight388_g76995 = Mesh_Motion_107572_g76908;
				half ObjectData20_g76996 = Input_MeshHeight388_g76995;
				float enc62_g77023 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77023 = DecodeFloatToVector2( enc62_g77023 );
				float2 break63_g77023 = ( localDecodeFloatToVector262_g77023 * 100.0 );
				float Bounds_Height5230_g76908 = break63_g77023.x;
				half Input_BoundsHeight390_g76995 = Bounds_Height5230_g76908;
				half WorldData19_g76996 = ( Input_MeshHeight388_g76995 * Input_MeshHeight388_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76996 = WorldData19_g76996;
				#else
				float staticSwitch14_g76996 = ObjectData20_g76996;
				#endif
				half Final_Motion10_Mask321_g76995 = ( staticSwitch14_g76996 * 2.0 );
				half Input_BendingAmplitude376_g76995 = _MotionAmplitude_10;
				half Global_MotionValue640_g76995 = TVE_MotionValue_10;
				half2 Final_Bending631_g76995 = ( lerpResult516_g76995 * ( Final_Motion10_Mask321_g76995 * Input_BendingAmplitude376_g76995 * Input_WindPower449_g76995 * Input_WindPower449_g76995 * Global_MotionValue640_g76995 ) );
				float2 appendResult433_g76913 = (float2(break322_g76913.x , break322_g76913.y));
				float2 temp_output_436_0_g76913 = (appendResult433_g76913*2.0 + -1.0);
				float2 break441_g76913 = temp_output_436_0_g76913;
				float3 appendResult440_g76913 = (float3(break441_g76913.x , 0.0 , break441_g76913.y));
				half2 Global_React_DirectionOS39_g76908 = (( mul( unity_WorldToObject, float4( appendResult440_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76995 = Global_React_DirectionOS39_g76908;
				float clampResult17_g76998 = clamp( Input_MeshHeight388_g76995 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76997 = 0.0;
				half Input_InteractionUseMask62_g76995 = _InteractionMaskValue;
				float temp_output_10_0_g76997 = ( Input_InteractionUseMask62_g76995 - temp_output_7_0_g76997 );
				half Final_InteractionRemap594_g76995 = saturate( ( ( clampResult17_g76998 - temp_output_7_0_g76997 ) / ( temp_output_10_0_g76997 + 0.0001 ) ) );
				half ObjectData20_g76999 = Final_InteractionRemap594_g76995;
				half WorldData19_g76999 = ( Final_InteractionRemap594_g76995 * Final_InteractionRemap594_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76999 = WorldData19_g76999;
				#else
				float staticSwitch14_g76999 = ObjectData20_g76999;
				#endif
				half Final_InteractionMask373_g76995 = ( staticSwitch14_g76999 * 2.0 );
				half Input_InteractionAmplitude58_g76995 = _InteractionAmplitude;
				half2 Final_Interaction632_g76995 = ( Input_React_DirectionOS358_g76995 * Final_InteractionMask373_g76995 * Input_InteractionAmplitude58_g76995 );
				half Global_Interaction_Mask66_g76908 = ( break322_g76913.w * break322_g76913.w * break322_g76913.w * break322_g76913.w );
				float Input_InteractionGlobalMask330_g76995 = Global_Interaction_Mask66_g76908;
				half Final_InteractionValue525_g76995 = saturate( ( Input_InteractionAmplitude58_g76995 * Input_InteractionGlobalMask330_g76995 ) );
				float2 lerpResult551_g76995 = lerp( Final_Bending631_g76995 , Final_Interaction632_g76995 , Final_InteractionValue525_g76995);
				float2 break364_g76995 = lerpResult551_g76995;
				float3 appendResult638_g76995 = (float3(break364_g76995.x , 0.0 , break364_g76995.y));
				half3 Motion_10_Interaction7519_g76908 = appendResult638_g76995;
				half3 Angle44_g76989 = Motion_10_Interaction7519_g76908;
				half Angle44_g76990 = (Angle44_g76989).z;
				half3 VertexPos40_g76991 = ( VertexPosRotationAxis50_g76990 + ( VertexPosOtherAxis82_g76990 * cos( Angle44_g76990 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76990 ) * sin( Angle44_g76990 ) ) );
				float3 appendResult74_g76991 = (float3(0.0 , 0.0 , VertexPos40_g76991.z));
				half3 VertexPosRotationAxis50_g76991 = appendResult74_g76991;
				float3 break84_g76991 = VertexPos40_g76991;
				float3 appendResult81_g76991 = (float3(break84_g76991.x , break84_g76991.y , 0.0));
				half3 VertexPosOtherAxis82_g76991 = appendResult81_g76991;
				half Angle44_g76991 = -(Angle44_g76989).x;
				half3 Input_Position419_g77019 = WorldPosition_Shifted7477_g76908;
				float3 break459_g77019 = Input_Position419_g77019;
				float Sum_Position446_g77019 = ( break459_g77019.x + break459_g77019.y + break459_g77019.z );
				half Input_MotionScale321_g77019 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77019 = _MotionVariation_20;
				half Input_GlobalVariation400_g77019 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77020 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77019 = _MotionSpeed_20;
				float temp_output_404_0_g77019 = ( lerpResult128_g77020 * Input_MotionSpeed62_g77019 );
				half Motion_SineA450_g77019 = sin( ( ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) + ( Input_MotionVariation330_g77019 * Input_GlobalVariation400_g77019 ) + temp_output_404_0_g77019 ) );
				half Motion_SineB395_g77019 = sin( ( ( temp_output_404_0_g77019 * 0.6842 ) + ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) ) );
				half3 Input_Position419_g77032 = VertexPosition3588_g76908;
				float3 normalizeResult518_g77032 = normalize( Input_Position419_g77032 );
				half2 Input_DirectionOS423_g77032 = Global_React_DirectionOS39_g76908;
				float2 break521_g77032 = -Input_DirectionOS423_g77032;
				float3 appendResult522_g77032 = (float3(break521_g77032.x , 0.0 , break521_g77032.y));
				float dotResult519_g77032 = dot( normalizeResult518_g77032 , appendResult522_g77032 );
				half Input_Value62_g77032 = _MotionFacingValue;
				float lerpResult524_g77032 = lerp( 1.0 , (dotResult519_g77032*0.5 + 0.5) , Input_Value62_g77032);
				half ObjectData20_g77033 = max( lerpResult524_g77032 , 0.001 );
				half WorldData19_g77033 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77033 = WorldData19_g77033;
				#else
				float staticSwitch14_g77033 = ObjectData20_g77033;
				#endif
				half Motion_FacingMask5214_g76908 = staticSwitch14_g77033;
				half Motion_20_Amplitude4381_g76908 = Motion_FacingMask5214_g76908;
				half Input_MotionAmplitude384_g77019 = Motion_20_Amplitude4381_g76908;
				half Input_GlobalWind407_g77019 = Global_Wind_Power2223_g76908;
				float4 break638_g77004 = abs( Noise_Complex703_g77004 );
				half Global_Noise_B5526_g76908 = break638_g77004.b;
				half Input_GlobalNoise411_g77019 = Global_Noise_B5526_g76908;
				float lerpResult413_g77019 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77019);
				half Motion_Amplitude418_g77019 = ( Input_MotionAmplitude384_g77019 * Input_GlobalWind407_g77019 * pow( Input_GlobalNoise411_g77019 , lerpResult413_g77019 ) );
				half Input_Squash58_g77019 = _MotionAmplitude_20;
				float enc59_g77023 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77023 = DecodeFloatToVector2( enc59_g77023 );
				float2 break61_g77023 = localDecodeFloatToVector259_g77023;
				half Mesh_Motion_2060_g76908 = break61_g77023.x;
				half Input_MeshMotion_20388_g77019 = Mesh_Motion_2060_g76908;
				float Bounds_Radius5231_g76908 = break63_g77023.y;
				half Input_BoundsRadius390_g77019 = Bounds_Radius5231_g76908;
				half Global_MotionValue462_g77019 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77019 = Global_React_DirectionOS39_g76908;
				float2 break371_g77019 = Input_DirectionOS366_g77019;
				float3 appendResult372_g77019 = (float3(break371_g77019.x , ( Motion_SineA450_g77019 * 0.3 ) , break371_g77019.y));
				half3 Motion_20_Squash4418_g76908 = ( ( (max( Motion_SineA450_g77019 , Motion_SineB395_g77019 )*0.5 + 0.5) * Motion_Amplitude418_g77019 * Input_Squash58_g77019 * Input_MeshMotion_20388_g77019 * Input_BoundsRadius390_g77019 * Global_MotionValue462_g77019 ) * appendResult372_g77019 );
				half3 VertexPos40_g76982 = ( ( VertexPosRotationAxis50_g76991 + ( VertexPosOtherAxis82_g76991 * cos( Angle44_g76991 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76991 ) * sin( Angle44_g76991 ) ) ) + Motion_20_Squash4418_g76908 );
				float3 appendResult74_g76982 = (float3(0.0 , VertexPos40_g76982.y , 0.0));
				float3 VertexPosRotationAxis50_g76982 = appendResult74_g76982;
				float3 break84_g76982 = VertexPos40_g76982;
				float3 appendResult81_g76982 = (float3(break84_g76982.x , 0.0 , break84_g76982.z));
				float3 VertexPosOtherAxis82_g76982 = appendResult81_g76982;
				half Input_Rolling379_g77019 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g76908 = ( Motion_SineA450_g77019 * Motion_Amplitude418_g77019 * Input_Rolling379_g77019 * Input_MeshMotion_20388_g77019 * Global_MotionValue462_g77019 );
				half Angle44_g76982 = Motion_20_Rolling5257_g76908;
				half3 Input_Position500_g77000 = WorldPosition_Shifted7477_g76908;
				half Input_MotionScale321_g77000 = _MotionScale_32;
				half Input_MotionVariation330_g77000 = _MotionVariation_32;
				half Input_GlobalVariation372_g77000 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77001 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77000 = _MotionSpeed_32;
				float4 tex2DNode460_g77000 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77000).xz * Input_MotionScale321_g77000 * 0.03 ) + ( Input_MotionVariation330_g77000 * Input_GlobalVariation372_g77000 ) + ( lerpResult128_g77001 * Input_MotionSpeed62_g77000 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77000 = (float3(tex2DNode460_g77000.r , tex2DNode460_g77000.g , tex2DNode460_g77000.b));
				half3 Flutter_Texture489_g77000 = (appendResult462_g77000*2.0 + -1.0);
				float temp_output_7_0_g76958 = TVE_MotionFadeEnd;
				float temp_output_10_0_g76958 = ( TVE_MotionFadeStart - temp_output_7_0_g76958 );
				half Motion_FadeOut4005_g76908 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76958 ) / ( temp_output_10_0_g76958 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g76908 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g76908 * Motion_FadeOut4005_g76908 );
				half Input_MotionAmplitude58_g77000 = Motion_30_Amplitude4960_g76908;
				half Mesh_Motion_30144_g76908 = break61_g77023.y;
				half Input_MeshMotion_30374_g77000 = Mesh_Motion_30144_g76908;
				half Input_GlobalWind471_g77000 = Global_Wind_Power2223_g76908;
				half Global_MotionValue503_g77000 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77000 = Global_Noise_B5526_g76908;
				float lerpResult466_g77000 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77000);
				half Flutter_Amplitude491_g77000 = ( Input_MotionAmplitude58_g77000 * Input_MeshMotion_30374_g77000 * Input_GlobalWind471_g77000 * Global_MotionValue503_g77000 * pow( Input_GlobalNoise472_g77000 , lerpResult466_g77000 ) );
				half3 Motion_30_Flutter263_g76908 = ( Flutter_Texture489_g77000 * Flutter_Amplitude491_g77000 );
				float3 Vertex_Motion_Object833_g76908 = ( ( VertexPosRotationAxis50_g76982 + ( VertexPosOtherAxis82_g76982 * cos( Angle44_g76982 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g76982 ) * sin( Angle44_g76982 ) ) ) + Motion_30_Flutter263_g76908 );
				half3 ObjectData20_g76976 = Vertex_Motion_Object833_g76908;
				float3 temp_output_3474_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				float3 Vertex_Motion_World1118_g76908 = ( ( ( temp_output_3474_0_g76908 + Motion_10_Interaction7519_g76908 ) + Motion_20_Squash4418_g76908 ) + Motion_30_Flutter263_g76908 );
				half3 WorldData19_g76976 = Vertex_Motion_World1118_g76908;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76976 = WorldData19_g76976;
				#else
				float3 staticSwitch14_g76976 = ObjectData20_g76976;
				#endif
				float3 temp_output_7495_0_g76908 = staticSwitch14_g76976;
				float3 Vertex_Motion7493_g76908 = temp_output_7495_0_g76908;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 break2709_g76908 = cross( ViewDirection3963_g76908 , half3(0,1,0) );
				float3 appendResult2710_g76908 = (float3(-break2709_g76908.z , 0.0 , break2709_g76908.x));
				float3 appendResult2667_g76908 = (float3(Global_MeshVariation5104_g76908 , 0.5 , Global_MeshVariation5104_g76908));
				half Mesh_Height1524_g76908 = v.ase_color.a;
				float dotResult2212_g76908 = dot( ViewDirection3963_g76908 , float3(0,1,0) );
				half Mask_HView2656_g76908 = dotResult2212_g76908;
				float saferPower2652_g76908 = abs( Mask_HView2656_g76908 );
				half3 Grass_Perspective2661_g76908 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g76908 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g76908*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g76908 * pow( saferPower2652_g76908 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g76940 = _LayerVertexValue;
				float temp_output_19_0_g76944 = TVE_VertexUsage[(int)temp_output_84_0_g76940];
				float4 temp_output_94_19_g76940 = TVE_VertexCoords;
				half2 UV97_g76940 = ( (temp_output_94_19_g76940).zw + ( (temp_output_94_19_g76940).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76940 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76940,temp_output_84_0_g76940), 0.0 );
				float4 temp_output_17_0_g76944 = tex2DArrayNode50_g76940;
				float4 temp_output_111_19_g76940 = TVE_VertexParams;
				float4 temp_output_3_0_g76944 = temp_output_111_19_g76940;
				float4 ifLocalVar18_g76944 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76944 >= 0.5 )
				ifLocalVar18_g76944 = temp_output_17_0_g76944;
				else
				ifLocalVar18_g76944 = temp_output_3_0_g76944;
				float4 lerpResult22_g76944 = lerp( temp_output_3_0_g76944 , temp_output_17_0_g76944 , temp_output_19_0_g76944);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76944 = lerpResult22_g76944;
				#else
				float4 staticSwitch24_g76944 = ifLocalVar18_g76944;
				#endif
				half4 Global_Vertex_Params4173_g76908 = staticSwitch24_g76944;
				float4 break322_g76945 = Global_Vertex_Params4173_g76908;
				half Global_VertexSize174_g76908 = saturate( break322_g76945.w );
				float lerpResult346_g76908 = lerp( 1.0 , Global_VertexSize174_g76908 , _GlobalSize);
				float3 appendResult3480_g76908 = (float3(lerpResult346_g76908 , lerpResult346_g76908 , lerpResult346_g76908));
				half3 ObjectData20_g76973 = appendResult3480_g76908;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g76973 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76973 = WorldData19_g76973;
				#else
				float3 staticSwitch14_g76973 = ObjectData20_g76973;
				#endif
				half3 Vertex_Size1741_g76908 = staticSwitch14_g76973;
				float temp_output_7_0_g76974 = _SizeFadeEndValue;
				float temp_output_10_0_g76974 = ( _SizeFadeStartValue - temp_output_7_0_g76974 );
				float temp_output_7453_0_g76908 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g76908 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g76974 ) / ( temp_output_10_0_g76974 + 0.0001 ) ) );
				float3 appendResult3482_g76908 = (float3(temp_output_7453_0_g76908 , temp_output_7453_0_g76908 , temp_output_7453_0_g76908));
				half3 ObjectData20_g76972 = appendResult3482_g76908;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g76972 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76972 = WorldData19_g76972;
				#else
				float3 staticSwitch14_g76972 = ObjectData20_g76972;
				#endif
				float3 Vertex_SizeFade1740_g76908 = staticSwitch14_g76972;
				float3 lerpResult16_g76977 = lerp( VertexPosition3588_g76908 , ( ( ( Vertex_Motion7493_g76908 + Grass_Perspective2661_g76908 ) * Vertex_Size1741_g76908 * Vertex_SizeFade1740_g76908 ) + Mesh_PivotsOS2291_g76908 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g76908 = lerpResult16_g76977;
				float3 Final_VertexPosition890_g76908 = ( temp_output_4912_0_g76908 + _DisableSRPBatcher );
				
				float4 break33_g77028 = _second_uvs_mode;
				float2 temp_output_30_0_g77028 = ( v.ase_texcoord.xy * break33_g77028.x );
				float2 appendResult21_g77023 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76908 = appendResult21_g77023;
				float2 temp_output_29_0_g77028 = ( Mesh_DetailCoord3_g76908 * break33_g77028.y );
				float2 temp_output_31_0_g77028 = ( (WorldPosition_Shifted7477_g76908).xz * break33_g77028.z );
				half2 Second_UVs_Tilling7609_g76908 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76908 = ( 1.0 / Second_UVs_Tilling7609_g76908 );
				float2 lerpResult7614_g76908 = lerp( Second_UVs_Tilling7609_g76908 , Second_UVs_Scale7610_g76908 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76908 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76934 = ( ( ( temp_output_30_0_g77028 + temp_output_29_0_g77028 + temp_output_31_0_g77028 ) * lerpResult7614_g76908 ) + Second_UVs_Offset7605_g76908 );
				o.ase_texcoord4.xy = vertexToFrag11_g76934;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				o.ase_texcoord8.xyz = vertexToFrag3890_g76908;
				o.ase_texcoord9.xyz = vertexToFrag4224_g76908;
				half Global_Noise_A4860_g76908 = break638_g77004.a;
				half Tint_Highlight_Value3231_g76908 = ( Global_Noise_A4860_g76908 * Global_Wind_Power2223_g76908 * Motion_FadeOut4005_g76908 * Mesh_Height1524_g76908 );
				float vertexToFrag11_g76949 = Tint_Highlight_Value3231_g76908;
				o.ase_texcoord4.z = vertexToFrag11_g76949;
				
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
				float3 vertexValue = Final_VertexPosition890_g76908;
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

				half2 Main_UVs15_g76908 = ( ( IN.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76908 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76908 );
				float3 lerpResult6223_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76908).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76908 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				half Main_Mask57_g76908 = tex2DNode35_g76908.b;
				float clampResult17_g77013 = clamp( Main_Mask57_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77014 = _MainMaskMinValue;
				float temp_output_10_0_g77014 = ( _MainMaskMaxValue - temp_output_7_0_g77014 );
				half Main_Mask_Remap5765_g76908 = saturate( ( ( clampResult17_g77013 - temp_output_7_0_g77014 ) / ( temp_output_10_0_g77014 + 0.0001 ) ) );
				float lerpResult7671_g76908 = lerp( 1.0 , Main_Mask_Remap5765_g76908 , _MainColorMode);
				float4 lerpResult7654_g76908 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76908);
				half3 Main_Color_RGB7657_g76908 = (lerpResult7654_g76908).rgb;
				half3 Main_Albedo99_g76908 = ( lerpResult6223_g76908 * Main_Color_RGB7657_g76908 );
				float2 vertexToFrag11_g76934 = IN.ase_texcoord4.xy;
				half2 Second_UVs17_g76908 = vertexToFrag11_g76934;
				float4 tex2DNode89_g76908 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76908 );
				float3 lerpResult6225_g76908 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76908).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76908 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				half Second_Mask81_g76908 = tex2DNode33_g76908.b;
				float clampResult17_g77016 = clamp( Second_Mask81_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77017 = _SecondMaskMinValue;
				float temp_output_10_0_g77017 = ( _SecondMaskMaxValue - temp_output_7_0_g77017 );
				half Second_Mask_Remap6130_g76908 = saturate( ( ( clampResult17_g77016 - temp_output_7_0_g77017 ) / ( temp_output_10_0_g77017 + 0.0001 ) ) );
				float lerpResult7672_g76908 = lerp( 1.0 , Second_Mask_Remap6130_g76908 , _SecondColorMode);
				float4 lerpResult7662_g76908 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76908);
				half3 Second_Color_RGB7663_g76908 = (lerpResult7662_g76908).rgb;
				half3 Second_Albedo153_g76908 = ( lerpResult6225_g76908 * Second_Color_RGB7663_g76908 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76950 = 2.0;
				#else
				float staticSwitch1_g76950 = 4.594794;
				#endif
				float3 lerpResult4834_g76908 = lerp( ( Main_Albedo99_g76908 * Second_Albedo153_g76908 * staticSwitch1_g76950 ) , Second_Albedo153_g76908 , _DetailBlendMode);
				float lerpResult6885_g76908 = lerp( Main_Mask57_g76908 , Second_Mask81_g76908 , _DetailMaskMode);
				float clampResult17_g76986 = clamp( lerpResult6885_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76985 = _DetailMaskMinValue;
				float temp_output_10_0_g76985 = ( _DetailMaskMaxValue - temp_output_7_0_g76985 );
				half Blend_Mask_Texture6794_g76908 = saturate( ( ( clampResult17_g76986 - temp_output_7_0_g76985 ) / ( temp_output_10_0_g76985 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76908 = IN.ase_color.b;
				half4 Normal_Packed45_g77012 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				float2 appendResult58_g77012 = (float2(( (Normal_Packed45_g77012).x * (Normal_Packed45_g77012).w ) , (Normal_Packed45_g77012).y));
				half2 Normal_Default50_g77012 = appendResult58_g77012;
				half2 Normal_ASTC41_g77012 = (Normal_Packed45_g77012).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77012 = Normal_ASTC41_g77012;
				#else
				float2 staticSwitch38_g77012 = Normal_Default50_g77012;
				#endif
				half2 Normal_NO_DTX544_g77012 = (Normal_Packed45_g77012).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77012 = Normal_NO_DTX544_g77012;
				#else
				float2 staticSwitch37_g77012 = staticSwitch38_g77012;
				#endif
				float2 temp_output_6555_0_g76908 = ( (staticSwitch37_g77012*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76908 = (float3(temp_output_6555_0_g76908 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord5.xyz;
				float3 ase_worldNormal = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g76908 = appendResult7388_g76908;
				float3 worldNormal7389_g76908 = float3(dot(tanToWorld0,tanNormal7389_g76908), dot(tanToWorld1,tanNormal7389_g76908), dot(tanToWorld2,tanNormal7389_g76908));
				half3 Main_NormalWS7390_g76908 = worldNormal7389_g76908;
				float lerpResult6884_g76908 = lerp( Mesh_DetailMask90_g76908 , ((Main_NormalWS7390_g76908).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76984 = clamp( lerpResult6884_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76983 = _DetailMeshMinValue;
				float temp_output_10_0_g76983 = ( _DetailMeshMaxValue - temp_output_7_0_g76983 );
				half Blend_Mask_Mesh1540_g76908 = saturate( ( ( clampResult17_g76984 - temp_output_7_0_g76983 ) / ( temp_output_10_0_g76983 + 0.0001 ) ) );
				float clampResult17_g76994 = clamp( ( Blend_Mask_Texture6794_g76908 * Blend_Mask_Mesh1540_g76908 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77009 = _DetailBlendMinValue;
				float temp_output_10_0_g77009 = ( _DetailBlendMaxValue - temp_output_7_0_g77009 );
				half Blend_Mask147_g76908 = ( saturate( ( ( clampResult17_g76994 - temp_output_7_0_g77009 ) / ( temp_output_10_0_g77009 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76908 = lerp( Main_Albedo99_g76908 , lerpResult4834_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76908 = lerpResult235_g76908;
				#else
				float3 staticSwitch255_g76908 = Main_Albedo99_g76908;
				#endif
				half3 Blend_Albedo265_g76908 = staticSwitch255_g76908;
				half Mesh_Height1524_g76908 = IN.ase_color.a;
				float temp_output_7_0_g76959 = _GradientMinValue;
				float temp_output_10_0_g76959 = ( _GradientMaxValue - temp_output_7_0_g76959 );
				half Tint_Gradient_Value2784_g76908 = saturate( ( ( Mesh_Height1524_g76908 - temp_output_7_0_g76959 ) / ( temp_output_10_0_g76959 + 0.0001 ) ) );
				float3 lerpResult2779_g76908 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Tint_Gradient_Value2784_g76908);
				float lerpResult6617_g76908 = lerp( Main_Mask_Remap5765_g76908 , Second_Mask_Remap6130_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76908 = lerpResult6617_g76908;
				#else
				float staticSwitch6623_g76908 = Main_Mask_Remap5765_g76908;
				#endif
				half Blend_Mask_Remap6621_g76908 = staticSwitch6623_g76908;
				half Tint_Gradient_Mask6207_g76908 = Blend_Mask_Remap6621_g76908;
				float3 lerpResult6208_g76908 = lerp( float3( 1,1,1 ) , lerpResult2779_g76908 , Tint_Gradient_Mask6207_g76908);
				half3 Tint_Gradient_Color5769_g76908 = lerpResult6208_g76908;
				half3 Tint_Noise_Color5770_g76908 = float3(1,1,1);
				float Mesh_Occlusion318_g76908 = IN.ase_color.g;
				float clampResult17_g76956 = clamp( Mesh_Occlusion318_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76962 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76962 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76962 );
				half Occlusion_Mask6432_g76908 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76962 ) / ( temp_output_10_0_g76962 + 0.0001 ) ) );
				float3 lerpResult2945_g76908 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76908);
				half3 Occlusion_Color648_g76908 = lerpResult2945_g76908;
				half3 Matcap_Color7428_g76908 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76908 = ( ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 * Occlusion_Color648_g76908 ) + Matcap_Color7428_g76908 );
				float3 temp_output_3_0_g76954 = Blend_Albedo_Tinted2808_g76908;
				float dotResult20_g76954 = dot( temp_output_3_0_g76954 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76908 = dotResult20_g76954;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76908).xxx;
				float temp_output_82_0_g76929 = _LayerColorsValue;
				float temp_output_19_0_g76933 = TVE_ColorsUsage[(int)temp_output_82_0_g76929];
				float4 temp_output_91_19_g76929 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76908 = IN.ase_texcoord8.xyz;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 vertexToFrag4224_g76908 = IN.ase_texcoord9.xyz;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 lerpResult4822_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ColorsPositionMode);
				half2 UV94_g76929 = ( (temp_output_91_19_g76929).zw + ( (temp_output_91_19_g76929).xy * (lerpResult4822_g76908).xz ) );
				float4 tex2DArrayNode83_g76929 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76929,temp_output_82_0_g76929), 0.0 );
				float4 temp_output_17_0_g76933 = tex2DArrayNode83_g76929;
				float4 temp_output_92_86_g76929 = TVE_ColorsParams;
				float4 temp_output_3_0_g76933 = temp_output_92_86_g76929;
				float4 ifLocalVar18_g76933 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76933 >= 0.5 )
				ifLocalVar18_g76933 = temp_output_17_0_g76933;
				else
				ifLocalVar18_g76933 = temp_output_3_0_g76933;
				float4 lerpResult22_g76933 = lerp( temp_output_3_0_g76933 , temp_output_17_0_g76933 , temp_output_19_0_g76933);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76933 = lerpResult22_g76933;
				#else
				float4 staticSwitch24_g76933 = ifLocalVar18_g76933;
				#endif
				half4 Global_Colors_Params5434_g76908 = staticSwitch24_g76933;
				float4 temp_output_346_0_g76915 = Global_Colors_Params5434_g76908;
				half Global_Colors_A1701_g76908 = saturate( (temp_output_346_0_g76915).w );
				half Colors_Influence3668_g76908 = Global_Colors_A1701_g76908;
				float temp_output_6306_0_g76908 = ( 1.0 - Colors_Influence3668_g76908 );
				float3 lerpResult3618_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76908 * temp_output_6306_0_g76908 ) ));
				half3 Global_Colors_RGB1700_g76908 = (temp_output_346_0_g76915).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76946 = 2.0;
				#else
				float staticSwitch1_g76946 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76908 = ( Global_Colors_RGB1700_g76908 * staticSwitch1_g76946 * _ColorsIntensityValue );
				float lerpResult7679_g76908 = lerp( 1.0 , Blend_Mask_Remap6621_g76908 , _ColorsMaskValue);
				half Colors_Value3692_g76908 = ( lerpResult7679_g76908 * _GlobalColors );
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = IN.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				float lerpResult3870_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _ColorsVariationValue);
				half Colors_Variation3650_g76908 = lerpResult3870_g76908;
				half Occlusion_Alpha6463_g76908 = _VertexOcclusionColor.a;
				float lerpResult6459_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult6459_g76908);
				half Occlusion_Colors6450_g76908 = lerpResult6461_g76908;
				float3 temp_output_3_0_g76955 = ( Blend_Albedo265_g76908 * Tint_Gradient_Color5769_g76908 * Tint_Noise_Color5770_g76908 );
				float dotResult20_g76955 = dot( temp_output_3_0_g76955 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76908 = clamp( saturate( ( dotResult20_g76955 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76908 = clampResult6740_g76908;
				float temp_output_7_0_g76992 = 0.1;
				float temp_output_10_0_g76992 = ( 0.2 - temp_output_7_0_g76992 );
				float lerpResult16_g76947 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76908 * Colors_Influence3668_g76908 * Colors_Variation3650_g76908 * Occlusion_Colors6450_g76908 * Blend_Albedo_Globals6410_g76908 ) - temp_output_7_0_g76992 ) / ( temp_output_10_0_g76992 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76908 = lerp( Blend_Albedo_Tinted2808_g76908 , ( lerpResult3618_g76908 * Colors_RGB1954_g76908 ) , lerpResult16_g76947);
				half3 Blend_Albedo_Colored_High6027_g76908 = lerpResult3628_g76908;
				half3 Blend_Albedo_Colored863_g76908 = Blend_Albedo_Colored_High6027_g76908;
				half3 Global_OverlayColor1758_g76908 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76924 = _LayerExtrasValue;
				float temp_output_19_0_g76928 = TVE_ExtrasUsage[(int)temp_output_84_0_g76924];
				float4 temp_output_93_19_g76924 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ExtrasPositionMode);
				half2 UV96_g76924 = ( (temp_output_93_19_g76924).zw + ( (temp_output_93_19_g76924).xy * (lerpResult4827_g76908).xz ) );
				float4 tex2DArrayNode48_g76924 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76924,temp_output_84_0_g76924), 0.0 );
				float4 temp_output_17_0_g76928 = tex2DArrayNode48_g76924;
				float4 temp_output_94_85_g76924 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76928 = temp_output_94_85_g76924;
				float4 ifLocalVar18_g76928 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76928 >= 0.5 )
				ifLocalVar18_g76928 = temp_output_17_0_g76928;
				else
				ifLocalVar18_g76928 = temp_output_3_0_g76928;
				float4 lerpResult22_g76928 = lerp( temp_output_3_0_g76928 , temp_output_17_0_g76928 , temp_output_19_0_g76928);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76928 = lerpResult22_g76928;
				#else
				float4 staticSwitch24_g76928 = ifLocalVar18_g76928;
				#endif
				half4 Global_Extras_Params5440_g76908 = staticSwitch24_g76928;
				float4 break456_g76938 = Global_Extras_Params5440_g76908;
				half Global_Extras_Overlay156_g76908 = break456_g76938.z;
				float lerpResult1065_g76908 = lerp( 1.0 , Global_MeshVariation5104_g76908 , _OverlayVariationValue);
				half Overlay_Variation4560_g76908 = lerpResult1065_g76908;
				half Overlay_Value5738_g76908 = ( _GlobalOverlay * Global_Extras_Overlay156_g76908 * Overlay_Variation4560_g76908 );
				half2 Main_Normal137_g76908 = temp_output_6555_0_g76908;
				float2 lerpResult3372_g76908 = lerp( float2( 0,0 ) , Main_Normal137_g76908 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				half4 Normal_Packed45_g77015 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				float2 appendResult58_g77015 = (float2(( (Normal_Packed45_g77015).x * (Normal_Packed45_g77015).w ) , (Normal_Packed45_g77015).y));
				half2 Normal_Default50_g77015 = appendResult58_g77015;
				half2 Normal_ASTC41_g77015 = (Normal_Packed45_g77015).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77015 = Normal_ASTC41_g77015;
				#else
				float2 staticSwitch38_g77015 = Normal_Default50_g77015;
				#endif
				half2 Normal_NO_DTX544_g77015 = (Normal_Packed45_g77015).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77015 = Normal_NO_DTX544_g77015;
				#else
				float2 staticSwitch37_g77015 = staticSwitch38_g77015;
				#endif
				float2 temp_output_6560_0_g76908 = ( (staticSwitch37_g77015*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g77018 = temp_output_6560_0_g76908;
				float2 break64_g77018 = Normal_Planar45_g77018;
				float3 appendResult65_g77018 = (float3(break64_g77018.x , 0.0 , break64_g77018.y));
				float2 temp_output_7603_0_g76908 = (mul( ase_worldToTangent, appendResult65_g77018 )).xy;
				float2 ifLocalVar7604_g76908 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76908 = temp_output_7603_0_g76908;
				else
				ifLocalVar7604_g76908 = temp_output_6560_0_g76908;
				half2 Second_Normal179_g76908 = ifLocalVar7604_g76908;
				float2 temp_output_36_0_g76951 = ( lerpResult3372_g76908 + Second_Normal179_g76908 );
				float2 lerpResult3376_g76908 = lerp( Main_Normal137_g76908 , temp_output_36_0_g76951 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76908 = lerpResult3376_g76908;
				#else
				float2 staticSwitch267_g76908 = Main_Normal137_g76908;
				#endif
				half2 Blend_Normal312_g76908 = staticSwitch267_g76908;
				float3 appendResult7377_g76908 = (float3(Blend_Normal312_g76908 , 1.0));
				float3 tanNormal7376_g76908 = appendResult7377_g76908;
				float3 worldNormal7376_g76908 = float3(dot(tanToWorld0,tanNormal7376_g76908), dot(tanToWorld1,tanNormal7376_g76908), dot(tanToWorld2,tanNormal7376_g76908));
				half3 Blend_NormalWS7375_g76908 = worldNormal7376_g76908;
				float lerpResult7446_g76908 = lerp( (Blend_NormalWS7375_g76908).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76908);
				float lerpResult6757_g76908 = lerp( 1.0 , saturate( lerpResult7446_g76908 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76908 = lerpResult6757_g76908;
				half Overlay_Shading6688_g76908 = Blend_Albedo_Globals6410_g76908;
				half Overlay_Custom6707_g76908 = 1.0;
				float lerpResult7693_g76908 = lerp( Occlusion_Mask6432_g76908 , ( 1.0 - Occlusion_Mask6432_g76908 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76908 = lerp( Occlusion_Alpha6463_g76908 , 1.0 , lerpResult7693_g76908);
				half Occlusion_Overlay6471_g76908 = lerpResult6467_g76908;
				float temp_output_7_0_g76960 = 0.1;
				float temp_output_10_0_g76960 = ( 0.2 - temp_output_7_0_g76960 );
				half Overlay_Mask_High6064_g76908 = saturate( ( ( ( Overlay_Value5738_g76908 * Overlay_Projection6081_g76908 * Overlay_Shading6688_g76908 * Overlay_Custom6707_g76908 * Occlusion_Overlay6471_g76908 ) - temp_output_7_0_g76960 ) / ( temp_output_10_0_g76960 + 0.0001 ) ) );
				half Overlay_Mask269_g76908 = Overlay_Mask_High6064_g76908;
				float3 lerpResult336_g76908 = lerp( Blend_Albedo_Colored863_g76908 , Global_OverlayColor1758_g76908 , Overlay_Mask269_g76908);
				half3 Blend_Albedo_Overlay359_g76908 = lerpResult336_g76908;
				half Global_WetnessContrast6502_g76908 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76908 = break456_g76938.y;
				half Wetness_Value6343_g76908 = ( Global_Extras_Wetness305_g76908 * _GlobalWetness );
				float3 lerpResult6367_g76908 = lerp( Blend_Albedo_Overlay359_g76908 , ( Blend_Albedo_Overlay359_g76908 * Blend_Albedo_Overlay359_g76908 ) , ( Global_WetnessContrast6502_g76908 * Wetness_Value6343_g76908 ));
				half3 Blend_Albedo_Wetness6351_g76908 = lerpResult6367_g76908;
				float vertexToFrag11_g76949 = IN.ase_texcoord4.z;
				half3 Tint_Highlight_Color5771_g76908 = ( ( (_MotionHighlightColor).rgb * vertexToFrag11_g76949 ) + float3( 1,1,1 ) );
				float3 temp_output_6309_0_g76908 = ( Blend_Albedo_Wetness6351_g76908 * Tint_Highlight_Color5771_g76908 );
				half3 Blend_Albedo_Subsurface149_g76908 = temp_output_6309_0_g76908;
				half3 Blend_Albedo_RimLight7316_g76908 = Blend_Albedo_Subsurface149_g76908;
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76908 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76908 = temp_output_7161_0_g76908;
				half2 Emissive_UVs2468_g76908 = ( ( IN.ase_texcoord3.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77029 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77029).xxx;
				float temp_output_10_0_g77029 = ( _EmissiveTexMaxValue - temp_output_7_0_g77029 );
				half3 Emissive_Texture7022_g76908 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76908 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77029 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76908 = break456_g76938.x;
				float lerpResult4206_g76908 = lerp( 1.0 , Global_Extras_Emissive4203_g76908 , _GlobalEmissive);
				half Emissive_Value7024_g76908 = ( ( lerpResult4206_g76908 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76908 = saturate( ( Emissive_Texture7022_g76908 + Emissive_Value7024_g76908 ) );
				float3 temp_output_3_0_g77031 = ( Emissive_Color7162_g76908 * Emissive_Mask6968_g76908 );
				float temp_output_15_0_g77031 = _emissive_intensity_value;
				float3 temp_output_23_0_g77031 = ( temp_output_3_0_g77031 * temp_output_15_0_g77031 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76908 = temp_output_23_0_g77031;
				#else
				float3 staticSwitch7687_g76908 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76908 = staticSwitch7687_g76908;
				
				float localCustomAlphaClip19_g77011 = ( 0.0 );
				half Main_Alpha316_g76908 = tex2DNode29_g76908.a;
				half Second_Alpha5007_g76908 = tex2DNode89_g76908.a;
				float lerpResult6153_g76908 = lerp( Main_Alpha316_g76908 , Second_Alpha5007_g76908 , Blend_Mask147_g76908);
				float lerpResult6785_g76908 = lerp( ( Main_Alpha316_g76908 * Second_Alpha5007_g76908 ) , lerpResult6153_g76908 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76908 = lerpResult6785_g76908;
				#else
				float staticSwitch6158_g76908 = Main_Alpha316_g76908;
				#endif
				half Blend_Alpha6157_g76908 = staticSwitch6158_g76908;
				half AlphaTreshold2132_g76908 = _AlphaClipValue;
				half Global_Extras_Alpha1033_g76908 = saturate( break456_g76938.w );
				float lerpResult5154_g76908 = lerp( 0.0 , Global_MeshVariation5104_g76908 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g76908 = lerpResult5154_g76908;
				float Emissive_Alpha7625_g76908 = 0.0;
				float lerpResult6866_g76908 = lerp( ( 1.0 - Blend_Mask147_g76908 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76908 = lerpResult6866_g76908;
				#else
				float staticSwitch6612_g76908 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76908 = staticSwitch6612_g76908;
				half Alpha_Mask6234_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5203_g76908 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g76908 - saturate( ( Global_Alpha_Variation5158_g76908 + Emissive_Alpha7625_g76908 ) ) ) + ( Global_Extras_Alpha1033_g76908 * 0.1 ) ) ) , ( Alpha_Mask6234_g76908 * _GlobalAlpha ));
				float lerpResult16_g76952 = lerp( 1.0 , lerpResult5203_g76908 , TVE_IsEnabled);
				half Global_Alpha315_g76908 = lerpResult16_g76952;
				float3 ase_worldPos = IN.ase_texcoord10.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 normalizeResult3971_g76908 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 WorldNormal_Derivates3972_g76908 = normalizeResult3971_g76908;
				float dotResult3851_g76908 = dot( ViewDirection3963_g76908 , WorldNormal_Derivates3972_g76908 );
				float lerpResult3993_g76908 = lerp( 1.0 , saturate( ( abs( dotResult3851_g76908 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g76908 = lerpResult3993_g76908;
				half Fade_Effects_A5360_g76908 = Fade_Glancing3853_g76908;
				float temp_output_7_0_g76961 = TVE_CameraFadeMin;
				float temp_output_10_0_g76961 = ( TVE_CameraFadeMax - temp_output_7_0_g76961 );
				float lerpResult4755_g76908 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76961 ) / ( temp_output_10_0_g76961 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76908 = lerpResult4755_g76908;
				half Fade_Effects_B6228_g76908 = ( Fade_Effects_A5360_g76908 * Fade_Camera3743_g76908 );
				half Fade_Mask5149_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5141_g76908 = lerp( 1.0 , ( Fade_Effects_B6228_g76908 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76908);
				half Fade_Effects_C7653_g76908 = lerpResult5141_g76908;
				float temp_output_5865_0_g76908 = saturate( ( Fade_Effects_C7653_g76908 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76908 ) ).r ) );
				half Fade_Alpha3727_g76908 = temp_output_5865_0_g76908;
				half Final_Alpha7344_g76908 = min( ( ( Blend_Alpha6157_g76908 - AlphaTreshold2132_g76908 ) * Global_Alpha315_g76908 ) , Fade_Alpha3727_g76908 );
				float temp_output_3_0_g77011 = Final_Alpha7344_g76908;
				float Alpha19_g77011 = temp_output_3_0_g77011;
				float temp_output_15_0_g77011 = 0.01;
				float Treshold19_g77011 = temp_output_15_0_g77011;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#else
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76908 = (lerpResult7654_g76908).a;
				half Second_Color_Alpha6152_g76908 = (lerpResult7662_g76908).a;
				float lerpResult6168_g76908 = lerp( Main_Color_Alpha6121_g76908 , Second_Color_Alpha6152_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76908 = lerpResult6168_g76908;
				#else
				float staticSwitch6174_g76908 = Main_Color_Alpha6121_g76908;
				#endif
				half Blend_Color_Alpha6167_g76908 = staticSwitch6174_g76908;
				half Final_Clip914_g76908 = saturate( ( Alpha19_g77011 * Blend_Color_Alpha6167_g76908 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76908;
				o.Normal = fixed3( 0, 0, 1 );
				o.Emission = Final_Emissive2476_g76908;
				o.Alpha = Final_Clip914_g76908;
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
			#define ASE_TRANSLUCENCY 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _SPECULAR_SETUP 1
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
			#define TVE_IS_SUBSURFACE_SHADER
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
			uniform half _render_coverage;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_src;
			uniform half _render_cull;
			uniform half _IsSubsurfaceShader;
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

				float3 VertexPosition3588_g76908 = v.vertex.xyz;
				float3 appendResult60_g76918 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76908 = ( appendResult60_g76918 * _VertexPivotMode );
				half3 Mesh_PivotsOS2291_g76908 = Mesh_PivotsData2831_g76908;
				float3 temp_output_2283_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				half3 VertexPos40_g76989 = temp_output_2283_0_g76908;
				half3 VertexPos40_g76990 = VertexPos40_g76989;
				float3 appendResult74_g76990 = (float3(VertexPos40_g76990.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g76990 = appendResult74_g76990;
				float3 break84_g76990 = VertexPos40_g76990;
				float3 appendResult81_g76990 = (float3(0.0 , break84_g76990.y , break84_g76990.z));
				half3 VertexPosOtherAxis82_g76990 = appendResult81_g76990;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76908 = ase_worldPos;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 WorldPosition_Shifted7477_g76908 = ( WorldPosition3905_g76908 - TVE_WorldOrigin );
				float4x4 break19_g76964 = unity_ObjectToWorld;
				float3 appendResult20_g76964 = (float3(break19_g76964[ 0 ][ 3 ] , break19_g76964[ 1 ][ 3 ] , break19_g76964[ 2 ][ 3 ]));
				float3 temp_output_122_0_g76964 = Mesh_PivotsData2831_g76908;
				float3 PivotsOnly105_g76964 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76964 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76966 = ( appendResult20_g76964 + PivotsOnly105_g76964 );
				half3 WorldData19_g76966 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76966 = WorldData19_g76966;
				#else
				float3 staticSwitch14_g76966 = ObjectData20_g76966;
				#endif
				float3 temp_output_114_0_g76964 = staticSwitch14_g76966;
				float3 vertexToFrag4224_g76908 = temp_output_114_0_g76964;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				float3 lerpResult6766_g76908 = lerp( WorldPosition_Shifted7477_g76908 , ObjectPosition_Shifted7481_g76908 , _MotionPosition_10);
				float3 Motion_10_Position6738_g76908 = lerpResult6766_g76908;
				half3 Input_Position419_g77004 = Motion_10_Position6738_g76908;
				float Input_MotionScale287_g77004 = ( _MotionScale_10 + 0.2 );
				half NoiseTex_Tilling735_g77004 = TVE_NoiseTexTilling;
				float2 temp_output_597_0_g77004 = (( Input_Position419_g77004 * Input_MotionScale287_g77004 * NoiseTex_Tilling735_g77004 * 0.0075 )).xz;
				float2 temp_output_447_0_g76913 = ((TVE_MotionParams).xy*2.0 + -1.0);
				half2 Global_Wind_DirectionWS4683_g76908 = temp_output_447_0_g76913;
				half2 Input_DirectionWS423_g77004 = Global_Wind_DirectionWS4683_g76908;
				float lerpResult128_g77005 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77004 = _MotionSpeed_10;
				half Input_MotionVariation284_g77004 = _MotionVariation_10;
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = v.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				half Input_GlobalMeshVariation569_g77004 = Global_MeshVariation5104_g76908;
				float temp_output_630_0_g77004 = ( ( ( lerpResult128_g77005 * Input_MotionSpeed62_g77004 ) + ( Input_MotionVariation284_g77004 * Input_GlobalMeshVariation569_g77004 ) ) * 0.03 );
				float temp_output_607_0_g77004 = frac( temp_output_630_0_g77004 );
				float4 lerpResult590_g77004 = lerp( SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * temp_output_607_0_g77004 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( temp_output_597_0_g77004 + ( -Input_DirectionWS423_g77004 * frac( ( temp_output_630_0_g77004 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_607_0_g77004 - 0.5 ) ) / 0.5 ));
				half4 Noise_Complex703_g77004 = lerpResult590_g77004;
				float2 temp_output_645_0_g77004 = ((Noise_Complex703_g77004).rg*2.0 + -1.0);
				float2 break650_g77004 = temp_output_645_0_g77004;
				float3 appendResult649_g77004 = (float3(break650_g77004.x , 0.0 , break650_g77004.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Global_Noise_OS5548_g76908 = (( mul( unity_WorldToObject, float4( appendResult649_g77004 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Noise_DirectionOS487_g76995 = Global_Noise_OS5548_g76908;
				float2 break448_g76913 = temp_output_447_0_g76913;
				float3 appendResult452_g76913 = (float3(break448_g76913.x , 0.0 , break448_g76913.y));
				half2 Global_Wind_DirectionOS5692_g76908 = (( mul( unity_WorldToObject, float4( appendResult452_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_Wind_DirectionOS458_g76995 = Global_Wind_DirectionOS5692_g76908;
				float temp_output_84_0_g76919 = _LayerMotionValue;
				float temp_output_19_0_g76923 = TVE_MotionUsage[(int)temp_output_84_0_g76919];
				float4 temp_output_91_19_g76919 = TVE_MotionCoords;
				half2 UV94_g76919 = ( (temp_output_91_19_g76919).zw + ( (temp_output_91_19_g76919).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76919 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, sampler_Linear_Clamp, float3(UV94_g76919,temp_output_84_0_g76919), 0.0 );
				float4 temp_output_17_0_g76923 = tex2DArrayNode50_g76919;
				float4 temp_output_112_19_g76919 = TVE_MotionParams;
				float4 temp_output_3_0_g76923 = temp_output_112_19_g76919;
				float4 ifLocalVar18_g76923 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76923 >= 0.5 )
				ifLocalVar18_g76923 = temp_output_17_0_g76923;
				else
				ifLocalVar18_g76923 = temp_output_3_0_g76923;
				float4 lerpResult22_g76923 = lerp( temp_output_3_0_g76923 , temp_output_17_0_g76923 , temp_output_19_0_g76923);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76923 = lerpResult22_g76923;
				#else
				float4 staticSwitch24_g76923 = ifLocalVar18_g76923;
				#endif
				half4 Global_Motion_Params3909_g76908 = staticSwitch24_g76923;
				float4 break322_g76913 = Global_Motion_Params3909_g76908;
				float lerpResult457_g76913 = lerp( break322_g76913.z , TVE_WindEditor.z , TVE_WindEditor.w);
				float temp_output_459_0_g76913 = ( 1.0 - lerpResult457_g76913 );
				half Global_Wind_Power2223_g76908 = ( 1.0 - ( temp_output_459_0_g76913 * temp_output_459_0_g76913 ) );
				half Input_WindPower449_g76995 = Global_Wind_Power2223_g76908;
				float2 lerpResult516_g76995 = lerp( Input_Noise_DirectionOS487_g76995 , Input_Wind_DirectionOS458_g76995 , ( Input_WindPower449_g76995 * 0.6 ));
				half Mesh_Motion_107572_g76908 = v.ase_color.a;
				half Input_MeshHeight388_g76995 = Mesh_Motion_107572_g76908;
				half ObjectData20_g76996 = Input_MeshHeight388_g76995;
				float enc62_g77023 = v.ase_texcoord.w;
				float2 localDecodeFloatToVector262_g77023 = DecodeFloatToVector2( enc62_g77023 );
				float2 break63_g77023 = ( localDecodeFloatToVector262_g77023 * 100.0 );
				float Bounds_Height5230_g76908 = break63_g77023.x;
				half Input_BoundsHeight390_g76995 = Bounds_Height5230_g76908;
				half WorldData19_g76996 = ( Input_MeshHeight388_g76995 * Input_MeshHeight388_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76996 = WorldData19_g76996;
				#else
				float staticSwitch14_g76996 = ObjectData20_g76996;
				#endif
				half Final_Motion10_Mask321_g76995 = ( staticSwitch14_g76996 * 2.0 );
				half Input_BendingAmplitude376_g76995 = _MotionAmplitude_10;
				half Global_MotionValue640_g76995 = TVE_MotionValue_10;
				half2 Final_Bending631_g76995 = ( lerpResult516_g76995 * ( Final_Motion10_Mask321_g76995 * Input_BendingAmplitude376_g76995 * Input_WindPower449_g76995 * Input_WindPower449_g76995 * Global_MotionValue640_g76995 ) );
				float2 appendResult433_g76913 = (float2(break322_g76913.x , break322_g76913.y));
				float2 temp_output_436_0_g76913 = (appendResult433_g76913*2.0 + -1.0);
				float2 break441_g76913 = temp_output_436_0_g76913;
				float3 appendResult440_g76913 = (float3(break441_g76913.x , 0.0 , break441_g76913.y));
				half2 Global_React_DirectionOS39_g76908 = (( mul( unity_WorldToObject, float4( appendResult440_g76913 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				half2 Input_React_DirectionOS358_g76995 = Global_React_DirectionOS39_g76908;
				float clampResult17_g76998 = clamp( Input_MeshHeight388_g76995 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76997 = 0.0;
				half Input_InteractionUseMask62_g76995 = _InteractionMaskValue;
				float temp_output_10_0_g76997 = ( Input_InteractionUseMask62_g76995 - temp_output_7_0_g76997 );
				half Final_InteractionRemap594_g76995 = saturate( ( ( clampResult17_g76998 - temp_output_7_0_g76997 ) / ( temp_output_10_0_g76997 + 0.0001 ) ) );
				half ObjectData20_g76999 = Final_InteractionRemap594_g76995;
				half WorldData19_g76999 = ( Final_InteractionRemap594_g76995 * Final_InteractionRemap594_g76995 * Input_BoundsHeight390_g76995 );
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g76999 = WorldData19_g76999;
				#else
				float staticSwitch14_g76999 = ObjectData20_g76999;
				#endif
				half Final_InteractionMask373_g76995 = ( staticSwitch14_g76999 * 2.0 );
				half Input_InteractionAmplitude58_g76995 = _InteractionAmplitude;
				half2 Final_Interaction632_g76995 = ( Input_React_DirectionOS358_g76995 * Final_InteractionMask373_g76995 * Input_InteractionAmplitude58_g76995 );
				half Global_Interaction_Mask66_g76908 = ( break322_g76913.w * break322_g76913.w * break322_g76913.w * break322_g76913.w );
				float Input_InteractionGlobalMask330_g76995 = Global_Interaction_Mask66_g76908;
				half Final_InteractionValue525_g76995 = saturate( ( Input_InteractionAmplitude58_g76995 * Input_InteractionGlobalMask330_g76995 ) );
				float2 lerpResult551_g76995 = lerp( Final_Bending631_g76995 , Final_Interaction632_g76995 , Final_InteractionValue525_g76995);
				float2 break364_g76995 = lerpResult551_g76995;
				float3 appendResult638_g76995 = (float3(break364_g76995.x , 0.0 , break364_g76995.y));
				half3 Motion_10_Interaction7519_g76908 = appendResult638_g76995;
				half3 Angle44_g76989 = Motion_10_Interaction7519_g76908;
				half Angle44_g76990 = (Angle44_g76989).z;
				half3 VertexPos40_g76991 = ( VertexPosRotationAxis50_g76990 + ( VertexPosOtherAxis82_g76990 * cos( Angle44_g76990 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g76990 ) * sin( Angle44_g76990 ) ) );
				float3 appendResult74_g76991 = (float3(0.0 , 0.0 , VertexPos40_g76991.z));
				half3 VertexPosRotationAxis50_g76991 = appendResult74_g76991;
				float3 break84_g76991 = VertexPos40_g76991;
				float3 appendResult81_g76991 = (float3(break84_g76991.x , break84_g76991.y , 0.0));
				half3 VertexPosOtherAxis82_g76991 = appendResult81_g76991;
				half Angle44_g76991 = -(Angle44_g76989).x;
				half3 Input_Position419_g77019 = WorldPosition_Shifted7477_g76908;
				float3 break459_g77019 = Input_Position419_g77019;
				float Sum_Position446_g77019 = ( break459_g77019.x + break459_g77019.y + break459_g77019.z );
				half Input_MotionScale321_g77019 = ( _MotionScale_20 * 0.1 );
				half Input_MotionVariation330_g77019 = _MotionVariation_20;
				half Input_GlobalVariation400_g77019 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77020 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77019 = _MotionSpeed_20;
				float temp_output_404_0_g77019 = ( lerpResult128_g77020 * Input_MotionSpeed62_g77019 );
				half Motion_SineA450_g77019 = sin( ( ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) + ( Input_MotionVariation330_g77019 * Input_GlobalVariation400_g77019 ) + temp_output_404_0_g77019 ) );
				half Motion_SineB395_g77019 = sin( ( ( temp_output_404_0_g77019 * 0.6842 ) + ( Sum_Position446_g77019 * Input_MotionScale321_g77019 ) ) );
				half3 Input_Position419_g77032 = VertexPosition3588_g76908;
				float3 normalizeResult518_g77032 = normalize( Input_Position419_g77032 );
				half2 Input_DirectionOS423_g77032 = Global_React_DirectionOS39_g76908;
				float2 break521_g77032 = -Input_DirectionOS423_g77032;
				float3 appendResult522_g77032 = (float3(break521_g77032.x , 0.0 , break521_g77032.y));
				float dotResult519_g77032 = dot( normalizeResult518_g77032 , appendResult522_g77032 );
				half Input_Value62_g77032 = _MotionFacingValue;
				float lerpResult524_g77032 = lerp( 1.0 , (dotResult519_g77032*0.5 + 0.5) , Input_Value62_g77032);
				half ObjectData20_g77033 = max( lerpResult524_g77032 , 0.001 );
				half WorldData19_g77033 = 1.0;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77033 = WorldData19_g77033;
				#else
				float staticSwitch14_g77033 = ObjectData20_g77033;
				#endif
				half Motion_FacingMask5214_g76908 = staticSwitch14_g77033;
				half Motion_20_Amplitude4381_g76908 = Motion_FacingMask5214_g76908;
				half Input_MotionAmplitude384_g77019 = Motion_20_Amplitude4381_g76908;
				half Input_GlobalWind407_g77019 = Global_Wind_Power2223_g76908;
				float4 break638_g77004 = abs( Noise_Complex703_g77004 );
				half Global_Noise_B5526_g76908 = break638_g77004.b;
				half Input_GlobalNoise411_g77019 = Global_Noise_B5526_g76908;
				float lerpResult413_g77019 = lerp( 1.8 , 0.4 , Input_GlobalWind407_g77019);
				half Motion_Amplitude418_g77019 = ( Input_MotionAmplitude384_g77019 * Input_GlobalWind407_g77019 * pow( Input_GlobalNoise411_g77019 , lerpResult413_g77019 ) );
				half Input_Squash58_g77019 = _MotionAmplitude_20;
				float enc59_g77023 = v.ase_texcoord.z;
				float2 localDecodeFloatToVector259_g77023 = DecodeFloatToVector2( enc59_g77023 );
				float2 break61_g77023 = localDecodeFloatToVector259_g77023;
				half Mesh_Motion_2060_g76908 = break61_g77023.x;
				half Input_MeshMotion_20388_g77019 = Mesh_Motion_2060_g76908;
				float Bounds_Radius5231_g76908 = break63_g77023.y;
				half Input_BoundsRadius390_g77019 = Bounds_Radius5231_g76908;
				half Global_MotionValue462_g77019 = TVE_MotionValue_20;
				half2 Input_DirectionOS366_g77019 = Global_React_DirectionOS39_g76908;
				float2 break371_g77019 = Input_DirectionOS366_g77019;
				float3 appendResult372_g77019 = (float3(break371_g77019.x , ( Motion_SineA450_g77019 * 0.3 ) , break371_g77019.y));
				half3 Motion_20_Squash4418_g76908 = ( ( (max( Motion_SineA450_g77019 , Motion_SineB395_g77019 )*0.5 + 0.5) * Motion_Amplitude418_g77019 * Input_Squash58_g77019 * Input_MeshMotion_20388_g77019 * Input_BoundsRadius390_g77019 * Global_MotionValue462_g77019 ) * appendResult372_g77019 );
				half3 VertexPos40_g76982 = ( ( VertexPosRotationAxis50_g76991 + ( VertexPosOtherAxis82_g76991 * cos( Angle44_g76991 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g76991 ) * sin( Angle44_g76991 ) ) ) + Motion_20_Squash4418_g76908 );
				float3 appendResult74_g76982 = (float3(0.0 , VertexPos40_g76982.y , 0.0));
				float3 VertexPosRotationAxis50_g76982 = appendResult74_g76982;
				float3 break84_g76982 = VertexPos40_g76982;
				float3 appendResult81_g76982 = (float3(break84_g76982.x , 0.0 , break84_g76982.z));
				float3 VertexPosOtherAxis82_g76982 = appendResult81_g76982;
				half Input_Rolling379_g77019 = _MotionAmplitude_22;
				half Motion_20_Rolling5257_g76908 = ( Motion_SineA450_g77019 * Motion_Amplitude418_g77019 * Input_Rolling379_g77019 * Input_MeshMotion_20388_g77019 * Global_MotionValue462_g77019 );
				half Angle44_g76982 = Motion_20_Rolling5257_g76908;
				half3 Input_Position500_g77000 = WorldPosition_Shifted7477_g76908;
				half Input_MotionScale321_g77000 = _MotionScale_32;
				half Input_MotionVariation330_g77000 = _MotionVariation_32;
				half Input_GlobalVariation372_g77000 = Global_MeshVariation5104_g76908;
				float lerpResult128_g77001 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Input_MotionSpeed62_g77000 = _MotionSpeed_32;
				float4 tex2DNode460_g77000 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, sampler_Linear_Repeat, ( ( (Input_Position500_g77000).xz * Input_MotionScale321_g77000 * 0.03 ) + ( Input_MotionVariation330_g77000 * Input_GlobalVariation372_g77000 ) + ( lerpResult128_g77001 * Input_MotionSpeed62_g77000 * 0.02 ) ), 0.0 );
				float3 appendResult462_g77000 = (float3(tex2DNode460_g77000.r , tex2DNode460_g77000.g , tex2DNode460_g77000.b));
				half3 Flutter_Texture489_g77000 = (appendResult462_g77000*2.0 + -1.0);
				float temp_output_7_0_g76958 = TVE_MotionFadeEnd;
				float temp_output_10_0_g76958 = ( TVE_MotionFadeStart - temp_output_7_0_g76958 );
				half Motion_FadeOut4005_g76908 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76958 ) / ( temp_output_10_0_g76958 + 0.0001 ) ) );
				half Motion_30_Amplitude4960_g76908 = ( _MotionAmplitude_32 * Motion_FacingMask5214_g76908 * Motion_FadeOut4005_g76908 );
				half Input_MotionAmplitude58_g77000 = Motion_30_Amplitude4960_g76908;
				half Mesh_Motion_30144_g76908 = break61_g77023.y;
				half Input_MeshMotion_30374_g77000 = Mesh_Motion_30144_g76908;
				half Input_GlobalWind471_g77000 = Global_Wind_Power2223_g76908;
				half Global_MotionValue503_g77000 = TVE_MotionValue_30;
				half Input_GlobalNoise472_g77000 = Global_Noise_B5526_g76908;
				float lerpResult466_g77000 = lerp( 2.4 , 0.6 , Input_GlobalWind471_g77000);
				half Flutter_Amplitude491_g77000 = ( Input_MotionAmplitude58_g77000 * Input_MeshMotion_30374_g77000 * Input_GlobalWind471_g77000 * Global_MotionValue503_g77000 * pow( Input_GlobalNoise472_g77000 , lerpResult466_g77000 ) );
				half3 Motion_30_Flutter263_g76908 = ( Flutter_Texture489_g77000 * Flutter_Amplitude491_g77000 );
				float3 Vertex_Motion_Object833_g76908 = ( ( VertexPosRotationAxis50_g76982 + ( VertexPosOtherAxis82_g76982 * cos( Angle44_g76982 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g76982 ) * sin( Angle44_g76982 ) ) ) + Motion_30_Flutter263_g76908 );
				half3 ObjectData20_g76976 = Vertex_Motion_Object833_g76908;
				float3 temp_output_3474_0_g76908 = ( VertexPosition3588_g76908 - Mesh_PivotsOS2291_g76908 );
				float3 Vertex_Motion_World1118_g76908 = ( ( ( temp_output_3474_0_g76908 + Motion_10_Interaction7519_g76908 ) + Motion_20_Squash4418_g76908 ) + Motion_30_Flutter263_g76908 );
				half3 WorldData19_g76976 = Vertex_Motion_World1118_g76908;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76976 = WorldData19_g76976;
				#else
				float3 staticSwitch14_g76976 = ObjectData20_g76976;
				#endif
				float3 temp_output_7495_0_g76908 = staticSwitch14_g76976;
				float3 Vertex_Motion7493_g76908 = temp_output_7495_0_g76908;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 break2709_g76908 = cross( ViewDirection3963_g76908 , half3(0,1,0) );
				float3 appendResult2710_g76908 = (float3(-break2709_g76908.z , 0.0 , break2709_g76908.x));
				float3 appendResult2667_g76908 = (float3(Global_MeshVariation5104_g76908 , 0.5 , Global_MeshVariation5104_g76908));
				half Mesh_Height1524_g76908 = v.ase_color.a;
				float dotResult2212_g76908 = dot( ViewDirection3963_g76908 , float3(0,1,0) );
				half Mask_HView2656_g76908 = dotResult2212_g76908;
				float saferPower2652_g76908 = abs( Mask_HView2656_g76908 );
				half3 Grass_Perspective2661_g76908 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g76908 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g76908*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * Mesh_Height1524_g76908 * pow( saferPower2652_g76908 , _PerspectiveAngleValue ) );
				float temp_output_84_0_g76940 = _LayerVertexValue;
				float temp_output_19_0_g76944 = TVE_VertexUsage[(int)temp_output_84_0_g76940];
				float4 temp_output_94_19_g76940 = TVE_VertexCoords;
				half2 UV97_g76940 = ( (temp_output_94_19_g76940).zw + ( (temp_output_94_19_g76940).xy * (ObjectPosition4223_g76908).xz ) );
				float4 tex2DArrayNode50_g76940 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_VertexTex, sampler_Linear_Clamp, float3(UV97_g76940,temp_output_84_0_g76940), 0.0 );
				float4 temp_output_17_0_g76944 = tex2DArrayNode50_g76940;
				float4 temp_output_111_19_g76940 = TVE_VertexParams;
				float4 temp_output_3_0_g76944 = temp_output_111_19_g76940;
				float4 ifLocalVar18_g76944 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76944 >= 0.5 )
				ifLocalVar18_g76944 = temp_output_17_0_g76944;
				else
				ifLocalVar18_g76944 = temp_output_3_0_g76944;
				float4 lerpResult22_g76944 = lerp( temp_output_3_0_g76944 , temp_output_17_0_g76944 , temp_output_19_0_g76944);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76944 = lerpResult22_g76944;
				#else
				float4 staticSwitch24_g76944 = ifLocalVar18_g76944;
				#endif
				half4 Global_Vertex_Params4173_g76908 = staticSwitch24_g76944;
				float4 break322_g76945 = Global_Vertex_Params4173_g76908;
				half Global_VertexSize174_g76908 = saturate( break322_g76945.w );
				float lerpResult346_g76908 = lerp( 1.0 , Global_VertexSize174_g76908 , _GlobalSize);
				float3 appendResult3480_g76908 = (float3(lerpResult346_g76908 , lerpResult346_g76908 , lerpResult346_g76908));
				half3 ObjectData20_g76973 = appendResult3480_g76908;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g76973 = _Vector11;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76973 = WorldData19_g76973;
				#else
				float3 staticSwitch14_g76973 = ObjectData20_g76973;
				#endif
				half3 Vertex_Size1741_g76908 = staticSwitch14_g76973;
				float temp_output_7_0_g76974 = _SizeFadeEndValue;
				float temp_output_10_0_g76974 = ( _SizeFadeStartValue - temp_output_7_0_g76974 );
				float temp_output_7453_0_g76908 = saturate( ( ( ( distance( _WorldSpaceCameraPos , ObjectPosition4223_g76908 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g76974 ) / ( temp_output_10_0_g76974 + 0.0001 ) ) );
				float3 appendResult3482_g76908 = (float3(temp_output_7453_0_g76908 , temp_output_7453_0_g76908 , temp_output_7453_0_g76908));
				half3 ObjectData20_g76972 = appendResult3482_g76908;
				half3 _Vector5 = half3(1,1,1);
				half3 WorldData19_g76972 = _Vector5;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76972 = WorldData19_g76972;
				#else
				float3 staticSwitch14_g76972 = ObjectData20_g76972;
				#endif
				float3 Vertex_SizeFade1740_g76908 = staticSwitch14_g76972;
				float3 lerpResult16_g76977 = lerp( VertexPosition3588_g76908 , ( ( ( Vertex_Motion7493_g76908 + Grass_Perspective2661_g76908 ) * Vertex_Size1741_g76908 * Vertex_SizeFade1740_g76908 ) + Mesh_PivotsOS2291_g76908 ) , TVE_IsEnabled);
				float3 temp_output_4912_0_g76908 = lerpResult16_g76977;
				float3 Final_VertexPosition890_g76908 = ( temp_output_4912_0_g76908 + _DisableSRPBatcher );
				
				float4 break33_g77028 = _second_uvs_mode;
				float2 temp_output_30_0_g77028 = ( v.ase_texcoord.xy * break33_g77028.x );
				float2 appendResult21_g77023 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76908 = appendResult21_g77023;
				float2 temp_output_29_0_g77028 = ( Mesh_DetailCoord3_g76908 * break33_g77028.y );
				float2 temp_output_31_0_g77028 = ( (WorldPosition_Shifted7477_g76908).xz * break33_g77028.z );
				half2 Second_UVs_Tilling7609_g76908 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76908 = ( 1.0 / Second_UVs_Tilling7609_g76908 );
				float2 lerpResult7614_g76908 = lerp( Second_UVs_Tilling7609_g76908 , Second_UVs_Scale7610_g76908 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76908 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76934 = ( ( ( temp_output_30_0_g77028 + temp_output_29_0_g77028 + temp_output_31_0_g77028 ) * lerpResult7614_g76908 ) + Second_UVs_Offset7605_g76908 );
				o.ase_texcoord3.xy = vertexToFrag11_g76934;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				o.ase_texcoord7.xyz = vertexToFrag3890_g76908;
				o.ase_texcoord8.xyz = vertexToFrag4224_g76908;
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
				float3 vertexValue = Final_VertexPosition890_g76908;
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

				float localCustomAlphaClip19_g77011 = ( 0.0 );
				half2 Main_UVs15_g76908 = ( ( IN.ase_texcoord2.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76908 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76908 );
				half Main_Alpha316_g76908 = tex2DNode29_g76908.a;
				float2 vertexToFrag11_g76934 = IN.ase_texcoord3.xy;
				half2 Second_UVs17_g76908 = vertexToFrag11_g76934;
				float4 tex2DNode89_g76908 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76908 );
				half Second_Alpha5007_g76908 = tex2DNode89_g76908.a;
				float4 tex2DNode35_g76908 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				half Main_Mask57_g76908 = tex2DNode35_g76908.b;
				float4 tex2DNode33_g76908 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76908 );
				half Second_Mask81_g76908 = tex2DNode33_g76908.b;
				float lerpResult6885_g76908 = lerp( Main_Mask57_g76908 , Second_Mask81_g76908 , _DetailMaskMode);
				float clampResult17_g76986 = clamp( lerpResult6885_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76985 = _DetailMaskMinValue;
				float temp_output_10_0_g76985 = ( _DetailMaskMaxValue - temp_output_7_0_g76985 );
				half Blend_Mask_Texture6794_g76908 = saturate( ( ( clampResult17_g76986 - temp_output_7_0_g76985 ) / ( temp_output_10_0_g76985 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76908 = IN.ase_color.b;
				half4 Normal_Packed45_g77012 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76908 );
				float2 appendResult58_g77012 = (float2(( (Normal_Packed45_g77012).x * (Normal_Packed45_g77012).w ) , (Normal_Packed45_g77012).y));
				half2 Normal_Default50_g77012 = appendResult58_g77012;
				half2 Normal_ASTC41_g77012 = (Normal_Packed45_g77012).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g77012 = Normal_ASTC41_g77012;
				#else
				float2 staticSwitch38_g77012 = Normal_Default50_g77012;
				#endif
				half2 Normal_NO_DTX544_g77012 = (Normal_Packed45_g77012).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g77012 = Normal_NO_DTX544_g77012;
				#else
				float2 staticSwitch37_g77012 = staticSwitch38_g77012;
				#endif
				float2 temp_output_6555_0_g76908 = ( (staticSwitch37_g77012*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76908 = (float3(temp_output_6555_0_g76908 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g76908 = appendResult7388_g76908;
				float3 worldNormal7389_g76908 = float3(dot(tanToWorld0,tanNormal7389_g76908), dot(tanToWorld1,tanNormal7389_g76908), dot(tanToWorld2,tanNormal7389_g76908));
				half3 Main_NormalWS7390_g76908 = worldNormal7389_g76908;
				float lerpResult6884_g76908 = lerp( Mesh_DetailMask90_g76908 , ((Main_NormalWS7390_g76908).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76984 = clamp( lerpResult6884_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76983 = _DetailMeshMinValue;
				float temp_output_10_0_g76983 = ( _DetailMeshMaxValue - temp_output_7_0_g76983 );
				half Blend_Mask_Mesh1540_g76908 = saturate( ( ( clampResult17_g76984 - temp_output_7_0_g76983 ) / ( temp_output_10_0_g76983 + 0.0001 ) ) );
				float clampResult17_g76994 = clamp( ( Blend_Mask_Texture6794_g76908 * Blend_Mask_Mesh1540_g76908 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g77009 = _DetailBlendMinValue;
				float temp_output_10_0_g77009 = ( _DetailBlendMaxValue - temp_output_7_0_g77009 );
				half Blend_Mask147_g76908 = ( saturate( ( ( clampResult17_g76994 - temp_output_7_0_g77009 ) / ( temp_output_10_0_g77009 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float lerpResult6153_g76908 = lerp( Main_Alpha316_g76908 , Second_Alpha5007_g76908 , Blend_Mask147_g76908);
				float lerpResult6785_g76908 = lerp( ( Main_Alpha316_g76908 * Second_Alpha5007_g76908 ) , lerpResult6153_g76908 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76908 = lerpResult6785_g76908;
				#else
				float staticSwitch6158_g76908 = Main_Alpha316_g76908;
				#endif
				half Blend_Alpha6157_g76908 = staticSwitch6158_g76908;
				half AlphaTreshold2132_g76908 = _AlphaClipValue;
				float temp_output_84_0_g76924 = _LayerExtrasValue;
				float temp_output_19_0_g76928 = TVE_ExtrasUsage[(int)temp_output_84_0_g76924];
				float4 temp_output_93_19_g76924 = TVE_ExtrasCoords;
				float3 vertexToFrag3890_g76908 = IN.ase_texcoord7.xyz;
				float3 WorldPosition3905_g76908 = vertexToFrag3890_g76908;
				float3 vertexToFrag4224_g76908 = IN.ase_texcoord8.xyz;
				float3 ObjectPosition4223_g76908 = vertexToFrag4224_g76908;
				float3 lerpResult4827_g76908 = lerp( WorldPosition3905_g76908 , ObjectPosition4223_g76908 , _ExtrasPositionMode);
				half2 UV96_g76924 = ( (temp_output_93_19_g76924).zw + ( (temp_output_93_19_g76924).xy * (lerpResult4827_g76908).xz ) );
				float4 tex2DArrayNode48_g76924 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76924,temp_output_84_0_g76924), 0.0 );
				float4 temp_output_17_0_g76928 = tex2DArrayNode48_g76924;
				float4 temp_output_94_85_g76924 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76928 = temp_output_94_85_g76924;
				float4 ifLocalVar18_g76928 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76928 >= 0.5 )
				ifLocalVar18_g76928 = temp_output_17_0_g76928;
				else
				ifLocalVar18_g76928 = temp_output_3_0_g76928;
				float4 lerpResult22_g76928 = lerp( temp_output_3_0_g76928 , temp_output_17_0_g76928 , temp_output_19_0_g76928);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76928 = lerpResult22_g76928;
				#else
				float4 staticSwitch24_g76928 = ifLocalVar18_g76928;
				#endif
				half4 Global_Extras_Params5440_g76908 = staticSwitch24_g76928;
				float4 break456_g76938 = Global_Extras_Params5440_g76908;
				half Global_Extras_Alpha1033_g76908 = saturate( break456_g76938.w );
				float3 ObjectPosition_Shifted7481_g76908 = ( ObjectPosition4223_g76908 - TVE_WorldOrigin );
				half3 Input_Position167_g77034 = ObjectPosition_Shifted7481_g76908;
				float dotResult156_g77034 = dot( (Input_Position167_g77034).xz , float2( 12.9898,78.233 ) );
				half Vertex_DynamicMode5112_g76908 = _VertexDynamicMode;
				half Input_DynamicMode120_g77034 = Vertex_DynamicMode5112_g76908;
				float Postion_Random162_g77034 = ( sin( dotResult156_g77034 ) * ( 1.0 - Input_DynamicMode120_g77034 ) );
				float Mesh_Variation16_g76908 = IN.ase_color.r;
				half Input_Variation124_g77034 = Mesh_Variation16_g76908;
				half ObjectData20_g77036 = frac( ( Postion_Random162_g77034 + Input_Variation124_g77034 ) );
				half WorldData19_g77036 = Input_Variation124_g77034;
				#ifdef TVE_FEATURE_BATCHING
				float staticSwitch14_g77036 = WorldData19_g77036;
				#else
				float staticSwitch14_g77036 = ObjectData20_g77036;
				#endif
				float temp_output_112_0_g77034 = staticSwitch14_g77036;
				float clampResult171_g77034 = clamp( temp_output_112_0_g77034 , 0.01 , 0.99 );
				float Global_MeshVariation5104_g76908 = clampResult171_g77034;
				float lerpResult5154_g76908 = lerp( 0.0 , Global_MeshVariation5104_g76908 , _AlphaVariationValue);
				half Global_Alpha_Variation5158_g76908 = lerpResult5154_g76908;
				float Emissive_Alpha7625_g76908 = 0.0;
				float lerpResult6866_g76908 = lerp( ( 1.0 - Blend_Mask147_g76908 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76908 = lerpResult6866_g76908;
				#else
				float staticSwitch6612_g76908 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76908 = staticSwitch6612_g76908;
				half Alpha_Mask6234_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5203_g76908 = lerp( 1.0 , saturate( ( ( Global_Extras_Alpha1033_g76908 - saturate( ( Global_Alpha_Variation5158_g76908 + Emissive_Alpha7625_g76908 ) ) ) + ( Global_Extras_Alpha1033_g76908 * 0.1 ) ) ) , ( Alpha_Mask6234_g76908 * _GlobalAlpha ));
				float lerpResult16_g76952 = lerp( 1.0 , lerpResult5203_g76908 , TVE_IsEnabled);
				half Global_Alpha315_g76908 = lerpResult16_g76952;
				float3 ase_worldPos = IN.ase_texcoord9.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult2169_g76908 = normalize( ase_worldViewDir );
				float3 ViewDirection3963_g76908 = normalizeResult2169_g76908;
				float3 normalizeResult3971_g76908 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 WorldNormal_Derivates3972_g76908 = normalizeResult3971_g76908;
				float dotResult3851_g76908 = dot( ViewDirection3963_g76908 , WorldNormal_Derivates3972_g76908 );
				float lerpResult3993_g76908 = lerp( 1.0 , saturate( ( abs( dotResult3851_g76908 ) * 3.0 ) ) , _FadeGlancingValue);
				half Fade_Glancing3853_g76908 = lerpResult3993_g76908;
				half Fade_Effects_A5360_g76908 = Fade_Glancing3853_g76908;
				float temp_output_7_0_g76961 = TVE_CameraFadeMin;
				float temp_output_10_0_g76961 = ( TVE_CameraFadeMax - temp_output_7_0_g76961 );
				float lerpResult4755_g76908 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76961 ) / ( temp_output_10_0_g76961 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76908 = lerpResult4755_g76908;
				half Fade_Effects_B6228_g76908 = ( Fade_Effects_A5360_g76908 * Fade_Camera3743_g76908 );
				half Fade_Mask5149_g76908 = ( 1.0 * Blend_Mask_Invert6260_g76908 );
				float lerpResult5141_g76908 = lerp( 1.0 , ( Fade_Effects_B6228_g76908 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76908);
				half Fade_Effects_C7653_g76908 = lerpResult5141_g76908;
				float temp_output_5865_0_g76908 = saturate( ( Fade_Effects_C7653_g76908 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76908 ) ).r ) );
				half Fade_Alpha3727_g76908 = temp_output_5865_0_g76908;
				half Final_Alpha7344_g76908 = min( ( ( Blend_Alpha6157_g76908 - AlphaTreshold2132_g76908 ) * Global_Alpha315_g76908 ) , Fade_Alpha3727_g76908 );
				float temp_output_3_0_g77011 = Final_Alpha7344_g76908;
				float Alpha19_g77011 = temp_output_3_0_g77011;
				float temp_output_15_0_g77011 = 0.01;
				float Treshold19_g77011 = temp_output_15_0_g77011;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#else
				clip(Alpha19_g77011 - Treshold19_g77011);
				#endif
				#endif
				}
				float clampResult17_g77013 = clamp( Main_Mask57_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77014 = _MainMaskMinValue;
				float temp_output_10_0_g77014 = ( _MainMaskMaxValue - temp_output_7_0_g77014 );
				half Main_Mask_Remap5765_g76908 = saturate( ( ( clampResult17_g77013 - temp_output_7_0_g77014 ) / ( temp_output_10_0_g77014 + 0.0001 ) ) );
				float lerpResult7671_g76908 = lerp( 1.0 , Main_Mask_Remap5765_g76908 , _MainColorMode);
				float4 lerpResult7654_g76908 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76908);
				half Main_Color_Alpha6121_g76908 = (lerpResult7654_g76908).a;
				float clampResult17_g77016 = clamp( Second_Mask81_g76908 , 0.0001 , 0.9999 );
				float temp_output_7_0_g77017 = _SecondMaskMinValue;
				float temp_output_10_0_g77017 = ( _SecondMaskMaxValue - temp_output_7_0_g77017 );
				half Second_Mask_Remap6130_g76908 = saturate( ( ( clampResult17_g77016 - temp_output_7_0_g77017 ) / ( temp_output_10_0_g77017 + 0.0001 ) ) );
				float lerpResult7672_g76908 = lerp( 1.0 , Second_Mask_Remap6130_g76908 , _SecondColorMode);
				float4 lerpResult7662_g76908 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76908);
				half Second_Color_Alpha6152_g76908 = (lerpResult7662_g76908).a;
				float lerpResult6168_g76908 = lerp( Main_Color_Alpha6121_g76908 , Second_Color_Alpha6152_g76908 , Blend_Mask147_g76908);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76908 = lerpResult6168_g76908;
				#else
				float staticSwitch6174_g76908 = Main_Color_Alpha6121_g76908;
				#endif
				half Blend_Color_Alpha6167_g76908 = staticSwitch6174_g76908;
				half Final_Clip914_g76908 = saturate( ( Alpha19_g77011 * Blend_Color_Alpha6167_g76908 ) );
				
				o.Normal = fixed3( 0, 0, 1 );
				#if !defined(ASE_LIGHTING_SIMPLE)
					o.Occlusion = 1;
				#endif
				o.Alpha = Final_Clip914_g76908;
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
Node;AmplifyShaderEditor.RangedFloatNode;1355;-1408,-640;Half;False;Property;_render_coverage;_render_coverage;252;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1808,-640;Half;False;Property;_render_dst;_render_dst;250;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1632,-640;Half;False;Property;_render_zw;_render_zw;251;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-2000,-640;Half;False;Property;_render_src;_render_src;249;1;[HideInInspector];Create;True;0;0;0;True;0;False;5;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-640;Half;False;Property;_render_cull;_render_cull;248;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;449;-2176,512;Inherit;False;1279.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-768;Inherit;False;1280.392;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2174,-384;Inherit;False;1276.392;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1081;-2176,640;Inherit;False;Define Pipeline Standard;-1;;76903;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;1087;-1088,640;Inherit;False;Compile All Shaders;-1;;76904;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1088;-1280,640;Inherit;False;Compile Core;-1;;76905;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2104;-1920,640;Inherit;False;Define Lighting Subsurface;253;;76906;77137addbb4a22f4c818adc8782926be;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;471;-1664,640;Inherit;False;Define ShaderType Plant;255;;76907;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2162;-2176,-256;Inherit;False;Base Shader Core;0;;76908;856f7164d1c579d43a5cf4968a75ca43;98,7343,0,3880,1,4028,1,3900,1,3908,1,4172,1,7691,1,7692,1,4179,1,6791,1,1298,1,1300,1,6792,1,3586,0,4499,1,1708,1,6056,1,3509,1,3873,1,893,1,6230,0,5156,1,5345,0,1717,1,1718,1,7566,1,6116,1,5075,1,1714,1,1715,1,6076,1,6068,1,6592,1,6692,0,6729,1,1776,1,6352,1,6378,1,3475,1,6655,1,4210,1,1745,1,3479,0,1646,0,3501,1,2807,1,6206,1,7565,1,4999,0,6194,1,3887,0,7321,0,7332,0,3957,1,6647,0,6257,0,5357,0,2172,1,3883,0,7650,0,3728,1,5350,0,2658,1,7617,0,1742,1,3484,0,6166,1,6161,1,1736,1,4837,1,1734,1,6848,1,6320,1,1737,1,6622,1,1735,1,7429,0,7624,0,860,1,6721,1,2261,1,2260,1,2054,1,2032,1,5258,1,2039,1,2062,1,7548,1,7550,1,3243,1,5220,1,4217,1,6699,1,5339,0,7689,1,7492,0,5090,1,4242,1;10;7333;FLOAT3;1,1,1;False;6196;FLOAT;1;False;6693;FLOAT;1;False;6201;FLOAT;1;False;6205;FLOAT;1;False;7652;FLOAT;1;False;5143;FLOAT;1;False;6231;FLOAT;1;False;6198;FLOAT;1;False;5340;FLOAT3;0,0,0;False;23;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4842;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT;532;FLOAT;5389;FLOAT;721;FLOAT3;1230;FLOAT;5296;FLOAT;1461;FLOAT;1290;FLOAT;629;FLOAT3;534;FLOAT;4867;FLOAT4;5246;FLOAT4;4841
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2163;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ExtraPrePass;0;0;ExtraPrePass;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2164;-1152,-256;Float;False;True;-1;2;TVEShaderCoreGUI;0;17;BOXOPHOBIC/The Vegetation Engine/Geometry/Plant Subsurface Lit;28cd5599e02859647ae1798e4fcaef6c;True;ForwardBase;0;1;ForwardBase;20;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;True;_render_coverage;True;True;2;True;_render_cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_render_zw;True;0;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;5;False;0;True;True;1;1;True;_render_src;0;True;_render_dst;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;0;0;Standard;41;Category;0;0;Workflow;0;638375592487300401;Surface;0;0;  Blend;0;0;  Refraction Model;0;0;  Dither Shadows;1;0;Two Sided;0;638375591514985853;Deferred Pass;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;1;638375591495620912;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Ambient Light;1;0;Meta Pass;1;0;Add Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Fwd Specular Highlights Toggle;0;0;Fwd Reflections Toggle;0;0;Disable Batching;0;0;Vertex Position,InvertActionOnDeselection;0;638375591541546452;0;6;False;True;True;False;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2165;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ForwardAdd;0;2;ForwardAdd;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2166;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Deferred;0;3;Deferred;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2167;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Meta;0;4;Meta;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2168;-1152,-256;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ShadowCaster;0;5;ShadowCaster;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
WireConnection;2164;0;2162;0
WireConnection;2164;1;2162;528
WireConnection;2164;2;2162;2489
WireConnection;2164;3;2162;3678
WireConnection;2164;6;2162;531
WireConnection;2164;5;2162;530
WireConnection;2164;7;2162;532
WireConnection;2164;14;2162;1230
WireConnection;2164;15;2162;534
ASEEND*/
//CHKSM=79467D608ED9144DF403145BB82E85BF15655B80
