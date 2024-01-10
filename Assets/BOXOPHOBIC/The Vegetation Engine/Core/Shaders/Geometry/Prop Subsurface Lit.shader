// Made with Amplify Shader Editor v1.9.2.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Geometry/Prop Subsurface Lit"
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
		[StyledCategory(Global Settings)]_CategoryGlobals("[ Category Globals ]", Float) = 1
		[StyledMessage(Info, Procedural Variation in use. The Variation might not work as expected when switching from one LOD to another., 0, 10)]_MessageGlobalsVariation("# Message Globals Variation", Float) = 0
		[StyledEnum(TVEColorsLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(TVEExtrasLayers, Default 0 Layer_1 1 Layer_2 2 Layer_3 3 Layer_4 4 Layer_5 5 Layer_6 6 Layer_7 7 Layer_8 8, 0, 0)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledSpace(10)]_SpaceGlobalLayers("# Space Global Layers", Float) = 0
		_GlobalColors("Global Color", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		[StyledSpace(10)]_SpaceGlobalLocals("# Space Global Locals", Float) = 0
		_ColorsIntensityValue("Color Intensity", Range( 0 , 2)) = 1
		_ColorsMaskValue("Color Use Mask", Range( 0 , 1)) = 1
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
		_MainMetallicValue("Main Metallic", Range( 0 , 1)) = 0
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
		_SecondMetallicValue("Detail Metallic", Range( 0 , 1)) = 0
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
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Remap", Vector) = (0,0,0,0)
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
		[StyledCategory(Size Fade Settings)]_CategorySizeFade("[ Category Size Fade ]", Float) = 1
		[StyledCategory(Motion Settings)]_CategoryMotion("[ Category Motion ]", Float) = 1
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is splitting the mesh., 0, 10)]_MessageMotionVariation("# Message Motion Variation", Float) = 0
		[StyledSpace(10)]_SpaceMotionGlobals("# SpaceMotionGlobals", Float) = 0
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
		[HideInInspector]_IsPropShader("_IsPropShader", Float) = 1
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1

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
		AlphaToMask Off
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
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_PROP_SHADER
			#define TVE_IS_SUBSURFACE_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
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
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_coverage;
			uniform float _IsPropShader;
			uniform half _IsSubsurfaceShader;
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
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			SamplerState sampler_Linear_Repeat;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform float3 TVE_WorldOrigin;
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
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _VertexPivotMode;
			uniform half _ColorsPositionMode;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _VertexOcclusionColorsMode;
			uniform half TVE_IsEnabled;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _VertexDynamicMode;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
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
			uniform half _MainMetallicValue;
			uniform half _SecondMetallicValue;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			uniform half _DetailFadeMode;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g76880 = v.vertex.xyz;
				float3 Final_VertexPosition890_g76880 = ( VertexPosition3588_g76880 + _DisableSRPBatcher );
				
				float4 break33_g77000 = _second_uvs_mode;
				float2 temp_output_30_0_g77000 = ( v.ase_texcoord.xy * break33_g77000.x );
				float2 appendResult21_g76995 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76880 = appendResult21_g76995;
				float2 temp_output_29_0_g77000 = ( Mesh_DetailCoord3_g76880 * break33_g77000.y );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76880 = ase_worldPos;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 WorldPosition_Shifted7477_g76880 = ( WorldPosition3905_g76880 - TVE_WorldOrigin );
				float2 temp_output_31_0_g77000 = ( (WorldPosition_Shifted7477_g76880).xz * break33_g77000.z );
				half2 Second_UVs_Tilling7609_g76880 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76880 = ( 1.0 / Second_UVs_Tilling7609_g76880 );
				float2 lerpResult7614_g76880 = lerp( Second_UVs_Tilling7609_g76880 , Second_UVs_Scale7610_g76880 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76880 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76906 = ( ( ( temp_output_30_0_g77000 + temp_output_29_0_g77000 + temp_output_31_0_g77000 ) * lerpResult7614_g76880 ) + Second_UVs_Offset7605_g76880 );
				o.ase_texcoord10.xy = vertexToFrag11_g76906;
				o.ase_texcoord11.xyz = vertexToFrag3890_g76880;
				float4x4 break19_g76936 = unity_ObjectToWorld;
				float3 appendResult20_g76936 = (float3(break19_g76936[ 0 ][ 3 ] , break19_g76936[ 1 ][ 3 ] , break19_g76936[ 2 ][ 3 ]));
				float3 appendResult60_g76890 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76880 = ( appendResult60_g76890 * _VertexPivotMode );
				float3 temp_output_122_0_g76936 = Mesh_PivotsData2831_g76880;
				float3 PivotsOnly105_g76936 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76936 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76938 = ( appendResult20_g76936 + PivotsOnly105_g76936 );
				half3 WorldData19_g76938 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76938 = WorldData19_g76938;
				#else
				float3 staticSwitch14_g76938 = ObjectData20_g76938;
				#endif
				float3 temp_output_114_0_g76936 = staticSwitch14_g76938;
				float3 vertexToFrag4224_g76880 = temp_output_114_0_g76936;
				o.ase_texcoord12.xyz = vertexToFrag4224_g76880;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g76880;
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
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

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
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
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

				half2 Main_UVs15_g76880 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76880 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76880 );
				float3 lerpResult6223_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76880).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76880 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				half Main_Mask57_g76880 = tex2DNode35_g76880.b;
				float clampResult17_g76985 = clamp( Main_Mask57_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76986 = _MainMaskMinValue;
				float temp_output_10_0_g76986 = ( _MainMaskMaxValue - temp_output_7_0_g76986 );
				half Main_Mask_Remap5765_g76880 = saturate( ( ( clampResult17_g76985 - temp_output_7_0_g76986 ) / ( temp_output_10_0_g76986 + 0.0001 ) ) );
				float lerpResult7671_g76880 = lerp( 1.0 , Main_Mask_Remap5765_g76880 , _MainColorMode);
				float4 lerpResult7654_g76880 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76880);
				half3 Main_Color_RGB7657_g76880 = (lerpResult7654_g76880).rgb;
				half3 Main_Albedo99_g76880 = ( lerpResult6223_g76880 * Main_Color_RGB7657_g76880 );
				float2 vertexToFrag11_g76906 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g76880 = vertexToFrag11_g76906;
				float4 tex2DNode89_g76880 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76880 );
				float3 lerpResult6225_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76880).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76880 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				half Second_Mask81_g76880 = tex2DNode33_g76880.b;
				float clampResult17_g76988 = clamp( Second_Mask81_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76989 = _SecondMaskMinValue;
				float temp_output_10_0_g76989 = ( _SecondMaskMaxValue - temp_output_7_0_g76989 );
				half Second_Mask_Remap6130_g76880 = saturate( ( ( clampResult17_g76988 - temp_output_7_0_g76989 ) / ( temp_output_10_0_g76989 + 0.0001 ) ) );
				float lerpResult7672_g76880 = lerp( 1.0 , Second_Mask_Remap6130_g76880 , _SecondColorMode);
				float4 lerpResult7662_g76880 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76880);
				half3 Second_Color_RGB7663_g76880 = (lerpResult7662_g76880).rgb;
				half3 Second_Albedo153_g76880 = ( lerpResult6225_g76880 * Second_Color_RGB7663_g76880 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76922 = 2.0;
				#else
				float staticSwitch1_g76922 = 4.594794;
				#endif
				float3 lerpResult4834_g76880 = lerp( ( Main_Albedo99_g76880 * Second_Albedo153_g76880 * staticSwitch1_g76922 ) , Second_Albedo153_g76880 , _DetailBlendMode);
				float lerpResult6885_g76880 = lerp( Main_Mask57_g76880 , Second_Mask81_g76880 , _DetailMaskMode);
				float clampResult17_g76958 = clamp( lerpResult6885_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76957 = _DetailMaskMinValue;
				float temp_output_10_0_g76957 = ( _DetailMaskMaxValue - temp_output_7_0_g76957 );
				half Blend_Mask_Texture6794_g76880 = saturate( ( ( clampResult17_g76958 - temp_output_7_0_g76957 ) / ( temp_output_10_0_g76957 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76880 = IN.ase_color.b;
				half4 Normal_Packed45_g76984 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				float2 appendResult58_g76984 = (float2(( (Normal_Packed45_g76984).x * (Normal_Packed45_g76984).w ) , (Normal_Packed45_g76984).y));
				half2 Normal_Default50_g76984 = appendResult58_g76984;
				half2 Normal_ASTC41_g76984 = (Normal_Packed45_g76984).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76984 = Normal_ASTC41_g76984;
				#else
				float2 staticSwitch38_g76984 = Normal_Default50_g76984;
				#endif
				half2 Normal_NO_DTX544_g76984 = (Normal_Packed45_g76984).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76984 = Normal_NO_DTX544_g76984;
				#else
				float2 staticSwitch37_g76984 = staticSwitch38_g76984;
				#endif
				float2 temp_output_6555_0_g76880 = ( (staticSwitch37_g76984*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76880 = (float3(temp_output_6555_0_g76880 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g76880 = appendResult7388_g76880;
				float3 worldNormal7389_g76880 = float3(dot(tanToWorld0,tanNormal7389_g76880), dot(tanToWorld1,tanNormal7389_g76880), dot(tanToWorld2,tanNormal7389_g76880));
				half3 Main_NormalWS7390_g76880 = worldNormal7389_g76880;
				float lerpResult6884_g76880 = lerp( Mesh_DetailMask90_g76880 , ((Main_NormalWS7390_g76880).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76956 = clamp( lerpResult6884_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76955 = _DetailMeshMinValue;
				float temp_output_10_0_g76955 = ( _DetailMeshMaxValue - temp_output_7_0_g76955 );
				half Blend_Mask_Mesh1540_g76880 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76955 ) / ( temp_output_10_0_g76955 + 0.0001 ) ) );
				float clampResult17_g76966 = clamp( ( Blend_Mask_Texture6794_g76880 * Blend_Mask_Mesh1540_g76880 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g76981 = _DetailBlendMinValue;
				float temp_output_10_0_g76981 = ( _DetailBlendMaxValue - temp_output_7_0_g76981 );
				half Blend_Mask147_g76880 = ( saturate( ( ( clampResult17_g76966 - temp_output_7_0_g76981 ) / ( temp_output_10_0_g76981 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76880 = lerp( Main_Albedo99_g76880 , lerpResult4834_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76880 = lerpResult235_g76880;
				#else
				float3 staticSwitch255_g76880 = Main_Albedo99_g76880;
				#endif
				half3 Blend_Albedo265_g76880 = staticSwitch255_g76880;
				half3 Tint_Gradient_Color5769_g76880 = float3(1,1,1);
				half3 Tint_Noise_Color5770_g76880 = float3(1,1,1);
				float Mesh_Occlusion318_g76880 = IN.ase_color.g;
				float clampResult17_g76928 = clamp( Mesh_Occlusion318_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76934 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76934 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76934 );
				half Occlusion_Mask6432_g76880 = saturate( ( ( clampResult17_g76928 - temp_output_7_0_g76934 ) / ( temp_output_10_0_g76934 + 0.0001 ) ) );
				float3 lerpResult2945_g76880 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76880);
				half3 Occlusion_Color648_g76880 = lerpResult2945_g76880;
				half3 Matcap_Color7428_g76880 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76880 = ( ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 * Occlusion_Color648_g76880 ) + Matcap_Color7428_g76880 );
				float3 temp_output_3_0_g76926 = Blend_Albedo_Tinted2808_g76880;
				float dotResult20_g76926 = dot( temp_output_3_0_g76926 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76880 = dotResult20_g76926;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76880).xxx;
				float temp_output_82_0_g76901 = _LayerColorsValue;
				float temp_output_19_0_g76905 = TVE_ColorsUsage[(int)temp_output_82_0_g76901];
				float4 temp_output_91_19_g76901 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76880 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 vertexToFrag4224_g76880 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g76880 = vertexToFrag4224_g76880;
				float3 lerpResult4822_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ColorsPositionMode);
				half2 UV94_g76901 = ( (temp_output_91_19_g76901).zw + ( (temp_output_91_19_g76901).xy * (lerpResult4822_g76880).xz ) );
				float4 tex2DArrayNode83_g76901 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76901,temp_output_82_0_g76901), 0.0 );
				float4 temp_output_17_0_g76905 = tex2DArrayNode83_g76901;
				float4 temp_output_92_86_g76901 = TVE_ColorsParams;
				float4 temp_output_3_0_g76905 = temp_output_92_86_g76901;
				float4 ifLocalVar18_g76905 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76905 >= 0.5 )
				ifLocalVar18_g76905 = temp_output_17_0_g76905;
				else
				ifLocalVar18_g76905 = temp_output_3_0_g76905;
				float4 lerpResult22_g76905 = lerp( temp_output_3_0_g76905 , temp_output_17_0_g76905 , temp_output_19_0_g76905);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76905 = lerpResult22_g76905;
				#else
				float4 staticSwitch24_g76905 = ifLocalVar18_g76905;
				#endif
				half4 Global_Colors_Params5434_g76880 = staticSwitch24_g76905;
				float4 temp_output_346_0_g76887 = Global_Colors_Params5434_g76880;
				half Global_Colors_A1701_g76880 = saturate( (temp_output_346_0_g76887).w );
				half Colors_Influence3668_g76880 = Global_Colors_A1701_g76880;
				float temp_output_6306_0_g76880 = ( 1.0 - Colors_Influence3668_g76880 );
				float3 lerpResult3618_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76880 * temp_output_6306_0_g76880 ) ));
				half3 Global_Colors_RGB1700_g76880 = (temp_output_346_0_g76887).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76918 = 2.0;
				#else
				float staticSwitch1_g76918 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76880 = ( Global_Colors_RGB1700_g76880 * staticSwitch1_g76918 * _ColorsIntensityValue );
				float lerpResult6617_g76880 = lerp( Main_Mask_Remap5765_g76880 , Second_Mask_Remap6130_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76880 = lerpResult6617_g76880;
				#else
				float staticSwitch6623_g76880 = Main_Mask_Remap5765_g76880;
				#endif
				half Blend_Mask_Remap6621_g76880 = staticSwitch6623_g76880;
				float lerpResult7679_g76880 = lerp( 1.0 , Blend_Mask_Remap6621_g76880 , _ColorsMaskValue);
				half Colors_Value3692_g76880 = ( lerpResult7679_g76880 * _GlobalColors );
				half Colors_Variation3650_g76880 = 1.0;
				half Occlusion_Alpha6463_g76880 = _VertexOcclusionColor.a;
				float lerpResult6459_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult6459_g76880);
				half Occlusion_Colors6450_g76880 = lerpResult6461_g76880;
				float3 temp_output_3_0_g76927 = ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 );
				float dotResult20_g76927 = dot( temp_output_3_0_g76927 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76880 = clamp( saturate( ( dotResult20_g76927 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76880 = clampResult6740_g76880;
				float temp_output_7_0_g76964 = 0.1;
				float temp_output_10_0_g76964 = ( 0.2 - temp_output_7_0_g76964 );
				float lerpResult16_g76919 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76880 * Colors_Influence3668_g76880 * Colors_Variation3650_g76880 * Occlusion_Colors6450_g76880 * Blend_Albedo_Globals6410_g76880 ) - temp_output_7_0_g76964 ) / ( temp_output_10_0_g76964 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , ( lerpResult3618_g76880 * Colors_RGB1954_g76880 ) , lerpResult16_g76919);
				half3 Blend_Albedo_Colored_High6027_g76880 = lerpResult3628_g76880;
				half3 Blend_Albedo_Colored863_g76880 = Blend_Albedo_Colored_High6027_g76880;
				half3 Global_OverlayColor1758_g76880 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76896 = _LayerExtrasValue;
				float temp_output_19_0_g76900 = TVE_ExtrasUsage[(int)temp_output_84_0_g76896];
				float4 temp_output_93_19_g76896 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ExtrasPositionMode);
				half2 UV96_g76896 = ( (temp_output_93_19_g76896).zw + ( (temp_output_93_19_g76896).xy * (lerpResult4827_g76880).xz ) );
				float4 tex2DArrayNode48_g76896 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76896,temp_output_84_0_g76896), 0.0 );
				float4 temp_output_17_0_g76900 = tex2DArrayNode48_g76896;
				float4 temp_output_94_85_g76896 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76900 = temp_output_94_85_g76896;
				float4 ifLocalVar18_g76900 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76900 >= 0.5 )
				ifLocalVar18_g76900 = temp_output_17_0_g76900;
				else
				ifLocalVar18_g76900 = temp_output_3_0_g76900;
				float4 lerpResult22_g76900 = lerp( temp_output_3_0_g76900 , temp_output_17_0_g76900 , temp_output_19_0_g76900);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76900 = lerpResult22_g76900;
				#else
				float4 staticSwitch24_g76900 = ifLocalVar18_g76900;
				#endif
				half4 Global_Extras_Params5440_g76880 = staticSwitch24_g76900;
				float4 break456_g76910 = Global_Extras_Params5440_g76880;
				half Global_Extras_Overlay156_g76880 = break456_g76910.z;
				half Overlay_Variation4560_g76880 = 1.0;
				half Overlay_Value5738_g76880 = ( _GlobalOverlay * Global_Extras_Overlay156_g76880 * Overlay_Variation4560_g76880 );
				half2 Main_Normal137_g76880 = temp_output_6555_0_g76880;
				float2 lerpResult3372_g76880 = lerp( float2( 0,0 ) , Main_Normal137_g76880 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g76987 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				float2 appendResult58_g76987 = (float2(( (Normal_Packed45_g76987).x * (Normal_Packed45_g76987).w ) , (Normal_Packed45_g76987).y));
				half2 Normal_Default50_g76987 = appendResult58_g76987;
				half2 Normal_ASTC41_g76987 = (Normal_Packed45_g76987).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76987 = Normal_ASTC41_g76987;
				#else
				float2 staticSwitch38_g76987 = Normal_Default50_g76987;
				#endif
				half2 Normal_NO_DTX544_g76987 = (Normal_Packed45_g76987).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76987 = Normal_NO_DTX544_g76987;
				#else
				float2 staticSwitch37_g76987 = staticSwitch38_g76987;
				#endif
				float2 temp_output_6560_0_g76880 = ( (staticSwitch37_g76987*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g76990 = temp_output_6560_0_g76880;
				float2 break64_g76990 = Normal_Planar45_g76990;
				float3 appendResult65_g76990 = (float3(break64_g76990.x , 0.0 , break64_g76990.y));
				float2 temp_output_7603_0_g76880 = (mul( ase_worldToTangent, appendResult65_g76990 )).xy;
				float2 ifLocalVar7604_g76880 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76880 = temp_output_7603_0_g76880;
				else
				ifLocalVar7604_g76880 = temp_output_6560_0_g76880;
				half2 Second_Normal179_g76880 = ifLocalVar7604_g76880;
				float2 temp_output_36_0_g76923 = ( lerpResult3372_g76880 + Second_Normal179_g76880 );
				float2 lerpResult3376_g76880 = lerp( Main_Normal137_g76880 , temp_output_36_0_g76923 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76880 = lerpResult3376_g76880;
				#else
				float2 staticSwitch267_g76880 = Main_Normal137_g76880;
				#endif
				half2 Blend_Normal312_g76880 = staticSwitch267_g76880;
				float3 appendResult7377_g76880 = (float3(Blend_Normal312_g76880 , 1.0));
				float3 tanNormal7376_g76880 = appendResult7377_g76880;
				float3 worldNormal7376_g76880 = float3(dot(tanToWorld0,tanNormal7376_g76880), dot(tanToWorld1,tanNormal7376_g76880), dot(tanToWorld2,tanNormal7376_g76880));
				half3 Blend_NormalWS7375_g76880 = worldNormal7376_g76880;
				half Vertex_DynamicMode5112_g76880 = _VertexDynamicMode;
				float lerpResult7446_g76880 = lerp( (Blend_NormalWS7375_g76880).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76880);
				float lerpResult6757_g76880 = lerp( 1.0 , saturate( lerpResult7446_g76880 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76880 = lerpResult6757_g76880;
				half Overlay_Shading6688_g76880 = Blend_Albedo_Globals6410_g76880;
				half Overlay_Custom6707_g76880 = 1.0;
				float lerpResult7693_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult7693_g76880);
				half Occlusion_Overlay6471_g76880 = lerpResult6467_g76880;
				float temp_output_7_0_g76932 = 0.1;
				float temp_output_10_0_g76932 = ( 0.2 - temp_output_7_0_g76932 );
				half Overlay_Mask_High6064_g76880 = saturate( ( ( ( Overlay_Value5738_g76880 * Overlay_Projection6081_g76880 * Overlay_Shading6688_g76880 * Overlay_Custom6707_g76880 * Occlusion_Overlay6471_g76880 ) - temp_output_7_0_g76932 ) / ( temp_output_10_0_g76932 + 0.0001 ) ) );
				half Overlay_Mask269_g76880 = Overlay_Mask_High6064_g76880;
				float3 lerpResult336_g76880 = lerp( Blend_Albedo_Colored863_g76880 , Global_OverlayColor1758_g76880 , Overlay_Mask269_g76880);
				half3 Blend_Albedo_Overlay359_g76880 = lerpResult336_g76880;
				half Global_WetnessContrast6502_g76880 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76880 = break456_g76910.y;
				half Wetness_Value6343_g76880 = ( Global_Extras_Wetness305_g76880 * _GlobalWetness );
				float3 lerpResult6367_g76880 = lerp( Blend_Albedo_Overlay359_g76880 , ( Blend_Albedo_Overlay359_g76880 * Blend_Albedo_Overlay359_g76880 ) , ( Global_WetnessContrast6502_g76880 * Wetness_Value6343_g76880 ));
				half3 Blend_Albedo_Wetness6351_g76880 = lerpResult6367_g76880;
				float3 _Vector10 = float3(1,1,1);
				half3 Tint_Highlight_Color5771_g76880 = _Vector10;
				float3 temp_output_6309_0_g76880 = ( Blend_Albedo_Wetness6351_g76880 * Tint_Highlight_Color5771_g76880 );
				half3 Blend_Albedo_Subsurface149_g76880 = temp_output_6309_0_g76880;
				half3 Blend_Albedo_RimLight7316_g76880 = Blend_Albedo_Subsurface149_g76880;
				
				half Global_OverlayNormalScale6581_g76880 = TVE_OverlayNormalValue;
				float lerpResult6585_g76880 = lerp( 1.0 , Global_OverlayNormalScale6581_g76880 , Overlay_Mask269_g76880);
				half2 Blend_Normal_Overlay366_g76880 = ( Blend_Normal312_g76880 * lerpResult6585_g76880 );
				half Global_WetnessNormalScale6571_g76880 = TVE_WetnessNormalValue;
				float lerpResult6579_g76880 = lerp( 1.0 , Global_WetnessNormalScale6571_g76880 , ( Wetness_Value6343_g76880 * Wetness_Value6343_g76880 ));
				half2 Blend_Normal_Wetness6372_g76880 = ( Blend_Normal_Overlay366_g76880 * lerpResult6579_g76880 );
				float3 appendResult6568_g76880 = (float3(Blend_Normal_Wetness6372_g76880 , 1.0));
				float3 temp_output_13_0_g76911 = appendResult6568_g76880;
				float3 temp_output_33_0_g76911 = ( temp_output_13_0_g76911 * _render_normals );
				float3 switchResult12_g76911 = (((ase_vface>0)?(temp_output_13_0_g76911):(temp_output_33_0_g76911)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76880 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76880 = temp_output_7161_0_g76880;
				half2 Emissive_UVs2468_g76880 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77001 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77001).xxx;
				float temp_output_10_0_g77001 = ( _EmissiveTexMaxValue - temp_output_7_0_g77001 );
				half3 Emissive_Texture7022_g76880 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76880 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77001 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76880 = break456_g76910.x;
				float lerpResult4206_g76880 = lerp( 1.0 , Global_Extras_Emissive4203_g76880 , _GlobalEmissive);
				half Emissive_Value7024_g76880 = ( ( lerpResult4206_g76880 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76880 = saturate( ( Emissive_Texture7022_g76880 + Emissive_Value7024_g76880 ) );
				float3 temp_output_3_0_g77003 = ( Emissive_Color7162_g76880 * Emissive_Mask6968_g76880 );
				float temp_output_15_0_g77003 = _emissive_intensity_value;
				float3 temp_output_23_0_g77003 = ( temp_output_3_0_g77003 * temp_output_15_0_g77003 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76880 = temp_output_23_0_g77003;
				#else
				float3 staticSwitch7687_g76880 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76880 = staticSwitch7687_g76880;
				
				half Main_Metallic237_g76880 = ( tex2DNode35_g76880.r * _MainMetallicValue );
				half Second_Metallic226_g76880 = ( tex2DNode33_g76880.r * _SecondMetallicValue );
				float lerpResult278_g76880 = lerp( Main_Metallic237_g76880 , Second_Metallic226_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch299_g76880 = lerpResult278_g76880;
				#else
				float staticSwitch299_g76880 = Main_Metallic237_g76880;
				#endif
				half Blend_Metallic306_g76880 = staticSwitch299_g76880;
				float lerpResult342_g76880 = lerp( Blend_Metallic306_g76880 , 0.0 , Overlay_Mask269_g76880);
				half Blend_Metallic_Overlay367_g76880 = lerpResult342_g76880;
				
				float lerpResult240_g76880 = lerp( 1.0 , tex2DNode35_g76880.g , _MainOcclusionValue);
				half Main_Occlusion247_g76880 = lerpResult240_g76880;
				float lerpResult239_g76880 = lerp( 1.0 , tex2DNode33_g76880.g , _SecondOcclusionValue);
				half Second_Occlusion251_g76880 = lerpResult239_g76880;
				float lerpResult294_g76880 = lerp( Main_Occlusion247_g76880 , Second_Occlusion251_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch310_g76880 = lerpResult294_g76880;
				#else
				float staticSwitch310_g76880 = Main_Occlusion247_g76880;
				#endif
				half Blend_Occlusion323_g76880 = staticSwitch310_g76880;
				
				half Main_Smoothness227_g76880 = ( tex2DNode35_g76880.a * _MainSmoothnessValue );
				half Second_Smoothness236_g76880 = ( tex2DNode33_g76880.a * _SecondSmoothnessValue );
				float lerpResult266_g76880 = lerp( Main_Smoothness227_g76880 , Second_Smoothness236_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch297_g76880 = lerpResult266_g76880;
				#else
				float staticSwitch297_g76880 = Main_Smoothness227_g76880;
				#endif
				half Blend_Smoothness314_g76880 = staticSwitch297_g76880;
				half Global_OverlaySmoothness311_g76880 = TVE_OverlaySmoothness;
				float lerpResult343_g76880 = lerp( Blend_Smoothness314_g76880 , Global_OverlaySmoothness311_g76880 , Overlay_Mask269_g76880);
				half Blend_Smoothness_Overlay371_g76880 = lerpResult343_g76880;
				float temp_output_6499_0_g76880 = ( 1.0 - Wetness_Value6343_g76880 );
				half Blend_Smoothness_Wetness4130_g76880 = saturate( ( Blend_Smoothness_Overlay371_g76880 + ( 1.0 - ( temp_output_6499_0_g76880 * temp_output_6499_0_g76880 ) ) ) );
				
				float localCustomAlphaClip19_g76983 = ( 0.0 );
				half Main_Alpha316_g76880 = tex2DNode29_g76880.a;
				half Second_Alpha5007_g76880 = tex2DNode89_g76880.a;
				float lerpResult6153_g76880 = lerp( Main_Alpha316_g76880 , Second_Alpha5007_g76880 , Blend_Mask147_g76880);
				float lerpResult6785_g76880 = lerp( ( Main_Alpha316_g76880 * Second_Alpha5007_g76880 ) , lerpResult6153_g76880 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76880 = lerpResult6785_g76880;
				#else
				float staticSwitch6158_g76880 = Main_Alpha316_g76880;
				#endif
				half Blend_Alpha6157_g76880 = staticSwitch6158_g76880;
				half AlphaTreshold2132_g76880 = _AlphaClipValue;
				half Global_Alpha315_g76880 = 1.0;
				half Fade_Effects_A5360_g76880 = 1.0;
				float temp_output_7_0_g76933 = TVE_CameraFadeMin;
				float temp_output_10_0_g76933 = ( TVE_CameraFadeMax - temp_output_7_0_g76933 );
				float lerpResult4755_g76880 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76933 ) / ( temp_output_10_0_g76933 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76880 = lerpResult4755_g76880;
				half Fade_Effects_B6228_g76880 = ( Fade_Effects_A5360_g76880 * Fade_Camera3743_g76880 );
				float lerpResult6866_g76880 = lerp( ( 1.0 - Blend_Mask147_g76880 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76880 = lerpResult6866_g76880;
				#else
				float staticSwitch6612_g76880 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76880 = staticSwitch6612_g76880;
				half Fade_Mask5149_g76880 = ( 1.0 * Blend_Mask_Invert6260_g76880 );
				float lerpResult5141_g76880 = lerp( 1.0 , ( Fade_Effects_B6228_g76880 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76880);
				half Fade_Effects_C7653_g76880 = lerpResult5141_g76880;
				float temp_output_5865_0_g76880 = saturate( ( Fade_Effects_C7653_g76880 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76880 ) ).r ) );
				half Fade_Alpha3727_g76880 = temp_output_5865_0_g76880;
				half Final_Alpha7344_g76880 = min( ( ( Blend_Alpha6157_g76880 - AlphaTreshold2132_g76880 ) * Global_Alpha315_g76880 ) , Fade_Alpha3727_g76880 );
				float temp_output_3_0_g76983 = Final_Alpha7344_g76880;
				float Alpha19_g76983 = temp_output_3_0_g76983;
				float temp_output_15_0_g76983 = 0.01;
				float Treshold19_g76983 = temp_output_15_0_g76983;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#else
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76880 = (lerpResult7654_g76880).a;
				half Second_Color_Alpha6152_g76880 = (lerpResult7662_g76880).a;
				float lerpResult6168_g76880 = lerp( Main_Color_Alpha6121_g76880 , Second_Color_Alpha6152_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76880 = lerpResult6168_g76880;
				#else
				float staticSwitch6174_g76880 = Main_Color_Alpha6121_g76880;
				#endif
				half Blend_Color_Alpha6167_g76880 = staticSwitch6174_g76880;
				half Final_Clip914_g76880 = saturate( ( Alpha19_g76983 * Blend_Color_Alpha6167_g76880 ) );
				
				half3 Subsurface_Color1722_g76880 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g76880 );
				half Global_Subsurface4041_g76880 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g76880 = TVE_OverlaySubsurface;
				float lerpResult7362_g76880 = lerp( 1.0 , Global_OverlaySubsurface5667_g76880 , Overlay_Value5738_g76880);
				half Overlay_Subsurface7361_g76880 = lerpResult7362_g76880;
				half Subsurface_Intensity1752_g76880 = ( _SubsurfaceValue * Global_Subsurface4041_g76880 * Overlay_Subsurface7361_g76880 );
				half Subsurface_Mask1557_g76880 = 1.0;
				half3 Subsurface_Translucency884_g76880 = ( Subsurface_Color1722_g76880 * Subsurface_Intensity1752_g76880 * Subsurface_Mask1557_g76880 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76880;
				o.Normal = switchResult12_g76911;
				o.Emission = Final_Emissive2476_g76880;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = fixed3( 0, 0, 0 );
					#else
						o.Metallic = Blend_Metallic_Overlay367_g76880;
					#endif
					o.Occlusion = Blend_Occlusion323_g76880;
					o.Smoothness = Blend_Smoothness_Wetness4130_g76880;
				#endif

				o.Alpha = Final_Clip914_g76880;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g76880;

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
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_PROP_SHADER
			#define TVE_IS_SUBSURFACE_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
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
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_coverage;
			uniform float _IsPropShader;
			uniform half _IsSubsurfaceShader;
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
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			SamplerState sampler_Linear_Repeat;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform float3 TVE_WorldOrigin;
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
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _VertexPivotMode;
			uniform half _ColorsPositionMode;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _VertexOcclusionColorsMode;
			uniform half TVE_IsEnabled;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _VertexDynamicMode;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
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
			uniform half _MainMetallicValue;
			uniform half _SecondMetallicValue;
			uniform half _MainOcclusionValue;
			uniform half _SecondOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half _SecondSmoothnessValue;
			uniform half TVE_OverlaySmoothness;
			uniform half _DetailAlphaMode;
			uniform half _AlphaClipValue;
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			uniform half _DetailFadeMode;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceValue;
			uniform half TVE_SubsurfaceValue;
			uniform half TVE_OverlaySubsurface;


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g76880 = v.vertex.xyz;
				float3 Final_VertexPosition890_g76880 = ( VertexPosition3588_g76880 + _DisableSRPBatcher );
				
				float4 break33_g77000 = _second_uvs_mode;
				float2 temp_output_30_0_g77000 = ( v.ase_texcoord.xy * break33_g77000.x );
				float2 appendResult21_g76995 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76880 = appendResult21_g76995;
				float2 temp_output_29_0_g77000 = ( Mesh_DetailCoord3_g76880 * break33_g77000.y );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76880 = ase_worldPos;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 WorldPosition_Shifted7477_g76880 = ( WorldPosition3905_g76880 - TVE_WorldOrigin );
				float2 temp_output_31_0_g77000 = ( (WorldPosition_Shifted7477_g76880).xz * break33_g77000.z );
				half2 Second_UVs_Tilling7609_g76880 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76880 = ( 1.0 / Second_UVs_Tilling7609_g76880 );
				float2 lerpResult7614_g76880 = lerp( Second_UVs_Tilling7609_g76880 , Second_UVs_Scale7610_g76880 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76880 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76906 = ( ( ( temp_output_30_0_g77000 + temp_output_29_0_g77000 + temp_output_31_0_g77000 ) * lerpResult7614_g76880 ) + Second_UVs_Offset7605_g76880 );
				o.ase_texcoord10.xy = vertexToFrag11_g76906;
				o.ase_texcoord11.xyz = vertexToFrag3890_g76880;
				float4x4 break19_g76936 = unity_ObjectToWorld;
				float3 appendResult20_g76936 = (float3(break19_g76936[ 0 ][ 3 ] , break19_g76936[ 1 ][ 3 ] , break19_g76936[ 2 ][ 3 ]));
				float3 appendResult60_g76890 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76880 = ( appendResult60_g76890 * _VertexPivotMode );
				float3 temp_output_122_0_g76936 = Mesh_PivotsData2831_g76880;
				float3 PivotsOnly105_g76936 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76936 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76938 = ( appendResult20_g76936 + PivotsOnly105_g76936 );
				half3 WorldData19_g76938 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76938 = WorldData19_g76938;
				#else
				float3 staticSwitch14_g76938 = ObjectData20_g76938;
				#endif
				float3 temp_output_114_0_g76936 = staticSwitch14_g76938;
				float3 vertexToFrag4224_g76880 = temp_output_114_0_g76936;
				o.ase_texcoord12.xyz = vertexToFrag4224_g76880;
				
				o.ase_texcoord9 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g76880;
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
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

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
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
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


				half2 Main_UVs15_g76880 = ( ( IN.ase_texcoord9.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76880 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76880 );
				float3 lerpResult6223_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76880).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76880 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				half Main_Mask57_g76880 = tex2DNode35_g76880.b;
				float clampResult17_g76985 = clamp( Main_Mask57_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76986 = _MainMaskMinValue;
				float temp_output_10_0_g76986 = ( _MainMaskMaxValue - temp_output_7_0_g76986 );
				half Main_Mask_Remap5765_g76880 = saturate( ( ( clampResult17_g76985 - temp_output_7_0_g76986 ) / ( temp_output_10_0_g76986 + 0.0001 ) ) );
				float lerpResult7671_g76880 = lerp( 1.0 , Main_Mask_Remap5765_g76880 , _MainColorMode);
				float4 lerpResult7654_g76880 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76880);
				half3 Main_Color_RGB7657_g76880 = (lerpResult7654_g76880).rgb;
				half3 Main_Albedo99_g76880 = ( lerpResult6223_g76880 * Main_Color_RGB7657_g76880 );
				float2 vertexToFrag11_g76906 = IN.ase_texcoord10.xy;
				half2 Second_UVs17_g76880 = vertexToFrag11_g76906;
				float4 tex2DNode89_g76880 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76880 );
				float3 lerpResult6225_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76880).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76880 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				half Second_Mask81_g76880 = tex2DNode33_g76880.b;
				float clampResult17_g76988 = clamp( Second_Mask81_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76989 = _SecondMaskMinValue;
				float temp_output_10_0_g76989 = ( _SecondMaskMaxValue - temp_output_7_0_g76989 );
				half Second_Mask_Remap6130_g76880 = saturate( ( ( clampResult17_g76988 - temp_output_7_0_g76989 ) / ( temp_output_10_0_g76989 + 0.0001 ) ) );
				float lerpResult7672_g76880 = lerp( 1.0 , Second_Mask_Remap6130_g76880 , _SecondColorMode);
				float4 lerpResult7662_g76880 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76880);
				half3 Second_Color_RGB7663_g76880 = (lerpResult7662_g76880).rgb;
				half3 Second_Albedo153_g76880 = ( lerpResult6225_g76880 * Second_Color_RGB7663_g76880 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76922 = 2.0;
				#else
				float staticSwitch1_g76922 = 4.594794;
				#endif
				float3 lerpResult4834_g76880 = lerp( ( Main_Albedo99_g76880 * Second_Albedo153_g76880 * staticSwitch1_g76922 ) , Second_Albedo153_g76880 , _DetailBlendMode);
				float lerpResult6885_g76880 = lerp( Main_Mask57_g76880 , Second_Mask81_g76880 , _DetailMaskMode);
				float clampResult17_g76958 = clamp( lerpResult6885_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76957 = _DetailMaskMinValue;
				float temp_output_10_0_g76957 = ( _DetailMaskMaxValue - temp_output_7_0_g76957 );
				half Blend_Mask_Texture6794_g76880 = saturate( ( ( clampResult17_g76958 - temp_output_7_0_g76957 ) / ( temp_output_10_0_g76957 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76880 = IN.ase_color.b;
				half4 Normal_Packed45_g76984 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				float2 appendResult58_g76984 = (float2(( (Normal_Packed45_g76984).x * (Normal_Packed45_g76984).w ) , (Normal_Packed45_g76984).y));
				half2 Normal_Default50_g76984 = appendResult58_g76984;
				half2 Normal_ASTC41_g76984 = (Normal_Packed45_g76984).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76984 = Normal_ASTC41_g76984;
				#else
				float2 staticSwitch38_g76984 = Normal_Default50_g76984;
				#endif
				half2 Normal_NO_DTX544_g76984 = (Normal_Packed45_g76984).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76984 = Normal_NO_DTX544_g76984;
				#else
				float2 staticSwitch37_g76984 = staticSwitch38_g76984;
				#endif
				float2 temp_output_6555_0_g76880 = ( (staticSwitch37_g76984*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76880 = (float3(temp_output_6555_0_g76880 , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal7389_g76880 = appendResult7388_g76880;
				float3 worldNormal7389_g76880 = float3(dot(tanToWorld0,tanNormal7389_g76880), dot(tanToWorld1,tanNormal7389_g76880), dot(tanToWorld2,tanNormal7389_g76880));
				half3 Main_NormalWS7390_g76880 = worldNormal7389_g76880;
				float lerpResult6884_g76880 = lerp( Mesh_DetailMask90_g76880 , ((Main_NormalWS7390_g76880).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76956 = clamp( lerpResult6884_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76955 = _DetailMeshMinValue;
				float temp_output_10_0_g76955 = ( _DetailMeshMaxValue - temp_output_7_0_g76955 );
				half Blend_Mask_Mesh1540_g76880 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76955 ) / ( temp_output_10_0_g76955 + 0.0001 ) ) );
				float clampResult17_g76966 = clamp( ( Blend_Mask_Texture6794_g76880 * Blend_Mask_Mesh1540_g76880 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g76981 = _DetailBlendMinValue;
				float temp_output_10_0_g76981 = ( _DetailBlendMaxValue - temp_output_7_0_g76981 );
				half Blend_Mask147_g76880 = ( saturate( ( ( clampResult17_g76966 - temp_output_7_0_g76981 ) / ( temp_output_10_0_g76981 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76880 = lerp( Main_Albedo99_g76880 , lerpResult4834_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76880 = lerpResult235_g76880;
				#else
				float3 staticSwitch255_g76880 = Main_Albedo99_g76880;
				#endif
				half3 Blend_Albedo265_g76880 = staticSwitch255_g76880;
				half3 Tint_Gradient_Color5769_g76880 = float3(1,1,1);
				half3 Tint_Noise_Color5770_g76880 = float3(1,1,1);
				float Mesh_Occlusion318_g76880 = IN.ase_color.g;
				float clampResult17_g76928 = clamp( Mesh_Occlusion318_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76934 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76934 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76934 );
				half Occlusion_Mask6432_g76880 = saturate( ( ( clampResult17_g76928 - temp_output_7_0_g76934 ) / ( temp_output_10_0_g76934 + 0.0001 ) ) );
				float3 lerpResult2945_g76880 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76880);
				half3 Occlusion_Color648_g76880 = lerpResult2945_g76880;
				half3 Matcap_Color7428_g76880 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76880 = ( ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 * Occlusion_Color648_g76880 ) + Matcap_Color7428_g76880 );
				float3 temp_output_3_0_g76926 = Blend_Albedo_Tinted2808_g76880;
				float dotResult20_g76926 = dot( temp_output_3_0_g76926 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76880 = dotResult20_g76926;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76880).xxx;
				float temp_output_82_0_g76901 = _LayerColorsValue;
				float temp_output_19_0_g76905 = TVE_ColorsUsage[(int)temp_output_82_0_g76901];
				float4 temp_output_91_19_g76901 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76880 = IN.ase_texcoord11.xyz;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 vertexToFrag4224_g76880 = IN.ase_texcoord12.xyz;
				float3 ObjectPosition4223_g76880 = vertexToFrag4224_g76880;
				float3 lerpResult4822_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ColorsPositionMode);
				half2 UV94_g76901 = ( (temp_output_91_19_g76901).zw + ( (temp_output_91_19_g76901).xy * (lerpResult4822_g76880).xz ) );
				float4 tex2DArrayNode83_g76901 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76901,temp_output_82_0_g76901), 0.0 );
				float4 temp_output_17_0_g76905 = tex2DArrayNode83_g76901;
				float4 temp_output_92_86_g76901 = TVE_ColorsParams;
				float4 temp_output_3_0_g76905 = temp_output_92_86_g76901;
				float4 ifLocalVar18_g76905 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76905 >= 0.5 )
				ifLocalVar18_g76905 = temp_output_17_0_g76905;
				else
				ifLocalVar18_g76905 = temp_output_3_0_g76905;
				float4 lerpResult22_g76905 = lerp( temp_output_3_0_g76905 , temp_output_17_0_g76905 , temp_output_19_0_g76905);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76905 = lerpResult22_g76905;
				#else
				float4 staticSwitch24_g76905 = ifLocalVar18_g76905;
				#endif
				half4 Global_Colors_Params5434_g76880 = staticSwitch24_g76905;
				float4 temp_output_346_0_g76887 = Global_Colors_Params5434_g76880;
				half Global_Colors_A1701_g76880 = saturate( (temp_output_346_0_g76887).w );
				half Colors_Influence3668_g76880 = Global_Colors_A1701_g76880;
				float temp_output_6306_0_g76880 = ( 1.0 - Colors_Influence3668_g76880 );
				float3 lerpResult3618_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76880 * temp_output_6306_0_g76880 ) ));
				half3 Global_Colors_RGB1700_g76880 = (temp_output_346_0_g76887).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76918 = 2.0;
				#else
				float staticSwitch1_g76918 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76880 = ( Global_Colors_RGB1700_g76880 * staticSwitch1_g76918 * _ColorsIntensityValue );
				float lerpResult6617_g76880 = lerp( Main_Mask_Remap5765_g76880 , Second_Mask_Remap6130_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76880 = lerpResult6617_g76880;
				#else
				float staticSwitch6623_g76880 = Main_Mask_Remap5765_g76880;
				#endif
				half Blend_Mask_Remap6621_g76880 = staticSwitch6623_g76880;
				float lerpResult7679_g76880 = lerp( 1.0 , Blend_Mask_Remap6621_g76880 , _ColorsMaskValue);
				half Colors_Value3692_g76880 = ( lerpResult7679_g76880 * _GlobalColors );
				half Colors_Variation3650_g76880 = 1.0;
				half Occlusion_Alpha6463_g76880 = _VertexOcclusionColor.a;
				float lerpResult6459_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult6459_g76880);
				half Occlusion_Colors6450_g76880 = lerpResult6461_g76880;
				float3 temp_output_3_0_g76927 = ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 );
				float dotResult20_g76927 = dot( temp_output_3_0_g76927 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76880 = clamp( saturate( ( dotResult20_g76927 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76880 = clampResult6740_g76880;
				float temp_output_7_0_g76964 = 0.1;
				float temp_output_10_0_g76964 = ( 0.2 - temp_output_7_0_g76964 );
				float lerpResult16_g76919 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76880 * Colors_Influence3668_g76880 * Colors_Variation3650_g76880 * Occlusion_Colors6450_g76880 * Blend_Albedo_Globals6410_g76880 ) - temp_output_7_0_g76964 ) / ( temp_output_10_0_g76964 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , ( lerpResult3618_g76880 * Colors_RGB1954_g76880 ) , lerpResult16_g76919);
				half3 Blend_Albedo_Colored_High6027_g76880 = lerpResult3628_g76880;
				half3 Blend_Albedo_Colored863_g76880 = Blend_Albedo_Colored_High6027_g76880;
				half3 Global_OverlayColor1758_g76880 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76896 = _LayerExtrasValue;
				float temp_output_19_0_g76900 = TVE_ExtrasUsage[(int)temp_output_84_0_g76896];
				float4 temp_output_93_19_g76896 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ExtrasPositionMode);
				half2 UV96_g76896 = ( (temp_output_93_19_g76896).zw + ( (temp_output_93_19_g76896).xy * (lerpResult4827_g76880).xz ) );
				float4 tex2DArrayNode48_g76896 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76896,temp_output_84_0_g76896), 0.0 );
				float4 temp_output_17_0_g76900 = tex2DArrayNode48_g76896;
				float4 temp_output_94_85_g76896 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76900 = temp_output_94_85_g76896;
				float4 ifLocalVar18_g76900 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76900 >= 0.5 )
				ifLocalVar18_g76900 = temp_output_17_0_g76900;
				else
				ifLocalVar18_g76900 = temp_output_3_0_g76900;
				float4 lerpResult22_g76900 = lerp( temp_output_3_0_g76900 , temp_output_17_0_g76900 , temp_output_19_0_g76900);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76900 = lerpResult22_g76900;
				#else
				float4 staticSwitch24_g76900 = ifLocalVar18_g76900;
				#endif
				half4 Global_Extras_Params5440_g76880 = staticSwitch24_g76900;
				float4 break456_g76910 = Global_Extras_Params5440_g76880;
				half Global_Extras_Overlay156_g76880 = break456_g76910.z;
				half Overlay_Variation4560_g76880 = 1.0;
				half Overlay_Value5738_g76880 = ( _GlobalOverlay * Global_Extras_Overlay156_g76880 * Overlay_Variation4560_g76880 );
				half2 Main_Normal137_g76880 = temp_output_6555_0_g76880;
				float2 lerpResult3372_g76880 = lerp( float2( 0,0 ) , Main_Normal137_g76880 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				half4 Normal_Packed45_g76987 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				float2 appendResult58_g76987 = (float2(( (Normal_Packed45_g76987).x * (Normal_Packed45_g76987).w ) , (Normal_Packed45_g76987).y));
				half2 Normal_Default50_g76987 = appendResult58_g76987;
				half2 Normal_ASTC41_g76987 = (Normal_Packed45_g76987).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76987 = Normal_ASTC41_g76987;
				#else
				float2 staticSwitch38_g76987 = Normal_Default50_g76987;
				#endif
				half2 Normal_NO_DTX544_g76987 = (Normal_Packed45_g76987).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76987 = Normal_NO_DTX544_g76987;
				#else
				float2 staticSwitch37_g76987 = staticSwitch38_g76987;
				#endif
				float2 temp_output_6560_0_g76880 = ( (staticSwitch37_g76987*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g76990 = temp_output_6560_0_g76880;
				float2 break64_g76990 = Normal_Planar45_g76990;
				float3 appendResult65_g76990 = (float3(break64_g76990.x , 0.0 , break64_g76990.y));
				float2 temp_output_7603_0_g76880 = (mul( ase_worldToTangent, appendResult65_g76990 )).xy;
				float2 ifLocalVar7604_g76880 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76880 = temp_output_7603_0_g76880;
				else
				ifLocalVar7604_g76880 = temp_output_6560_0_g76880;
				half2 Second_Normal179_g76880 = ifLocalVar7604_g76880;
				float2 temp_output_36_0_g76923 = ( lerpResult3372_g76880 + Second_Normal179_g76880 );
				float2 lerpResult3376_g76880 = lerp( Main_Normal137_g76880 , temp_output_36_0_g76923 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76880 = lerpResult3376_g76880;
				#else
				float2 staticSwitch267_g76880 = Main_Normal137_g76880;
				#endif
				half2 Blend_Normal312_g76880 = staticSwitch267_g76880;
				float3 appendResult7377_g76880 = (float3(Blend_Normal312_g76880 , 1.0));
				float3 tanNormal7376_g76880 = appendResult7377_g76880;
				float3 worldNormal7376_g76880 = float3(dot(tanToWorld0,tanNormal7376_g76880), dot(tanToWorld1,tanNormal7376_g76880), dot(tanToWorld2,tanNormal7376_g76880));
				half3 Blend_NormalWS7375_g76880 = worldNormal7376_g76880;
				half Vertex_DynamicMode5112_g76880 = _VertexDynamicMode;
				float lerpResult7446_g76880 = lerp( (Blend_NormalWS7375_g76880).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76880);
				float lerpResult6757_g76880 = lerp( 1.0 , saturate( lerpResult7446_g76880 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76880 = lerpResult6757_g76880;
				half Overlay_Shading6688_g76880 = Blend_Albedo_Globals6410_g76880;
				half Overlay_Custom6707_g76880 = 1.0;
				float lerpResult7693_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult7693_g76880);
				half Occlusion_Overlay6471_g76880 = lerpResult6467_g76880;
				float temp_output_7_0_g76932 = 0.1;
				float temp_output_10_0_g76932 = ( 0.2 - temp_output_7_0_g76932 );
				half Overlay_Mask_High6064_g76880 = saturate( ( ( ( Overlay_Value5738_g76880 * Overlay_Projection6081_g76880 * Overlay_Shading6688_g76880 * Overlay_Custom6707_g76880 * Occlusion_Overlay6471_g76880 ) - temp_output_7_0_g76932 ) / ( temp_output_10_0_g76932 + 0.0001 ) ) );
				half Overlay_Mask269_g76880 = Overlay_Mask_High6064_g76880;
				float3 lerpResult336_g76880 = lerp( Blend_Albedo_Colored863_g76880 , Global_OverlayColor1758_g76880 , Overlay_Mask269_g76880);
				half3 Blend_Albedo_Overlay359_g76880 = lerpResult336_g76880;
				half Global_WetnessContrast6502_g76880 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76880 = break456_g76910.y;
				half Wetness_Value6343_g76880 = ( Global_Extras_Wetness305_g76880 * _GlobalWetness );
				float3 lerpResult6367_g76880 = lerp( Blend_Albedo_Overlay359_g76880 , ( Blend_Albedo_Overlay359_g76880 * Blend_Albedo_Overlay359_g76880 ) , ( Global_WetnessContrast6502_g76880 * Wetness_Value6343_g76880 ));
				half3 Blend_Albedo_Wetness6351_g76880 = lerpResult6367_g76880;
				float3 _Vector10 = float3(1,1,1);
				half3 Tint_Highlight_Color5771_g76880 = _Vector10;
				float3 temp_output_6309_0_g76880 = ( Blend_Albedo_Wetness6351_g76880 * Tint_Highlight_Color5771_g76880 );
				half3 Blend_Albedo_Subsurface149_g76880 = temp_output_6309_0_g76880;
				half3 Blend_Albedo_RimLight7316_g76880 = Blend_Albedo_Subsurface149_g76880;
				
				half Global_OverlayNormalScale6581_g76880 = TVE_OverlayNormalValue;
				float lerpResult6585_g76880 = lerp( 1.0 , Global_OverlayNormalScale6581_g76880 , Overlay_Mask269_g76880);
				half2 Blend_Normal_Overlay366_g76880 = ( Blend_Normal312_g76880 * lerpResult6585_g76880 );
				half Global_WetnessNormalScale6571_g76880 = TVE_WetnessNormalValue;
				float lerpResult6579_g76880 = lerp( 1.0 , Global_WetnessNormalScale6571_g76880 , ( Wetness_Value6343_g76880 * Wetness_Value6343_g76880 ));
				half2 Blend_Normal_Wetness6372_g76880 = ( Blend_Normal_Overlay366_g76880 * lerpResult6579_g76880 );
				float3 appendResult6568_g76880 = (float3(Blend_Normal_Wetness6372_g76880 , 1.0));
				float3 temp_output_13_0_g76911 = appendResult6568_g76880;
				float3 temp_output_33_0_g76911 = ( temp_output_13_0_g76911 * _render_normals );
				float3 switchResult12_g76911 = (((ase_vface>0)?(temp_output_13_0_g76911):(temp_output_33_0_g76911)));
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76880 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76880 = temp_output_7161_0_g76880;
				half2 Emissive_UVs2468_g76880 = ( ( IN.ase_texcoord9.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77001 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77001).xxx;
				float temp_output_10_0_g77001 = ( _EmissiveTexMaxValue - temp_output_7_0_g77001 );
				half3 Emissive_Texture7022_g76880 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76880 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77001 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76880 = break456_g76910.x;
				float lerpResult4206_g76880 = lerp( 1.0 , Global_Extras_Emissive4203_g76880 , _GlobalEmissive);
				half Emissive_Value7024_g76880 = ( ( lerpResult4206_g76880 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76880 = saturate( ( Emissive_Texture7022_g76880 + Emissive_Value7024_g76880 ) );
				float3 temp_output_3_0_g77003 = ( Emissive_Color7162_g76880 * Emissive_Mask6968_g76880 );
				float temp_output_15_0_g77003 = _emissive_intensity_value;
				float3 temp_output_23_0_g77003 = ( temp_output_3_0_g77003 * temp_output_15_0_g77003 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76880 = temp_output_23_0_g77003;
				#else
				float3 staticSwitch7687_g76880 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76880 = staticSwitch7687_g76880;
				
				half Main_Metallic237_g76880 = ( tex2DNode35_g76880.r * _MainMetallicValue );
				half Second_Metallic226_g76880 = ( tex2DNode33_g76880.r * _SecondMetallicValue );
				float lerpResult278_g76880 = lerp( Main_Metallic237_g76880 , Second_Metallic226_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch299_g76880 = lerpResult278_g76880;
				#else
				float staticSwitch299_g76880 = Main_Metallic237_g76880;
				#endif
				half Blend_Metallic306_g76880 = staticSwitch299_g76880;
				float lerpResult342_g76880 = lerp( Blend_Metallic306_g76880 , 0.0 , Overlay_Mask269_g76880);
				half Blend_Metallic_Overlay367_g76880 = lerpResult342_g76880;
				
				float lerpResult240_g76880 = lerp( 1.0 , tex2DNode35_g76880.g , _MainOcclusionValue);
				half Main_Occlusion247_g76880 = lerpResult240_g76880;
				float lerpResult239_g76880 = lerp( 1.0 , tex2DNode33_g76880.g , _SecondOcclusionValue);
				half Second_Occlusion251_g76880 = lerpResult239_g76880;
				float lerpResult294_g76880 = lerp( Main_Occlusion247_g76880 , Second_Occlusion251_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch310_g76880 = lerpResult294_g76880;
				#else
				float staticSwitch310_g76880 = Main_Occlusion247_g76880;
				#endif
				half Blend_Occlusion323_g76880 = staticSwitch310_g76880;
				
				half Main_Smoothness227_g76880 = ( tex2DNode35_g76880.a * _MainSmoothnessValue );
				half Second_Smoothness236_g76880 = ( tex2DNode33_g76880.a * _SecondSmoothnessValue );
				float lerpResult266_g76880 = lerp( Main_Smoothness227_g76880 , Second_Smoothness236_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch297_g76880 = lerpResult266_g76880;
				#else
				float staticSwitch297_g76880 = Main_Smoothness227_g76880;
				#endif
				half Blend_Smoothness314_g76880 = staticSwitch297_g76880;
				half Global_OverlaySmoothness311_g76880 = TVE_OverlaySmoothness;
				float lerpResult343_g76880 = lerp( Blend_Smoothness314_g76880 , Global_OverlaySmoothness311_g76880 , Overlay_Mask269_g76880);
				half Blend_Smoothness_Overlay371_g76880 = lerpResult343_g76880;
				float temp_output_6499_0_g76880 = ( 1.0 - Wetness_Value6343_g76880 );
				half Blend_Smoothness_Wetness4130_g76880 = saturate( ( Blend_Smoothness_Overlay371_g76880 + ( 1.0 - ( temp_output_6499_0_g76880 * temp_output_6499_0_g76880 ) ) ) );
				
				float localCustomAlphaClip19_g76983 = ( 0.0 );
				half Main_Alpha316_g76880 = tex2DNode29_g76880.a;
				half Second_Alpha5007_g76880 = tex2DNode89_g76880.a;
				float lerpResult6153_g76880 = lerp( Main_Alpha316_g76880 , Second_Alpha5007_g76880 , Blend_Mask147_g76880);
				float lerpResult6785_g76880 = lerp( ( Main_Alpha316_g76880 * Second_Alpha5007_g76880 ) , lerpResult6153_g76880 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76880 = lerpResult6785_g76880;
				#else
				float staticSwitch6158_g76880 = Main_Alpha316_g76880;
				#endif
				half Blend_Alpha6157_g76880 = staticSwitch6158_g76880;
				half AlphaTreshold2132_g76880 = _AlphaClipValue;
				half Global_Alpha315_g76880 = 1.0;
				half Fade_Effects_A5360_g76880 = 1.0;
				float temp_output_7_0_g76933 = TVE_CameraFadeMin;
				float temp_output_10_0_g76933 = ( TVE_CameraFadeMax - temp_output_7_0_g76933 );
				float lerpResult4755_g76880 = lerp( 1.0 , saturate( saturate( ( ( distance( worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76933 ) / ( temp_output_10_0_g76933 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76880 = lerpResult4755_g76880;
				half Fade_Effects_B6228_g76880 = ( Fade_Effects_A5360_g76880 * Fade_Camera3743_g76880 );
				float lerpResult6866_g76880 = lerp( ( 1.0 - Blend_Mask147_g76880 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76880 = lerpResult6866_g76880;
				#else
				float staticSwitch6612_g76880 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76880 = staticSwitch6612_g76880;
				half Fade_Mask5149_g76880 = ( 1.0 * Blend_Mask_Invert6260_g76880 );
				float lerpResult5141_g76880 = lerp( 1.0 , ( Fade_Effects_B6228_g76880 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76880);
				half Fade_Effects_C7653_g76880 = lerpResult5141_g76880;
				float temp_output_5865_0_g76880 = saturate( ( Fade_Effects_C7653_g76880 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76880 ) ).r ) );
				half Fade_Alpha3727_g76880 = temp_output_5865_0_g76880;
				half Final_Alpha7344_g76880 = min( ( ( Blend_Alpha6157_g76880 - AlphaTreshold2132_g76880 ) * Global_Alpha315_g76880 ) , Fade_Alpha3727_g76880 );
				float temp_output_3_0_g76983 = Final_Alpha7344_g76880;
				float Alpha19_g76983 = temp_output_3_0_g76983;
				float temp_output_15_0_g76983 = 0.01;
				float Treshold19_g76983 = temp_output_15_0_g76983;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#else
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76880 = (lerpResult7654_g76880).a;
				half Second_Color_Alpha6152_g76880 = (lerpResult7662_g76880).a;
				float lerpResult6168_g76880 = lerp( Main_Color_Alpha6121_g76880 , Second_Color_Alpha6152_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76880 = lerpResult6168_g76880;
				#else
				float staticSwitch6174_g76880 = Main_Color_Alpha6121_g76880;
				#endif
				half Blend_Color_Alpha6167_g76880 = staticSwitch6174_g76880;
				half Final_Clip914_g76880 = saturate( ( Alpha19_g76983 * Blend_Color_Alpha6167_g76880 ) );
				
				half3 Subsurface_Color1722_g76880 = ( (_SubsurfaceColor).rgb * Blend_Albedo_Wetness6351_g76880 );
				half Global_Subsurface4041_g76880 = TVE_SubsurfaceValue;
				half Global_OverlaySubsurface5667_g76880 = TVE_OverlaySubsurface;
				float lerpResult7362_g76880 = lerp( 1.0 , Global_OverlaySubsurface5667_g76880 , Overlay_Value5738_g76880);
				half Overlay_Subsurface7361_g76880 = lerpResult7362_g76880;
				half Subsurface_Intensity1752_g76880 = ( _SubsurfaceValue * Global_Subsurface4041_g76880 * Overlay_Subsurface7361_g76880 );
				half Subsurface_Mask1557_g76880 = 1.0;
				half3 Subsurface_Translucency884_g76880 = ( Subsurface_Color1722_g76880 * Subsurface_Intensity1752_g76880 * Subsurface_Mask1557_g76880 * 10.0 );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76880;
				o.Normal = switchResult12_g76911;
				o.Emission = Final_Emissive2476_g76880;

				#if defined(ASE_LIGHTING_SIMPLE)
					o.Specular = fixed3( 0, 0, 0 );
					o.Gloss = 0;
				#else
					#if defined(_SPECULAR_SETUP)
						o.Specular = fixed3( 0, 0, 0 );
					#else
						o.Metallic = Blend_Metallic_Overlay367_g76880;
					#endif
					o.Occlusion = Blend_Occlusion323_g76880;
					o.Smoothness = Blend_Smoothness_Wetness4130_g76880;
				#endif

				o.Alpha = Final_Clip914_g76880;
				float AlphaClipThreshold = 0.5;
				float3 Transmission = 1;
				float3 Translucency = Subsurface_Translucency884_g76880;

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
			#define TVE_IS_PROP_SHADER
			#define TVE_IS_SUBSURFACE_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
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
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_coverage;
			uniform float _IsPropShader;
			uniform half _IsSubsurfaceShader;
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
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			SamplerState sampler_Linear_Repeat;
			uniform half _MainMaskMinValue;
			uniform half _MainMaskMaxValue;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform float3 TVE_WorldOrigin;
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
			uniform half4 _VertexOcclusionColor;
			uniform half _VertexOcclusionMinValue;
			uniform half _VertexOcclusionMaxValue;
			uniform half _LayerColorsValue;
			uniform float TVE_ColorsUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
			uniform half4 TVE_ColorsCoords;
			uniform half _VertexPivotMode;
			uniform half _ColorsPositionMode;
			SamplerState sampler_Linear_Clamp;
			uniform half4 TVE_ColorsParams;
			uniform half _ColorsIntensityValue;
			uniform half _ColorsMaskValue;
			uniform half _GlobalColors;
			uniform half _VertexOcclusionColorsMode;
			uniform half TVE_IsEnabled;
			uniform half4 TVE_OverlayColor;
			uniform half _GlobalOverlay;
			uniform half _LayerExtrasValue;
			uniform float TVE_ExtrasUsage[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
			uniform half4 TVE_ExtrasCoords;
			uniform half _ExtrasPositionMode;
			uniform half4 TVE_ExtrasParams;
			uniform half _DetailNormalValue;
			uniform half _SecondUVsMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _VertexDynamicMode;
			uniform half _OverlayProjectionValue;
			uniform half _VertexOcclusionOverlayMode;
			uniform half TVE_WetnessContrast;
			uniform half _GlobalWetness;
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
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			uniform half _DetailFadeMode;
			UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_NoiseTex3D);
			uniform half TVE_NoiseTex3DTilling;


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g76880 = v.vertex.xyz;
				float3 Final_VertexPosition890_g76880 = ( VertexPosition3588_g76880 + _DisableSRPBatcher );
				
				float4 break33_g77000 = _second_uvs_mode;
				float2 temp_output_30_0_g77000 = ( v.ase_texcoord.xy * break33_g77000.x );
				float2 appendResult21_g76995 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76880 = appendResult21_g76995;
				float2 temp_output_29_0_g77000 = ( Mesh_DetailCoord3_g76880 * break33_g77000.y );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76880 = ase_worldPos;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 WorldPosition_Shifted7477_g76880 = ( WorldPosition3905_g76880 - TVE_WorldOrigin );
				float2 temp_output_31_0_g77000 = ( (WorldPosition_Shifted7477_g76880).xz * break33_g77000.z );
				half2 Second_UVs_Tilling7609_g76880 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76880 = ( 1.0 / Second_UVs_Tilling7609_g76880 );
				float2 lerpResult7614_g76880 = lerp( Second_UVs_Tilling7609_g76880 , Second_UVs_Scale7610_g76880 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76880 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76906 = ( ( ( temp_output_30_0_g77000 + temp_output_29_0_g77000 + temp_output_31_0_g77000 ) * lerpResult7614_g76880 ) + Second_UVs_Offset7605_g76880 );
				o.ase_texcoord4.xy = vertexToFrag11_g76906;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				o.ase_texcoord8.xyz = vertexToFrag3890_g76880;
				float4x4 break19_g76936 = unity_ObjectToWorld;
				float3 appendResult20_g76936 = (float3(break19_g76936[ 0 ][ 3 ] , break19_g76936[ 1 ][ 3 ] , break19_g76936[ 2 ][ 3 ]));
				float3 appendResult60_g76890 = (float3(v.ase_texcoord3.x , v.ase_texcoord3.z , v.ase_texcoord3.y));
				half3 Mesh_PivotsData2831_g76880 = ( appendResult60_g76890 * _VertexPivotMode );
				float3 temp_output_122_0_g76936 = Mesh_PivotsData2831_g76880;
				float3 PivotsOnly105_g76936 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76936 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76938 = ( appendResult20_g76936 + PivotsOnly105_g76936 );
				half3 WorldData19_g76938 = ase_worldPos;
				#ifdef TVE_FEATURE_BATCHING
				float3 staticSwitch14_g76938 = WorldData19_g76938;
				#else
				float3 staticSwitch14_g76938 = ObjectData20_g76938;
				#endif
				float3 temp_output_114_0_g76936 = staticSwitch14_g76938;
				float3 vertexToFrag4224_g76880 = temp_output_114_0_g76936;
				o.ase_texcoord9.xyz = vertexToFrag4224_g76880;
				
				o.ase_texcoord10.xyz = ase_worldPos;
				
				o.ase_texcoord3 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_normal = v.normal;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;
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
				float3 vertexValue = Final_VertexPosition890_g76880;
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
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;

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
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				o.ase_texcoord3 = v.ase_texcoord3;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
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

				half2 Main_UVs15_g76880 = ( ( IN.ase_texcoord3.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76880 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76880 );
				float3 lerpResult6223_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode29_g76880).rgb , _MainAlbedoValue);
				float4 tex2DNode35_g76880 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				half Main_Mask57_g76880 = tex2DNode35_g76880.b;
				float clampResult17_g76985 = clamp( Main_Mask57_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76986 = _MainMaskMinValue;
				float temp_output_10_0_g76986 = ( _MainMaskMaxValue - temp_output_7_0_g76986 );
				half Main_Mask_Remap5765_g76880 = saturate( ( ( clampResult17_g76985 - temp_output_7_0_g76986 ) / ( temp_output_10_0_g76986 + 0.0001 ) ) );
				float lerpResult7671_g76880 = lerp( 1.0 , Main_Mask_Remap5765_g76880 , _MainColorMode);
				float4 lerpResult7654_g76880 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76880);
				half3 Main_Color_RGB7657_g76880 = (lerpResult7654_g76880).rgb;
				half3 Main_Albedo99_g76880 = ( lerpResult6223_g76880 * Main_Color_RGB7657_g76880 );
				float2 vertexToFrag11_g76906 = IN.ase_texcoord4.xy;
				half2 Second_UVs17_g76880 = vertexToFrag11_g76906;
				float4 tex2DNode89_g76880 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76880 );
				float3 lerpResult6225_g76880 = lerp( float3( 1,1,1 ) , (tex2DNode89_g76880).rgb , _SecondAlbedoValue);
				float4 tex2DNode33_g76880 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				half Second_Mask81_g76880 = tex2DNode33_g76880.b;
				float clampResult17_g76988 = clamp( Second_Mask81_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76989 = _SecondMaskMinValue;
				float temp_output_10_0_g76989 = ( _SecondMaskMaxValue - temp_output_7_0_g76989 );
				half Second_Mask_Remap6130_g76880 = saturate( ( ( clampResult17_g76988 - temp_output_7_0_g76989 ) / ( temp_output_10_0_g76989 + 0.0001 ) ) );
				float lerpResult7672_g76880 = lerp( 1.0 , Second_Mask_Remap6130_g76880 , _SecondColorMode);
				float4 lerpResult7662_g76880 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76880);
				half3 Second_Color_RGB7663_g76880 = (lerpResult7662_g76880).rgb;
				half3 Second_Albedo153_g76880 = ( lerpResult6225_g76880 * Second_Color_RGB7663_g76880 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76922 = 2.0;
				#else
				float staticSwitch1_g76922 = 4.594794;
				#endif
				float3 lerpResult4834_g76880 = lerp( ( Main_Albedo99_g76880 * Second_Albedo153_g76880 * staticSwitch1_g76922 ) , Second_Albedo153_g76880 , _DetailBlendMode);
				float lerpResult6885_g76880 = lerp( Main_Mask57_g76880 , Second_Mask81_g76880 , _DetailMaskMode);
				float clampResult17_g76958 = clamp( lerpResult6885_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76957 = _DetailMaskMinValue;
				float temp_output_10_0_g76957 = ( _DetailMaskMaxValue - temp_output_7_0_g76957 );
				half Blend_Mask_Texture6794_g76880 = saturate( ( ( clampResult17_g76958 - temp_output_7_0_g76957 ) / ( temp_output_10_0_g76957 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76880 = IN.ase_color.b;
				half4 Normal_Packed45_g76984 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				float2 appendResult58_g76984 = (float2(( (Normal_Packed45_g76984).x * (Normal_Packed45_g76984).w ) , (Normal_Packed45_g76984).y));
				half2 Normal_Default50_g76984 = appendResult58_g76984;
				half2 Normal_ASTC41_g76984 = (Normal_Packed45_g76984).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76984 = Normal_ASTC41_g76984;
				#else
				float2 staticSwitch38_g76984 = Normal_Default50_g76984;
				#endif
				half2 Normal_NO_DTX544_g76984 = (Normal_Packed45_g76984).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76984 = Normal_NO_DTX544_g76984;
				#else
				float2 staticSwitch37_g76984 = staticSwitch38_g76984;
				#endif
				float2 temp_output_6555_0_g76880 = ( (staticSwitch37_g76984*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76880 = (float3(temp_output_6555_0_g76880 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord5.xyz;
				float3 ase_worldNormal = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g76880 = appendResult7388_g76880;
				float3 worldNormal7389_g76880 = float3(dot(tanToWorld0,tanNormal7389_g76880), dot(tanToWorld1,tanNormal7389_g76880), dot(tanToWorld2,tanNormal7389_g76880));
				half3 Main_NormalWS7390_g76880 = worldNormal7389_g76880;
				float lerpResult6884_g76880 = lerp( Mesh_DetailMask90_g76880 , ((Main_NormalWS7390_g76880).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76956 = clamp( lerpResult6884_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76955 = _DetailMeshMinValue;
				float temp_output_10_0_g76955 = ( _DetailMeshMaxValue - temp_output_7_0_g76955 );
				half Blend_Mask_Mesh1540_g76880 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76955 ) / ( temp_output_10_0_g76955 + 0.0001 ) ) );
				float clampResult17_g76966 = clamp( ( Blend_Mask_Texture6794_g76880 * Blend_Mask_Mesh1540_g76880 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g76981 = _DetailBlendMinValue;
				float temp_output_10_0_g76981 = ( _DetailBlendMaxValue - temp_output_7_0_g76981 );
				half Blend_Mask147_g76880 = ( saturate( ( ( clampResult17_g76966 - temp_output_7_0_g76981 ) / ( temp_output_10_0_g76981 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float3 lerpResult235_g76880 = lerp( Main_Albedo99_g76880 , lerpResult4834_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float3 staticSwitch255_g76880 = lerpResult235_g76880;
				#else
				float3 staticSwitch255_g76880 = Main_Albedo99_g76880;
				#endif
				half3 Blend_Albedo265_g76880 = staticSwitch255_g76880;
				half3 Tint_Gradient_Color5769_g76880 = float3(1,1,1);
				half3 Tint_Noise_Color5770_g76880 = float3(1,1,1);
				float Mesh_Occlusion318_g76880 = IN.ase_color.g;
				float clampResult17_g76928 = clamp( Mesh_Occlusion318_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76934 = _VertexOcclusionMinValue;
				float temp_output_10_0_g76934 = ( _VertexOcclusionMaxValue - temp_output_7_0_g76934 );
				half Occlusion_Mask6432_g76880 = saturate( ( ( clampResult17_g76928 - temp_output_7_0_g76934 ) / ( temp_output_10_0_g76934 + 0.0001 ) ) );
				float3 lerpResult2945_g76880 = lerp( (_VertexOcclusionColor).rgb , float3( 1,1,1 ) , Occlusion_Mask6432_g76880);
				half3 Occlusion_Color648_g76880 = lerpResult2945_g76880;
				half3 Matcap_Color7428_g76880 = half3(0,0,0);
				half3 Blend_Albedo_Tinted2808_g76880 = ( ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 * Occlusion_Color648_g76880 ) + Matcap_Color7428_g76880 );
				float3 temp_output_3_0_g76926 = Blend_Albedo_Tinted2808_g76880;
				float dotResult20_g76926 = dot( temp_output_3_0_g76926 , float3(0.2126,0.7152,0.0722) );
				half Blend_Albedo_Grayscale5939_g76880 = dotResult20_g76926;
				float3 temp_cast_1 = (Blend_Albedo_Grayscale5939_g76880).xxx;
				float temp_output_82_0_g76901 = _LayerColorsValue;
				float temp_output_19_0_g76905 = TVE_ColorsUsage[(int)temp_output_82_0_g76901];
				float4 temp_output_91_19_g76901 = TVE_ColorsCoords;
				float3 vertexToFrag3890_g76880 = IN.ase_texcoord8.xyz;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 vertexToFrag4224_g76880 = IN.ase_texcoord9.xyz;
				float3 ObjectPosition4223_g76880 = vertexToFrag4224_g76880;
				float3 lerpResult4822_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ColorsPositionMode);
				half2 UV94_g76901 = ( (temp_output_91_19_g76901).zw + ( (temp_output_91_19_g76901).xy * (lerpResult4822_g76880).xz ) );
				float4 tex2DArrayNode83_g76901 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, sampler_Linear_Clamp, float3(UV94_g76901,temp_output_82_0_g76901), 0.0 );
				float4 temp_output_17_0_g76905 = tex2DArrayNode83_g76901;
				float4 temp_output_92_86_g76901 = TVE_ColorsParams;
				float4 temp_output_3_0_g76905 = temp_output_92_86_g76901;
				float4 ifLocalVar18_g76905 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76905 >= 0.5 )
				ifLocalVar18_g76905 = temp_output_17_0_g76905;
				else
				ifLocalVar18_g76905 = temp_output_3_0_g76905;
				float4 lerpResult22_g76905 = lerp( temp_output_3_0_g76905 , temp_output_17_0_g76905 , temp_output_19_0_g76905);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76905 = lerpResult22_g76905;
				#else
				float4 staticSwitch24_g76905 = ifLocalVar18_g76905;
				#endif
				half4 Global_Colors_Params5434_g76880 = staticSwitch24_g76905;
				float4 temp_output_346_0_g76887 = Global_Colors_Params5434_g76880;
				half Global_Colors_A1701_g76880 = saturate( (temp_output_346_0_g76887).w );
				half Colors_Influence3668_g76880 = Global_Colors_A1701_g76880;
				float temp_output_6306_0_g76880 = ( 1.0 - Colors_Influence3668_g76880 );
				float3 lerpResult3618_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , temp_cast_1 , ( 1.0 - ( temp_output_6306_0_g76880 * temp_output_6306_0_g76880 ) ));
				half3 Global_Colors_RGB1700_g76880 = (temp_output_346_0_g76887).xyz;
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g76918 = 2.0;
				#else
				float staticSwitch1_g76918 = 4.594794;
				#endif
				half3 Colors_RGB1954_g76880 = ( Global_Colors_RGB1700_g76880 * staticSwitch1_g76918 * _ColorsIntensityValue );
				float lerpResult6617_g76880 = lerp( Main_Mask_Remap5765_g76880 , Second_Mask_Remap6130_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6623_g76880 = lerpResult6617_g76880;
				#else
				float staticSwitch6623_g76880 = Main_Mask_Remap5765_g76880;
				#endif
				half Blend_Mask_Remap6621_g76880 = staticSwitch6623_g76880;
				float lerpResult7679_g76880 = lerp( 1.0 , Blend_Mask_Remap6621_g76880 , _ColorsMaskValue);
				half Colors_Value3692_g76880 = ( lerpResult7679_g76880 * _GlobalColors );
				half Colors_Variation3650_g76880 = 1.0;
				half Occlusion_Alpha6463_g76880 = _VertexOcclusionColor.a;
				float lerpResult6459_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionColorsMode);
				float lerpResult6461_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult6459_g76880);
				half Occlusion_Colors6450_g76880 = lerpResult6461_g76880;
				float3 temp_output_3_0_g76927 = ( Blend_Albedo265_g76880 * Tint_Gradient_Color5769_g76880 * Tint_Noise_Color5770_g76880 );
				float dotResult20_g76927 = dot( temp_output_3_0_g76927 , float3(0.2126,0.7152,0.0722) );
				float clampResult6740_g76880 = clamp( saturate( ( dotResult20_g76927 * 5.0 ) ) , 0.2 , 1.0 );
				half Blend_Albedo_Globals6410_g76880 = clampResult6740_g76880;
				float temp_output_7_0_g76964 = 0.1;
				float temp_output_10_0_g76964 = ( 0.2 - temp_output_7_0_g76964 );
				float lerpResult16_g76919 = lerp( 0.0 , saturate( ( ( ( Colors_Value3692_g76880 * Colors_Influence3668_g76880 * Colors_Variation3650_g76880 * Occlusion_Colors6450_g76880 * Blend_Albedo_Globals6410_g76880 ) - temp_output_7_0_g76964 ) / ( temp_output_10_0_g76964 + 0.0001 ) ) ) , TVE_IsEnabled);
				float3 lerpResult3628_g76880 = lerp( Blend_Albedo_Tinted2808_g76880 , ( lerpResult3618_g76880 * Colors_RGB1954_g76880 ) , lerpResult16_g76919);
				half3 Blend_Albedo_Colored_High6027_g76880 = lerpResult3628_g76880;
				half3 Blend_Albedo_Colored863_g76880 = Blend_Albedo_Colored_High6027_g76880;
				half3 Global_OverlayColor1758_g76880 = (TVE_OverlayColor).rgb;
				float temp_output_84_0_g76896 = _LayerExtrasValue;
				float temp_output_19_0_g76900 = TVE_ExtrasUsage[(int)temp_output_84_0_g76896];
				float4 temp_output_93_19_g76896 = TVE_ExtrasCoords;
				float3 lerpResult4827_g76880 = lerp( WorldPosition3905_g76880 , ObjectPosition4223_g76880 , _ExtrasPositionMode);
				half2 UV96_g76896 = ( (temp_output_93_19_g76896).zw + ( (temp_output_93_19_g76896).xy * (lerpResult4827_g76880).xz ) );
				float4 tex2DArrayNode48_g76896 = SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ExtrasTex, sampler_Linear_Clamp, float3(UV96_g76896,temp_output_84_0_g76896), 0.0 );
				float4 temp_output_17_0_g76900 = tex2DArrayNode48_g76896;
				float4 temp_output_94_85_g76896 = TVE_ExtrasParams;
				float4 temp_output_3_0_g76900 = temp_output_94_85_g76896;
				float4 ifLocalVar18_g76900 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g76900 >= 0.5 )
				ifLocalVar18_g76900 = temp_output_17_0_g76900;
				else
				ifLocalVar18_g76900 = temp_output_3_0_g76900;
				float4 lerpResult22_g76900 = lerp( temp_output_3_0_g76900 , temp_output_17_0_g76900 , temp_output_19_0_g76900);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g76900 = lerpResult22_g76900;
				#else
				float4 staticSwitch24_g76900 = ifLocalVar18_g76900;
				#endif
				half4 Global_Extras_Params5440_g76880 = staticSwitch24_g76900;
				float4 break456_g76910 = Global_Extras_Params5440_g76880;
				half Global_Extras_Overlay156_g76880 = break456_g76910.z;
				half Overlay_Variation4560_g76880 = 1.0;
				half Overlay_Value5738_g76880 = ( _GlobalOverlay * Global_Extras_Overlay156_g76880 * Overlay_Variation4560_g76880 );
				half2 Main_Normal137_g76880 = temp_output_6555_0_g76880;
				float2 lerpResult3372_g76880 = lerp( float2( 0,0 ) , Main_Normal137_g76880 , _DetailNormalValue);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				half4 Normal_Packed45_g76987 = SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				float2 appendResult58_g76987 = (float2(( (Normal_Packed45_g76987).x * (Normal_Packed45_g76987).w ) , (Normal_Packed45_g76987).y));
				half2 Normal_Default50_g76987 = appendResult58_g76987;
				half2 Normal_ASTC41_g76987 = (Normal_Packed45_g76987).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76987 = Normal_ASTC41_g76987;
				#else
				float2 staticSwitch38_g76987 = Normal_Default50_g76987;
				#endif
				half2 Normal_NO_DTX544_g76987 = (Normal_Packed45_g76987).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76987 = Normal_NO_DTX544_g76987;
				#else
				float2 staticSwitch37_g76987 = staticSwitch38_g76987;
				#endif
				float2 temp_output_6560_0_g76880 = ( (staticSwitch37_g76987*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g76990 = temp_output_6560_0_g76880;
				float2 break64_g76990 = Normal_Planar45_g76990;
				float3 appendResult65_g76990 = (float3(break64_g76990.x , 0.0 , break64_g76990.y));
				float2 temp_output_7603_0_g76880 = (mul( ase_worldToTangent, appendResult65_g76990 )).xy;
				float2 ifLocalVar7604_g76880 = 0;
				if( _SecondUVsMode >= 2.0 )
				ifLocalVar7604_g76880 = temp_output_7603_0_g76880;
				else
				ifLocalVar7604_g76880 = temp_output_6560_0_g76880;
				half2 Second_Normal179_g76880 = ifLocalVar7604_g76880;
				float2 temp_output_36_0_g76923 = ( lerpResult3372_g76880 + Second_Normal179_g76880 );
				float2 lerpResult3376_g76880 = lerp( Main_Normal137_g76880 , temp_output_36_0_g76923 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float2 staticSwitch267_g76880 = lerpResult3376_g76880;
				#else
				float2 staticSwitch267_g76880 = Main_Normal137_g76880;
				#endif
				half2 Blend_Normal312_g76880 = staticSwitch267_g76880;
				float3 appendResult7377_g76880 = (float3(Blend_Normal312_g76880 , 1.0));
				float3 tanNormal7376_g76880 = appendResult7377_g76880;
				float3 worldNormal7376_g76880 = float3(dot(tanToWorld0,tanNormal7376_g76880), dot(tanToWorld1,tanNormal7376_g76880), dot(tanToWorld2,tanNormal7376_g76880));
				half3 Blend_NormalWS7375_g76880 = worldNormal7376_g76880;
				half Vertex_DynamicMode5112_g76880 = _VertexDynamicMode;
				float lerpResult7446_g76880 = lerp( (Blend_NormalWS7375_g76880).y , IN.ase_normal.y , Vertex_DynamicMode5112_g76880);
				float lerpResult6757_g76880 = lerp( 1.0 , saturate( lerpResult7446_g76880 ) , _OverlayProjectionValue);
				half Overlay_Projection6081_g76880 = lerpResult6757_g76880;
				half Overlay_Shading6688_g76880 = Blend_Albedo_Globals6410_g76880;
				half Overlay_Custom6707_g76880 = 1.0;
				float lerpResult7693_g76880 = lerp( Occlusion_Mask6432_g76880 , ( 1.0 - Occlusion_Mask6432_g76880 ) , _VertexOcclusionOverlayMode);
				float lerpResult6467_g76880 = lerp( Occlusion_Alpha6463_g76880 , 1.0 , lerpResult7693_g76880);
				half Occlusion_Overlay6471_g76880 = lerpResult6467_g76880;
				float temp_output_7_0_g76932 = 0.1;
				float temp_output_10_0_g76932 = ( 0.2 - temp_output_7_0_g76932 );
				half Overlay_Mask_High6064_g76880 = saturate( ( ( ( Overlay_Value5738_g76880 * Overlay_Projection6081_g76880 * Overlay_Shading6688_g76880 * Overlay_Custom6707_g76880 * Occlusion_Overlay6471_g76880 ) - temp_output_7_0_g76932 ) / ( temp_output_10_0_g76932 + 0.0001 ) ) );
				half Overlay_Mask269_g76880 = Overlay_Mask_High6064_g76880;
				float3 lerpResult336_g76880 = lerp( Blend_Albedo_Colored863_g76880 , Global_OverlayColor1758_g76880 , Overlay_Mask269_g76880);
				half3 Blend_Albedo_Overlay359_g76880 = lerpResult336_g76880;
				half Global_WetnessContrast6502_g76880 = TVE_WetnessContrast;
				half Global_Extras_Wetness305_g76880 = break456_g76910.y;
				half Wetness_Value6343_g76880 = ( Global_Extras_Wetness305_g76880 * _GlobalWetness );
				float3 lerpResult6367_g76880 = lerp( Blend_Albedo_Overlay359_g76880 , ( Blend_Albedo_Overlay359_g76880 * Blend_Albedo_Overlay359_g76880 ) , ( Global_WetnessContrast6502_g76880 * Wetness_Value6343_g76880 ));
				half3 Blend_Albedo_Wetness6351_g76880 = lerpResult6367_g76880;
				float3 _Vector10 = float3(1,1,1);
				half3 Tint_Highlight_Color5771_g76880 = _Vector10;
				float3 temp_output_6309_0_g76880 = ( Blend_Albedo_Wetness6351_g76880 * Tint_Highlight_Color5771_g76880 );
				half3 Blend_Albedo_Subsurface149_g76880 = temp_output_6309_0_g76880;
				half3 Blend_Albedo_RimLight7316_g76880 = Blend_Albedo_Subsurface149_g76880;
				
				float3 temp_cast_11 = (0.0).xxx;
				float3 temp_output_7161_0_g76880 = (_EmissiveColor).rgb;
				half3 Emissive_Color7162_g76880 = temp_output_7161_0_g76880;
				half2 Emissive_UVs2468_g76880 = ( ( IN.ase_texcoord3.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				float temp_output_7_0_g77001 = _EmissiveTexMinValue;
				float3 temp_cast_12 = (temp_output_7_0_g77001).xxx;
				float temp_output_10_0_g77001 = ( _EmissiveTexMaxValue - temp_output_7_0_g77001 );
				half3 Emissive_Texture7022_g76880 = saturate( ( ( (SAMPLE_TEXTURE2D( _EmissiveTex, sampler_Linear_Repeat, Emissive_UVs2468_g76880 )).rgb - temp_cast_12 ) / ( temp_output_10_0_g77001 + 0.0001 ) ) );
				half Global_Extras_Emissive4203_g76880 = break456_g76910.x;
				float lerpResult4206_g76880 = lerp( 1.0 , Global_Extras_Emissive4203_g76880 , _GlobalEmissive);
				half Emissive_Value7024_g76880 = ( ( lerpResult4206_g76880 * _EmissivePhaseValue ) - 1.0 );
				half3 Emissive_Mask6968_g76880 = saturate( ( Emissive_Texture7022_g76880 + Emissive_Value7024_g76880 ) );
				float3 temp_output_3_0_g77003 = ( Emissive_Color7162_g76880 * Emissive_Mask6968_g76880 );
				float temp_output_15_0_g77003 = _emissive_intensity_value;
				float3 temp_output_23_0_g77003 = ( temp_output_3_0_g77003 * temp_output_15_0_g77003 );
				#ifdef TVE_EMISSIVE
				float3 staticSwitch7687_g76880 = temp_output_23_0_g77003;
				#else
				float3 staticSwitch7687_g76880 = temp_cast_11;
				#endif
				half3 Final_Emissive2476_g76880 = staticSwitch7687_g76880;
				
				float localCustomAlphaClip19_g76983 = ( 0.0 );
				half Main_Alpha316_g76880 = tex2DNode29_g76880.a;
				half Second_Alpha5007_g76880 = tex2DNode89_g76880.a;
				float lerpResult6153_g76880 = lerp( Main_Alpha316_g76880 , Second_Alpha5007_g76880 , Blend_Mask147_g76880);
				float lerpResult6785_g76880 = lerp( ( Main_Alpha316_g76880 * Second_Alpha5007_g76880 ) , lerpResult6153_g76880 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76880 = lerpResult6785_g76880;
				#else
				float staticSwitch6158_g76880 = Main_Alpha316_g76880;
				#endif
				half Blend_Alpha6157_g76880 = staticSwitch6158_g76880;
				half AlphaTreshold2132_g76880 = _AlphaClipValue;
				half Global_Alpha315_g76880 = 1.0;
				half Fade_Effects_A5360_g76880 = 1.0;
				float3 ase_worldPos = IN.ase_texcoord10.xyz;
				float temp_output_7_0_g76933 = TVE_CameraFadeMin;
				float temp_output_10_0_g76933 = ( TVE_CameraFadeMax - temp_output_7_0_g76933 );
				float lerpResult4755_g76880 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76933 ) / ( temp_output_10_0_g76933 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76880 = lerpResult4755_g76880;
				half Fade_Effects_B6228_g76880 = ( Fade_Effects_A5360_g76880 * Fade_Camera3743_g76880 );
				float lerpResult6866_g76880 = lerp( ( 1.0 - Blend_Mask147_g76880 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76880 = lerpResult6866_g76880;
				#else
				float staticSwitch6612_g76880 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76880 = staticSwitch6612_g76880;
				half Fade_Mask5149_g76880 = ( 1.0 * Blend_Mask_Invert6260_g76880 );
				float lerpResult5141_g76880 = lerp( 1.0 , ( Fade_Effects_B6228_g76880 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76880);
				half Fade_Effects_C7653_g76880 = lerpResult5141_g76880;
				float temp_output_5865_0_g76880 = saturate( ( Fade_Effects_C7653_g76880 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76880 ) ).r ) );
				half Fade_Alpha3727_g76880 = temp_output_5865_0_g76880;
				half Final_Alpha7344_g76880 = min( ( ( Blend_Alpha6157_g76880 - AlphaTreshold2132_g76880 ) * Global_Alpha315_g76880 ) , Fade_Alpha3727_g76880 );
				float temp_output_3_0_g76983 = Final_Alpha7344_g76880;
				float Alpha19_g76983 = temp_output_3_0_g76983;
				float temp_output_15_0_g76983 = 0.01;
				float Treshold19_g76983 = temp_output_15_0_g76983;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#else
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#endif
				}
				half Main_Color_Alpha6121_g76880 = (lerpResult7654_g76880).a;
				half Second_Color_Alpha6152_g76880 = (lerpResult7662_g76880).a;
				float lerpResult6168_g76880 = lerp( Main_Color_Alpha6121_g76880 , Second_Color_Alpha6152_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76880 = lerpResult6168_g76880;
				#else
				float staticSwitch6174_g76880 = Main_Color_Alpha6121_g76880;
				#endif
				half Blend_Color_Alpha6167_g76880 = staticSwitch6174_g76880;
				half Final_Clip914_g76880 = saturate( ( Alpha19_g76983 * Blend_Color_Alpha6167_g76880 ) );
				
				o.Albedo = Blend_Albedo_RimLight7316_g76880;
				o.Normal = fixed3( 0, 0, 1 );
				o.Emission = Final_Emissive2476_g76880;
				o.Alpha = Final_Clip914_g76880;
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
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_DETAIL
			#define THE_VEGETATION_ENGINE
			#define TVE_IS_STANDARD_PIPELINE
			#define TVE_IS_PROP_SHADER
			#define TVE_IS_SUBSURFACE_SHADER
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
			#endif//ASE Sampling Macros
			

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
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
			uniform half _render_src;
			uniform half _render_dst;
			uniform half _render_zw;
			uniform half _render_coverage;
			uniform float _IsPropShader;
			uniform half _IsSubsurfaceShader;
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
			uniform half _DisableSRPBatcher;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			uniform half4 _MainUVs;
			SamplerState sampler_MainAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_uvs_mode;
			uniform float3 TVE_WorldOrigin;
			uniform half4 _SecondUVs;
			uniform half _SecondUVsScaleMode;
			SamplerState sampler_SecondAlbedoTex;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
			SamplerState sampler_Linear_Repeat;
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
			uniform half TVE_CameraFadeMin;
			uniform half TVE_CameraFadeMax;
			uniform half _FadeCameraValue;
			uniform half _FadeConstantValue;
			uniform half _DetailFadeMode;
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


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 VertexPosition3588_g76880 = v.vertex.xyz;
				float3 Final_VertexPosition890_g76880 = ( VertexPosition3588_g76880 + _DisableSRPBatcher );
				
				float4 break33_g77000 = _second_uvs_mode;
				float2 temp_output_30_0_g77000 = ( v.ase_texcoord.xy * break33_g77000.x );
				float2 appendResult21_g76995 = (float2(v.texcoord1.xyzw.z , v.texcoord1.xyzw.w));
				float2 Mesh_DetailCoord3_g76880 = appendResult21_g76995;
				float2 temp_output_29_0_g77000 = ( Mesh_DetailCoord3_g76880 * break33_g77000.y );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag3890_g76880 = ase_worldPos;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float3 WorldPosition_Shifted7477_g76880 = ( WorldPosition3905_g76880 - TVE_WorldOrigin );
				float2 temp_output_31_0_g77000 = ( (WorldPosition_Shifted7477_g76880).xz * break33_g77000.z );
				half2 Second_UVs_Tilling7609_g76880 = (_SecondUVs).xy;
				half2 Second_UVs_Scale7610_g76880 = ( 1.0 / Second_UVs_Tilling7609_g76880 );
				float2 lerpResult7614_g76880 = lerp( Second_UVs_Tilling7609_g76880 , Second_UVs_Scale7610_g76880 , _SecondUVsScaleMode);
				half2 Second_UVs_Offset7605_g76880 = (_SecondUVs).zw;
				float2 vertexToFrag11_g76906 = ( ( ( temp_output_30_0_g77000 + temp_output_29_0_g77000 + temp_output_31_0_g77000 ) * lerpResult7614_g76880 ) + Second_UVs_Offset7605_g76880 );
				o.ase_texcoord3.xy = vertexToFrag11_g76906;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				o.ase_texcoord7.xyz = ase_worldPos;
				o.ase_texcoord8.xyz = vertexToFrag3890_g76880;
				
				o.ase_texcoord2 = v.ase_texcoord;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = Final_VertexPosition890_g76880;
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
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

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
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
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
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
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

				float localCustomAlphaClip19_g76983 = ( 0.0 );
				half2 Main_UVs15_g76880 = ( ( IN.ase_texcoord2.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				float4 tex2DNode29_g76880 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g76880 );
				half Main_Alpha316_g76880 = tex2DNode29_g76880.a;
				float2 vertexToFrag11_g76906 = IN.ase_texcoord3.xy;
				half2 Second_UVs17_g76880 = vertexToFrag11_g76906;
				float4 tex2DNode89_g76880 = SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondAlbedoTex, Second_UVs17_g76880 );
				half Second_Alpha5007_g76880 = tex2DNode89_g76880.a;
				float4 tex2DNode35_g76880 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				half Main_Mask57_g76880 = tex2DNode35_g76880.b;
				float4 tex2DNode33_g76880 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_Linear_Repeat, Second_UVs17_g76880 );
				half Second_Mask81_g76880 = tex2DNode33_g76880.b;
				float lerpResult6885_g76880 = lerp( Main_Mask57_g76880 , Second_Mask81_g76880 , _DetailMaskMode);
				float clampResult17_g76958 = clamp( lerpResult6885_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76957 = _DetailMaskMinValue;
				float temp_output_10_0_g76957 = ( _DetailMaskMaxValue - temp_output_7_0_g76957 );
				half Blend_Mask_Texture6794_g76880 = saturate( ( ( clampResult17_g76958 - temp_output_7_0_g76957 ) / ( temp_output_10_0_g76957 + 0.0001 ) ) );
				half Mesh_DetailMask90_g76880 = IN.ase_color.b;
				half4 Normal_Packed45_g76984 = SAMPLE_TEXTURE2D( _MainNormalTex, sampler_Linear_Repeat, Main_UVs15_g76880 );
				float2 appendResult58_g76984 = (float2(( (Normal_Packed45_g76984).x * (Normal_Packed45_g76984).w ) , (Normal_Packed45_g76984).y));
				half2 Normal_Default50_g76984 = appendResult58_g76984;
				half2 Normal_ASTC41_g76984 = (Normal_Packed45_g76984).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g76984 = Normal_ASTC41_g76984;
				#else
				float2 staticSwitch38_g76984 = Normal_Default50_g76984;
				#endif
				half2 Normal_NO_DTX544_g76984 = (Normal_Packed45_g76984).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g76984 = Normal_NO_DTX544_g76984;
				#else
				float2 staticSwitch37_g76984 = staticSwitch38_g76984;
				#endif
				float2 temp_output_6555_0_g76880 = ( (staticSwitch37_g76984*2.0 + -1.0) * _MainNormalValue );
				float3 appendResult7388_g76880 = (float3(temp_output_6555_0_g76880 , 1.0));
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal7389_g76880 = appendResult7388_g76880;
				float3 worldNormal7389_g76880 = float3(dot(tanToWorld0,tanNormal7389_g76880), dot(tanToWorld1,tanNormal7389_g76880), dot(tanToWorld2,tanNormal7389_g76880));
				half3 Main_NormalWS7390_g76880 = worldNormal7389_g76880;
				float lerpResult6884_g76880 = lerp( Mesh_DetailMask90_g76880 , ((Main_NormalWS7390_g76880).y*0.5 + 0.5) , _DetailMeshMode);
				float clampResult17_g76956 = clamp( lerpResult6884_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76955 = _DetailMeshMinValue;
				float temp_output_10_0_g76955 = ( _DetailMeshMaxValue - temp_output_7_0_g76955 );
				half Blend_Mask_Mesh1540_g76880 = saturate( ( ( clampResult17_g76956 - temp_output_7_0_g76955 ) / ( temp_output_10_0_g76955 + 0.0001 ) ) );
				float clampResult17_g76966 = clamp( ( Blend_Mask_Texture6794_g76880 * Blend_Mask_Mesh1540_g76880 ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g76981 = _DetailBlendMinValue;
				float temp_output_10_0_g76981 = ( _DetailBlendMaxValue - temp_output_7_0_g76981 );
				half Blend_Mask147_g76880 = ( saturate( ( ( clampResult17_g76966 - temp_output_7_0_g76981 ) / ( temp_output_10_0_g76981 + 0.0001 ) ) ) * _DetailMode * _DetailValue );
				float lerpResult6153_g76880 = lerp( Main_Alpha316_g76880 , Second_Alpha5007_g76880 , Blend_Mask147_g76880);
				float lerpResult6785_g76880 = lerp( ( Main_Alpha316_g76880 * Second_Alpha5007_g76880 ) , lerpResult6153_g76880 , _DetailAlphaMode);
				#ifdef TVE_DETAIL
				float staticSwitch6158_g76880 = lerpResult6785_g76880;
				#else
				float staticSwitch6158_g76880 = Main_Alpha316_g76880;
				#endif
				half Blend_Alpha6157_g76880 = staticSwitch6158_g76880;
				half AlphaTreshold2132_g76880 = _AlphaClipValue;
				half Global_Alpha315_g76880 = 1.0;
				half Fade_Effects_A5360_g76880 = 1.0;
				float3 ase_worldPos = IN.ase_texcoord7.xyz;
				float temp_output_7_0_g76933 = TVE_CameraFadeMin;
				float temp_output_10_0_g76933 = ( TVE_CameraFadeMax - temp_output_7_0_g76933 );
				float lerpResult4755_g76880 = lerp( 1.0 , saturate( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g76933 ) / ( temp_output_10_0_g76933 + 0.0001 ) ) ) ) , _FadeCameraValue);
				half Fade_Camera3743_g76880 = lerpResult4755_g76880;
				half Fade_Effects_B6228_g76880 = ( Fade_Effects_A5360_g76880 * Fade_Camera3743_g76880 );
				float lerpResult6866_g76880 = lerp( ( 1.0 - Blend_Mask147_g76880 ) , 1.0 , _DetailFadeMode);
				#ifdef TVE_DETAIL
				float staticSwitch6612_g76880 = lerpResult6866_g76880;
				#else
				float staticSwitch6612_g76880 = 1.0;
				#endif
				half Blend_Mask_Invert6260_g76880 = staticSwitch6612_g76880;
				half Fade_Mask5149_g76880 = ( 1.0 * Blend_Mask_Invert6260_g76880 );
				float lerpResult5141_g76880 = lerp( 1.0 , ( Fade_Effects_B6228_g76880 * ( 1.0 - _FadeConstantValue ) ) , Fade_Mask5149_g76880);
				half Fade_Effects_C7653_g76880 = lerpResult5141_g76880;
				float3 vertexToFrag3890_g76880 = IN.ase_texcoord8.xyz;
				float3 WorldPosition3905_g76880 = vertexToFrag3890_g76880;
				float temp_output_5865_0_g76880 = saturate( ( Fade_Effects_C7653_g76880 - SAMPLE_TEXTURE3D( TVE_NoiseTex3D, sampler_Linear_Repeat, ( TVE_NoiseTex3DTilling * WorldPosition3905_g76880 ) ).r ) );
				half Fade_Alpha3727_g76880 = temp_output_5865_0_g76880;
				half Final_Alpha7344_g76880 = min( ( ( Blend_Alpha6157_g76880 - AlphaTreshold2132_g76880 ) * Global_Alpha315_g76880 ) , Fade_Alpha3727_g76880 );
				float temp_output_3_0_g76983 = Final_Alpha7344_g76880;
				float Alpha19_g76983 = temp_output_3_0_g76983;
				float temp_output_15_0_g76983 = 0.01;
				float Treshold19_g76983 = temp_output_15_0_g76983;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_ALPHA_FADE) || defined (TVE_ALPHA_GLOBAL)
				#if defined (TVE_IS_HD_PIPELINE)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#else
				clip(Alpha19_g76983 - Treshold19_g76983);
				#endif
				#endif
				}
				float clampResult17_g76985 = clamp( Main_Mask57_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76986 = _MainMaskMinValue;
				float temp_output_10_0_g76986 = ( _MainMaskMaxValue - temp_output_7_0_g76986 );
				half Main_Mask_Remap5765_g76880 = saturate( ( ( clampResult17_g76985 - temp_output_7_0_g76986 ) / ( temp_output_10_0_g76986 + 0.0001 ) ) );
				float lerpResult7671_g76880 = lerp( 1.0 , Main_Mask_Remap5765_g76880 , _MainColorMode);
				float4 lerpResult7654_g76880 = lerp( _MainColorTwo , _MainColor , lerpResult7671_g76880);
				half Main_Color_Alpha6121_g76880 = (lerpResult7654_g76880).a;
				float clampResult17_g76988 = clamp( Second_Mask81_g76880 , 0.0001 , 0.9999 );
				float temp_output_7_0_g76989 = _SecondMaskMinValue;
				float temp_output_10_0_g76989 = ( _SecondMaskMaxValue - temp_output_7_0_g76989 );
				half Second_Mask_Remap6130_g76880 = saturate( ( ( clampResult17_g76988 - temp_output_7_0_g76989 ) / ( temp_output_10_0_g76989 + 0.0001 ) ) );
				float lerpResult7672_g76880 = lerp( 1.0 , Second_Mask_Remap6130_g76880 , _SecondColorMode);
				float4 lerpResult7662_g76880 = lerp( _SecondColorTwo , _SecondColor , lerpResult7672_g76880);
				half Second_Color_Alpha6152_g76880 = (lerpResult7662_g76880).a;
				float lerpResult6168_g76880 = lerp( Main_Color_Alpha6121_g76880 , Second_Color_Alpha6152_g76880 , Blend_Mask147_g76880);
				#ifdef TVE_DETAIL
				float staticSwitch6174_g76880 = lerpResult6168_g76880;
				#else
				float staticSwitch6174_g76880 = Main_Color_Alpha6121_g76880;
				#endif
				half Blend_Color_Alpha6167_g76880 = staticSwitch6174_g76880;
				half Final_Clip914_g76880 = saturate( ( Alpha19_g76983 * Blend_Color_Alpha6167_g76880 ) );
				
				o.Normal = fixed3( 0, 0, 1 );
				#if !defined(ASE_LIGHTING_SIMPLE)
					o.Occlusion = 1;
				#endif
				o.Alpha = Final_Clip914_g76880;
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
Node;AmplifyShaderEditor.CommentaryNode;340;-2176,384;Inherit;False;1280.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-896;Inherit;False;1281.438;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1278.896;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-768;Half;False;Property;_render_cull;_render_cull;248;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-1984,-768;Half;False;Property;_render_src;_render_src;249;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1792,-768;Half;False;Property;_render_dst;_render_dst;250;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1600,-768;Half;False;Property;_render_zw;_render_zw;251;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;397;-1408,-768;Half;False;Property;_render_coverage;_render_coverage;252;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;384;-2176,512;Inherit;False;Define Pipeline Standard;-1;;76742;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;386;-1088,512;Inherit;False;Compile All Shaders;-1;;76745;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;387;-1280,512;Inherit;False;Compile Core;-1;;76746;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;813;-1664,512;Inherit;False;Define ShaderType Prop;253;;76747;96e31a47d32deff49ba83d5b364f536d;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;814;-1936,512;Inherit;False;Define Lighting Subsurface;255;;76879;77137addbb4a22f4c818adc8782926be;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;811;-2176,-384;Inherit;False;Base Shader Core;0;;76880;856f7164d1c579d43a5cf4968a75ca43;98,7343,0,3880,1,4028,1,3900,1,3908,1,4172,1,7691,1,7692,1,4179,1,6791,1,1298,1,1300,1,6792,1,3586,0,4499,0,1708,1,6056,1,3509,1,3873,0,893,0,6230,0,5156,1,5345,0,1717,1,1718,1,7566,1,6116,1,5075,1,1714,1,1715,1,6076,1,6068,1,6592,1,6692,0,6729,1,1776,0,6352,1,6378,1,3475,1,6655,1,4210,1,1745,0,3479,0,1646,0,3501,0,2807,0,6206,0,7565,0,4999,0,6194,0,3887,0,7321,0,7332,0,3957,1,6647,0,6257,0,5357,0,2172,0,3883,0,7650,0,3728,1,5350,0,2658,0,7617,0,1742,0,3484,0,6166,1,6161,1,1736,1,4837,1,1734,1,6848,1,6320,1,1737,1,6622,1,1735,1,7429,0,7624,0,860,0,6721,0,2261,1,2260,1,2054,1,2032,1,5258,0,2039,1,2062,1,7548,1,7550,1,3243,0,5220,0,4217,1,6699,1,5339,0,7689,1,7492,0,5090,1,4242,0;10;7333;FLOAT3;1,1,1;False;6196;FLOAT;1;False;6693;FLOAT;1;False;6201;FLOAT;1;False;6205;FLOAT;1;False;7652;FLOAT;1;False;5143;FLOAT;1;False;6231;FLOAT;1;False;6198;FLOAT;1;False;5340;FLOAT3;0,0,0;False;23;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4842;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT;532;FLOAT;5389;FLOAT;721;FLOAT3;1230;FLOAT;5296;FLOAT;1461;FLOAT;1290;FLOAT;629;FLOAT3;534;FLOAT;4867;FLOAT4;5246;FLOAT4;4841
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;815;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ExtraPrePass;0;0;ExtraPrePass;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;816;-1152,-384;Float;False;True;-1;2;TVEShaderCoreGUI;0;17;BOXOPHOBIC/The Vegetation Engine/Geometry/Prop Subsurface Lit;28cd5599e02859647ae1798e4fcaef6c;True;ForwardBase;0;1;ForwardBase;20;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_render_cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_render_zw;True;0;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;5;False;0;True;True;1;1;True;_render_src;0;True;_render_dst;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;0;0;Standard;41;Category;0;0;Workflow;1;0;Surface;0;0;  Blend;0;0;  Refraction Model;0;0;  Dither Shadows;1;0;Two Sided;0;638375593425695677;Deferred Pass;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;1;638375593464398376;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Ambient Light;1;0;Meta Pass;1;0;Add Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Fwd Specular Highlights Toggle;0;0;Fwd Reflections Toggle;0;0;Disable Batching;0;0;Vertex Position,InvertActionOnDeselection;0;638375593500668688;0;6;False;True;True;False;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;817;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ForwardAdd;0;2;ForwardAdd;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;818;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Deferred;0;3;Deferred;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;819;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Meta;0;4;Meta;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;820;-1152,-384;Float;False;False;-1;2;ASEMaterialInspector;0;1;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ShadowCaster;0;5;ShadowCaster;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
WireConnection;816;0;811;0
WireConnection;816;1;811;528
WireConnection;816;2;811;2489
WireConnection;816;4;811;529
WireConnection;816;6;811;531
WireConnection;816;5;811;530
WireConnection;816;7;811;532
WireConnection;816;14;811;1230
WireConnection;816;15;811;534
ASEEND*/
//CHKSM=158B93CC12298080B8A2B8F22BCAD0A413A168BC
