GameInfo
{
    game        "citadel"
    title       "Citadel"
    type        "multiplayer_only"
    nomodels    "1"
    nohimodel   "1"
    nocrosshair "0"
    hidden_maps
    {
        test_speakers "1"
        test_hardware "1"
    }
    nodegraph   "0"
    perfwizard  "0"
    tonemapping "0"
    GameData    "citadel.fgd"

    PGIVersion "48C04ECAFC6448F8D3F41F0AA3A15D065501751CF45FBE32DF6CB951BC4F7F6E"

    Localize
    {
        DuplicateTokensAssert "0"
    }

    SupportedLanguages
    {
        brazilian  "3"
        czech      "3"
        english    "3"
        french     "3"
        german     "3"
        italian    "3"
        indonesian "3"
        japanese   "3"
        koreana    "3"
        latam      "3"
        polish     "3"
        russian    "3"
        schinese   "3"
        spanish    "3"
        thai       "3"
        turkish    "3"
        ukrainian  "3"
    }

    FileSystem
    {
        SearchPaths
        {
            Game_UILanguage  "citadel_*LANGUAGE*"
            Game_LowViolence "citadel_lv"

            Mod   "citadel"
            Write "citadel"
            Game  "citadel/custom"
            Game  "citadel/addons"
            Game  "citadel"
            Game  "core"
        }

        LegacyUserSettingsPathID "MOD"
        UserSettingsPathID       "USRLOCAL"
    }

    MaterialSystem2
    {
        RenderModes
        {
            game "Default"
            game "Forward"
            game "Deferred"
            game "Outline"
            game "Depth"
            game "FrontDepth"
            game "ShadowSilhouette"

            dev "ToolsVis"
            dev "ToolsWireframe"

            tools "ToolsUtil"
        }
    }

    MaterialEditor
    {
        DefaultShader "environment_texture_set"
    }

    NetworkSystem
    {
        BetaUniverse
        {
            FakeLag          "0"
            FakeLoss         "0"
            FakeReorderPct   "0"
            FakeReorderDelay "0"
            FakeJitter       "off"
        }

        SkipRedundantChangeCallbacks "1"
    }

    RenderSystem
    {
        GraphicsPipelineLibrary               "1"
        IndexBufferPoolSizeMB                 "256"
        LowLatency                            "0"
        MinStreamingPoolSizeMB                "512"
        MinStreamingPoolSizeMBTools           "512"
        SwapChainSampleableDepth              "1"
        Use32BitDepthBuffer                   "0"
        Use32BitDepthBufferWithoutStencil     "0"
        UseReverseDepth                       "1"
        VulkanAdditionalShaderCache           "vulkan_shader_cache.foz"
        VulkanDefrag                          "1"
        VulkanMutableSwapchain                "1"
        VulkanOnlyTestProbability             "0"
        VulkanOnly_Linux                      "1"
        VulkanRequireDescriptorIndexing       "1"
        VulkanRequireSubgroupWaveOpSupport    "1"
        VulkanStagingPMBSizeLimitMB           "768"
        VulkanSteamAppShaderCache             "1"
        VulkanSteamDownloadedShaderCache      "1"
        VulkanSteamShaderCache                "1"
        MaxPreloadTextureResolution           "128"
        AllowPartialMipChainImmediateTexLoads "1"
    }

    NVNGX
    {
        AppID        "103371621"
        SupportsDLSS "1"
    }

    Engine2
    {
        HasModAppSystems "1"
        Capable64Bit     "1"
        URLName          "citadel"
        RenderingPipeline
        {
            SupportsMSAA  "0"
            DistanceField "0"
        }
        PauseSinglePlayerOnGameOverlay "1"
        PauseOnCtrlConsole             "0"
        DefensiveConCommands           "1"
        DisableLoadingPlaque           "1"
        LocalServerClientAccess        "1"

        MapMaxCoord "32768"
    }

    ContentBuilder
    {
        ResourceCompilerDirectXUsesWARP "0"
    }

    SoundSystem
    {
        SteamAudioEnabled   "1"
        WaveDataCacheSizeMB "256"
        UsePlatTime         "1"
    }

    Sounds
    {
        HierarchicalEncodingFiles "1"
    }

    ToolsEnvironment
    {
        Engine   "Source 2"
        ToolsDir "../sdktools"
    }

    pulse
    {
        pulse_enabled "0"
    }

    Hammer
    {
        fgd                           "citadel.fgd"
        GameFeatureSet                "Citadel"
        DefaultSolidEntity            "trigger_multiple"
        DefaultPointEntity            "info_player_start"
        NavMarkupEntity               "func_nav_markup"
        OverlayBoxSize                "8"
        TileMeshesEnabled             "0"
        RenderMode                    "ToolsVis"
        CreateRenderClusters          "0"
        DefaultMinDrawVolumeSize      "4096"
        DefaultMinTrianglesPerCluster "32768"
        TileGridSupportsBlendHeight   "0"
        TileGridBlendDefaultColor     "0 255 0"
        LoadScriptEntities            "0"
        UsesBakedLighting             "1"
        UseAnalyticGrid               "0"
        SupportsDisplacementMapping   "0"
        SteamAudioEnabled             "0"
        LatticeDeformerEnabled        "0"
        ShadowAtlasWidth              "512"
        ShadowAtlasHeight             "512"
        TimeSlicedShadowMapRendering  "1"
    }

    SoundTool
    {
        DefaultSoundEventType "src1_3d"

        SoundEventBaseOptions
        {
            Base.Announcer.VO.2d     ""
            Base.World.VO.Emitter.3d ""
            Base.Hero.VO.Ping.2d     ""
            Base.Hero.VO.2d          ""
            Base.Hero.VO.3d          ""
            Base.Hero.VO.Ability.3d  ""
            Base.Hero.VO.Ultimate.3d ""
            Base.Hero.VO.Dash.3d     ""
            Base.Hero.VO.Effort.3d   ""
            Base.Hero.VO.Pain.3d     ""
            Base.Hero.VO.Melee.3d    ""
            Base.Hero.VO.Death.3d    ""
        }
    }

    RenderPipelineAliases
    {
    }

    ResourceCompiler
    {
        ForceVulkanForMapBuild "1"

        DefaultMapBuilders
        {
            bakedlighting "1"
            envmap        "0"
            nav           "1"
            sareverb      "0"
            sapaths       "0"
            sacustomdata  "0"
        }

        GameSpecificPostMapBuildSteps
        {
            pve_nav_cache "1"
        }

        MeshCompiler
        {
            OptimizeForMeshlets       "1"
            TrianglesPerMeshlet       "64"
            UseMikkTSpace             "1"
            EncodeVertexBuffer        "1"
            EncodeVertexBufferVersion "1"
            EncodeVertexBufferLevel   "3"
            EncodeIndexBuffer         "1"
            SplitDepthStream          "1"
        }

        WorldRendererBuilder
        {
            VisibilityGuidedMeshClustering             "1"
            MinimumTrianglesPerClusteredMesh           "16384"
            MinimumVerticesPerClusteredMesh            "16384"
            MinimumVolumePerClusteredMesh              "16384"
            MaxPrecomputedVisClusterMembership         "32"
            MaxCullingBoundsGroups                     "64"
            UseAggregateInstances                      "1"
            AggregateInstancingMeshlets                "1"
            BakePropsWithExtraVertexStreams            "0"
            MergeTranslucents                          "1"
            BakePrecomputedShadows                     "0"
            BakePrecomputedShadowsForDirectionalLights "0"
            BakePrecomputedDepthPyramids               "0"
            PrecomputedShadowmapAtlas                  "0"
            PrecomputedShadowmapAtlasBorder            "0"
            PrecomputedShadowmapResolutionDefault      "0"
        }

        BakedLighting
        {
            Version                          "5"
            ImportanceVolumeTransitionRegion "128"
            LightmapChannels
            {
                direct_light_shadows          "1"
                debug_chart_color             "0"
                directional_irradiance_sh2_dc "1"

                directional_irradiance_sh2_lum
                {
                    CompressedFormat "DXT1"
                }
            }
            LightmapGutterSize   "2"
            UseStaticLightProbes "0"
            LPVAtlas             "1"
        }

        SteamAudio
        {
            ReverbDefaults
            {
                GridGenerationType          "0"
                FilterUsingVolumes          "0"
                FilterUsingNavMesh          "0"
                GridSpacing                 "6.0"
                HeightAboveFloor            "1.5"
                RebakeOption                "0"
                NumRays                     "1024"
                NumBounces                  "2"
                IRDuration                  "0.2"
                AmbisonicsOrder             "0"
                ClusteringEnabled           "0"
                ClusteringCubemapResolution "4.0"
                ClusteringDepthThreshold    "20.0"
            }
            PathingDefaults
            {
                GridGenerationType "0"
                FilterUsingVolumes "0"
                FilterUsingNavMesh "0"
                GridSpacing        "6.0"
                HeightAboveFloor   "1.5"
                RebakeOption       "0"
                NumVisSamples      "1"
                ProbeVisRadius     "0"
                ProbeVisThreshold  "0.1"
                ProbeVisPathRange  "100.0"
            }
            CustomDataDefaults
            {
                GridGenerationType         "0"
                FilterUsingVolumes         "0"
                FilterUsingNavMesh         "0"
                GridSpacing                "12"
                HeightAboveFloor           "1.5"
                RebakeOption               "0"
                BakeOcclusion              "0"
                BakeDimensions             "0"
                BakeMaterials              "0"
                OcclusionPathing           "0"
                OcclusionReflection        "0"
                OcclusionReflectionRays    "512"
                OcclusionReflectionBounces "1"
                DimensionsOutsideThreshold "0.05"
            }
            ProbeGenerationVolumeDefaults
            {
                Spacing            "6.0"
                Height             "1.5"
                HeightSpacing      "24"
                UseForReverb       "0"
                UseForPathing      "0"
                UseForCustomData   "0"
                FilterUsingVolumes "0"
                FilterUsingNavMesh "0"
            }
        }
        SoundEventScripts
        {
            OmitMetadataAndLineText "1"
        }
        SoundStackScripts
        {
            CompileStacksStrict "1"
        }
        VisBuilder
        {
            MaxVisClusters                     "2048"
            PreMergeOpenSpaceDistanceThreshold "256.0"
            PreMergeOpenSpaceMaxDimension      "4096.0"
            PreMergeOpenSpaceMaxRatio          "12.0"
            PreMergeSmallRegionsSizeThreshold  "50.0"
        }

        VDataLocalization
        {
            GameOutputPath "resource/localization/citadel_vdata"
            TokenPrefix    "Citadel_VData_"
        }

        TextureCompiler
        {
            AllowNP2Textures           "1"
            AllowPanoramaMipGeneration "0"
        }
    }

    Source1Import
    {
        forcevtxfileupconvert "1"
    }

    WorldRenderer
    {
        BindlessSceneObjectDesc      "CitadelBindlessDesc"
        EnvironmentMapCacheSizeTools "0"
        EnvironmentMapColorSpace     "linear"
        EnvironmentMapFaceSize       "32"
        EnvironmentMapFormat         "BC6H"
        EnvironmentMapMipProcessor   "GGXCubeMapBlur"
        EnvironmentMapPreviewFormat  "BC6H"
        EnvironmentMapRenderSize     "64"
        EnvironmentMapUseCubeArray   "0"
        EnvironmentMaps              "0"
        GrassCastsShadows            "0"
        AggregateInstanceStream      "1"
        AggregateRTProxyDesc         "1"
        AggregateSceneObjectDesc     "1"
        AggregateVertexColorStream   "1"
        EnvironmentMapCacheSize      "256"
        LPVEdgeBlending              "0"
    }

    SceneSystem
    {
        CSMCascadeResolution                        "0"
        CubemapFog                                  "0"
        DefaultShadowTextureHeight                  "0"
        DefaultShadowTextureWidth                   "0"
        DisableLateAllocatedTransformBuffer         "1"
        DynamicShadowResolution                     "0"
        FogCachedShadowAtlasHeightTools             "0"
        FogCachedShadowAtlasWidthTools              "0"
        FogCachedShadowTileSizeTools                "0"
        FogCachedShadowTileSize                     "0"
        FrameBufferCopyFormat                       "R11G11B10F"
        GpuLightBinner                              "1"
        GpuLightBinnerSunLightFastPath              "1"
        HDRFrameBuffer                              "0"
        LayerBatchThresholdFullsort                 "512"
        MinimumLateAllocatedVertexCacheBufferSizeMB "128"
        NonTexturedGradientFog                      "0"
        SunLightManagerCount                        "0"
        SunLightManagerCountTools                   "0"
        SunLightMaxCascadeSize                      "0"
        SunLightShadowRenderMode                    "Depth"
        Tonemapping                                 "0"
        TransformTextureRowCount                    "1024"
        TransformTextureRowCountToolsMode           "1024"
        VolumetricFog                               "0"
        CharacterDecals                             "0"
        FogCachedShadowTileMaxFilterRadius          "0"
        DisableShadowFullSort                       "1"
        EnableAlphaTint                             "0"
        EnableSunlight                              "0"
        EnableViewModelSunlight                     "0"
        GpuLightBinnerSupportViewModelCascade       "0"
        HairShading                                 "false"
        GpuLightBinnerBinEnvMaps                    "0"
        GpuLightBinnerBinLPVs                       "0"
        LightCookieAllocGranularity                 "1"
        LightCookieMinAllocSize                     "0"
        SupportsInstancedFade                       "0"
        ParticleBufferSize                          "512"
        PerVertexLighting                           "0"
        PointLightShadowsEnabled                    "0"
        PunctualContactShadows                      "0"
        SelfShadowStrength                          "0"
        ShadowAtlas                                 "0"
        ShadowDepth                                 "0"
        ShadowDepthBuffer                           "0"
        ShadowDepthBufferNoCmp                      "0"
        ShadowmapMaxFilterRadius                    "0"
        SparseShadowTrees                           "0"

        WellKnownLightCookies
        {
            blank      "materials/effects/lightcookies/blank.vtex"
            flashlight "materials/effects/lightcookies/blank.vtex"
        }

        ComputeShaderSkinning "1"
    }

    NavSystem
    {
        NavTileSize                   "256.0"
        NavCellSize                   "2.0"
        NavCellHeight                 "3.0"
        NavHullsPreset                "default"
        NavRegionMinSize              "16"
        NavRegionMergeSize            "40"
        NavEdgeMaxLen                 "2400"
        NavEdgeMaxError               "100.0"
        NavVertsPerPoly               "4"
        NavDetailSampleDistance       "240.0"
        NavDetailSampleMaxError       "4.0"
        NavSmallAreaOnEdgeRemovalSize "150.0"
    }

    AnimationSystem
    {
        DisableServerInterpCompensation "1"
        DisableAnimationScript          "1"
        ServerPoseRecipeHistorySize     "15"
        ClientPoseRecipeHistorySize     "15"
    }

    ModelDoc
    {
        models_gamedata "models_gamedata.fgd"
        features        "modelconfig;gamepreview;wireframe_backfaces;distancefield"
    }

    Particles
    {
        BindlessParticleShader               "1"
        EnableParticleShaderFeatureBranching "1"
        Features                             "non_homogenous_forward_layer_only"
        Float16HDRBackBuffer                 "0"
        PET_SupportFadingOpaqueModels        "0"
        EnableMixedResolution                "1"
        MPropertyFlattenIntoParentRow        "1"
        ParticleTraceOffsetOnlyHit           "1"
        ParticlesFoggedByDefault             "0"
        PerVertexLighting                    "0"
        PostSimulate                         "0"
    }

    Physics
    {
        EnableWorldCompounds "1"
    }

    ConVars
    {
        // =========================================================================
        // 1. HILOS EN PARALELO + LATENCIA DESACTIVADA PARA NO FRENAR AL i3-10100F
        // =========================================================================
        r_low_latency                                                  "0"
        engine_low_latency_sleep_after_client_tick                     "false"
        thread_pool_option                                             "4"
        animgraph_enable_parallel_op_evaluation                        "1"
        animgraph_enable_parallel_preupdate                            "1"
        animgraph_enable_dirty_netvar_optimization                     "true"
        ragdoll_parallel_pose_control                                  "1"
        phys_threaded_cloth_bone_update                                "1"
        phys_threaded_kinematic_bone_update                            "1"
        phys_threaded_transform_update                                 "1"
        cl_interp_parallel                                             "true"
        cl_batch_entity_list_ops_during_latch                          "true"
        iv_parallel_restore                                            "1"
        parallel_perform_invalidate_physics                            "1"
        parallel_update_surrounding_bounds_in_spatial_partition_update "1"
        update_all_keyframed_in_spatial_partition_update               "0"
        always_perform_full_spatial_partition_update                   "0"
        sv_parallel_checktransmit                                      "2"
        net_gather_child_fields_only                                   "1"

        // =========================================================================
        // 2. KAIZUCHANERU + BOOT MAX FPS: RECORTE EXTREMO DE POLIGONOS Y OBJETOS
        // =========================================================================
        sc_screen_size_lod_scale_override       "0.000001"
        sc_instanced_mesh_lod_bias              "0.001"
        sc_instanced_mesh_lod_bias_shadow       "0.001"
        sc_instanced_mesh_size_cull_bias        "10"
        sc_instanced_mesh_size_cull_bias_shadow "10"
        sc_fade_distance_scale_override         "180"
        r_propsmaxdist                          "100"
        r_size_cull_threshold                   "1.5"
        r_farz                                  "4500"
        r_mapextents                            "4500"
        r_citadel_gpu_culling                   "true"
        sc_aggregate_gpu_vis_culling            "true"
        sc_instanced_mesh_enable                "true"
        sc_instanced_mesh_gpu_density_culling   "true"
        sc_aggregate_render_mesh_shader         "true"
        sc_force_materials_batchable            "true"
        r_citadel_depth_prepass_dynamic_objects "false"
        r_async_compute_fog                     "true"
        sc_aggregate_bvh_threshold              "512"
        sc_layer_batch_threshold                "512"
        sc_layer_batch_threshold_fullsort       "512"
        sc_allow_dithered_lod                   "false"
        sc_dithered_lod_transition_amt          "0"
        sc_instanced_mesh_motion_vectors        "0"
        sc_instanced_mesh_opaque_fade           "false"
        sc_max_framebuffer_copies_per_layer     "0"
        r_add_views_in_pre_output               "1"
        sc_clutter_enable                       "false"
        sc_clutter_density_full_size            "0"
        sc_clutter_density_none_size            "1"

        // =========================================================================
        // 3. MODO ROBLOX: TEXTURAS EN 64x64 + MIP BIAS 8
        // =========================================================================
        mat_async_shader_load                "1"
        r_texture_nonstreaming_load          "0"
        r_texture_pool_size                  "512"
        r_texture_pool_reduce_rate           "512"
        r_texture_budget_dynamic             "1"
        r_texture_budget_threshold           "0.5"
        r_texture_budget_update_period       "0.5"
        r_texture_stream_mip_bias            "8"
        r_texture_lod_scale                  "8"
        r_fallback_texture_lod_scale         "8"
        r_texture_stream_max_resolution      "64"
        r_texture_stream_resolution_bias     "0.01"
        r_texturefilteringquality            "0"
        r_character_decal_resolution         "1"
        r_character_decal_monitor_render_res "1"
        r_citadel_fsr_enable_mip_bias        "false"

        // =========================================================================
        // 4. LUCES, SOMBRAS Y NIEBLA 100% APAGADAS
        // =========================================================================
        lb_enable_stationary_lights                            "false"
        lb_enable_dynamic_lights                               "false"
        lb_enable_lights                                       "0"
        lb_enable_shadow_casting                               "0"
        lb_enable_newsum                                       "false"
        lb_max_visible_barn_lights_override                    "0"
        lb_barnlight_shadowmap_scale                           "0"
        cl_retire_low_priority_lights                          "1"
        mat_max_lighting_complexity                            "0"
        r_arealights                                           "false"
        r_light_flickering_enabled                             "0"
        r_light_sensitivity_mode                               "true"
        r_lightmap_bicubic_filtering                           "0"
        r_lightmap_size                                        "128"
        r_lightmap_size_directional_irradiance                 "0"
        r_multiscattering                                      "0"
        r_distancefield_enable                                 "0"
        lb_csm_cascade_size_override                           "1"
        lb_csm_draw_alpha_tested                               "0"
        lb_csm_draw_translucent                                "0"
        lb_csm_override_staticgeo_cascades                     "true"
        lb_csm_override_staticgeo_cascades_value               "true"
        lb_dynamic_shadow_resolution_base                      "4"
        lb_ssss_samples                                        "0"
        lb_sun_csm_size_cull_threshold_texels                  "200"
        r_citadel_shadow_caching                               "true"
        r_citadel_shadow_quality                               "0"
        r_citadel_shadowdb                                     "4"
        r_citadel_sun_shadow_slope_scale_depth_bias            "0"
        r_size_cull_threshold_shadow                           "10.0"
        sparseshadowtree_disable_for_viewmodel                 "1"
        sparseshadowtree_enable_rendering                      "0"
        sparseshadowtree_disable_add_layers                    "true"
        sparseshadowtree_leaf_precision_viewmodel              "0"
        csm_cascade0_override_dist                             "0"
        csm_cascade1_override_dist                             "0"
        csm_cascade2_override_dist                             "0"
        csm_cascade3_override_dist                             "0"
        csm_max_dist_between_caster_and_receiver               "0"
        csm_max_num_cascades_override                          "0"
        csm_max_visible_dist                                   "0"
        csm_res_override_0                                     "1"
        csm_res_override_1                                     "1"
        csm_res_override_2                                     "1"
        csm_res_override_3                                     "1"
        csm_viewmodel_shadows                                  "false"
        csm_viewmodel_farz                                     "1"
        csm_viewmodel_max_shadow_dist                          "1"
        csm_viewmodel_max_visible_dist                         "1"
        csm_viewmodel_nearz                                    "512"
        lb_allow_time_sliced_shadow_map_rendering              "false"
        lb_bin_slices                                          "0"
        lb_csm_cross_fade_override                             "0"
        lb_csm_distance_fade_override                          "0"
        lb_csm_receiver_plane_depth_bias                       "0"
        lb_csm_receiver_plane_depth_bias_transmissive_backface "0"
        lb_cubemap_normalization_roughness_begin               "0.01"
        lb_cubemap_normalization_max                           "1"
        lb_dynamic_shadow_penumbra                             "false"
        lb_dynamic_shadow_resolution_quantization              "4"
        lb_enable_fog_mixed_shadows                            "false"
        lb_mixed_shadows                                       "false"
        lb_precomputed_shadowmap_enable                        "false"
        lb_shadow_map_cull_empty_mixed                         "true"
        lb_shadow_texture_height_override                      "4"
        lb_shadow_texture_width_override                       "4"
        sc_disable_spotlight_shadows                           "1"
        sc_cache_envmap_lpv_lookup                             "false"
        sc_hdr_enabled_override                                "0"
        vis_sunlight_enable                                    "false"
        r_rendersun                                            "0"
        r_ssao                                                 "0"
        r_ssao_strength                                        "0"
        r_ssao_blur                                            "0"
        r_aoproxy_cull_dist                                    "0.01"
        r_citadel_ssao_quality                                 "0"
        r_citadel_ssao_denoise_passes                          "0"
        r_citadel_ssao_radius                                  "0"
        r_citadel_ssao_thin_occluder_compensation              "0"
        r_depth_of_field                                       "0"
        r_citadel_depthoffield_enable                          "false"
        r_effects_bloom                                        "0"
        r_post_bloom                                           "0"
        mat_tonemap_bloom_scale                                "0"
        mat_colorcorrection                                    "0"
        fog_enable                                             "false"
        fog_enableskybox                                       "false"
        r_enable_cubemap_fog                                   "false"
        r_enable_gradient_fog                                  "false"
        r_enable_volume_fog                                    "false"
        r_citadel_fog_quality                                  "0"
        volume_fog_enable_jitter                               "false"
        volume_fog_intermediate_textures_hdr                   "false"

        // =========================================================================
        // 5. FISICAS, COLISIONES E IK DESACTIVADOS
        // =========================================================================
        cl_fasttempentcollision                 "1"
        cl_phys_enabled                         "true"
        cl_phys_sleep_enable                    "true"
        cl_phys_networked_start_sleep           "true"
        cl_phys_animated_hierarchy              "false"
        cl_phys_assume_fixed_tick_interval      "true"
        phys_cull_internal_mesh_contacts        "true"
        phys_agg_world_compounds                "0"
        cl_bone_cache_optimization              "1"
        skeleton_instance_lod_optimization      "true"
        cl_disable_ragdolls                     "0"
        cl_ragdoll_limit                        "-1"
        cl_ragdoll_default_scale                "0"
        cloth_sim_on_tick                       "0"
        cloth_filter_transform_stateless        "0"
        enable_boneflex                         "0"
        r_morphing_enabled                      "false"
        r_smooth_morph_normals                  "0"
        r_enable_rigid_animation                "false"
        props_break_max_pieces_perframe         "0"
        func_break_max_pieces                   "0"
        ik_enable                               "false"
        ik_constraints_enabled                  "false"
        ik_fabrik_align_chain                   "1"
        ik_final_fixup_enable                   "0"
        ik_debug_dogleg3bone_enabled            "false"
        ik_debug_fabrik_backwards_enabled       "false"
        ik_debug_fabrik_forwards_enabled        "false"
        ik_fabrik_backwards_enabled             "false"
        ik_fabrik_forwards_enabled              "false"
        ik_planetilt_enable                     "false"
        animgraph_footlock_calculate_tilt       "false"
        animgraph_footlock_enabled              "false"
        animgraph_footlock_ground_roll          "false"
        animgraph_footlock_hip_offset_enable    "false"
        animgraph_footlock_ik_enable            "false"
        animgraph_footlock_trace_ground_enabled "false"
        animgraph_footlock_use_hip_shift        "false"
        animgraph_slowdownonslopes_enabled      "false"

        // =========================================================================
        // 6. INTERFAZ PANORAMA Y TEXTO EN EL MUNDO AL MINIMO
        // =========================================================================
        citadel_in_world_item_panel_dpi                 "0"
        citadel_portrait_world_renderer_off             "true"
        citadel_portrait_unit_ag2_enable                "false"
        panorama_max_fps                                "20"
        panorama_max_overlay_fps                        "20"
        fps_max_ui                                      "20"
        fps_max                                         "0"
        panorama_disable_blur                           "true"
        panorama_allow_transitions                      "false"
        panorama_panel_occlusion                        "true"
        panorama_disable_render_target_cache            "0"
        panorama_skip_composition_layer_content_paint   "1"
        panorama_comp_layer_lru_lifetime                "4"
        v8_maximum_heap_size_mb                         "1024"
        r_dashboard_render_quality                      "0"
        r_citadel_enable_pano_world_blur                "false"
        citadel_unit_status_old_update_rate             "10"
        minimap_trooper_update_rate_hz                  "1"
        minimap_update_rate_hz                          "5"
        citadel_minimap_overlap_scan_distance           "0"
        citadel_minimap_trooper_size                    "2"
        citadel_damage_text_batching_window_ability     "1000"
        citadel_unit_status_healthbar_highlight_speed   "999"
        citadel_hud_objective_health_enabled            "2"
        citadel_hud_objective_health_idle_timeout       "0"
        citadel_hud_objective_health_debug_show_midboss "false"
        citadel_hideout_ball_show_juggle_count          "0"
        citadel_hideout_ball_show_juggle_fx             "0"
        closecaption                                    "false"
        cc_captiontrace                                 "0"

        // =========================================================================
        // 7. PARTICULAS RECORTADAS AL EXTREMO
        // =========================================================================
        r_citadel_disable_particle_lights        "true"
        r_particle_mixed_resolution_viewstart    "16"
        particle_cluster_use_collision_hulls     "false"
        particle_cluster_nodraw                  "1"
        cl_aggregate_particles                   "true"
        r_particle_batch_collections             "true"
        cl_particle_batch_mode                   "1"
        r_particle_allowprerender                "true"
        r_particle_skip_postsim                  "true"
        r_late_particle_job_sync                 "0"
        r_limit_particle_job_duration            "true"
        r_particle_explicit_fetch                "false"
        r_particle_max_size_cull                 "300"
        r_particle_model_per_thread_count        "64"
        r_particle_min_timestep                  "0.005"
        r_particle_max_texture_layers            "4"
        r_particle_fixedrandomseeds              "true"
        cl_particle_fallback_base                "10"
        cl_particle_fallback_multiplier          "20"
        cl_particle_sim_fallback_base_multiplier "200"
        cl_particle_sim_fallback_threshold_ms    "0.1"
        r_citadel_screenspace_particles_full_res "false"
        r_draw_particle_children_with_parents    "0"
        r_physics_particle_op_spawn_scale        "0"
        r_update_particles_on_render_only_frames "true"
        cl_max_particle_pvs_aabb_edge_length     "50"

        // =========================================================================
        // 8. ARMA OCULTA Y DETALLES SECUNDARIOS APAGADOS (MANTIENE DECALS DE LASH)
        // =========================================================================
        r_aspectratio                                 "2.5"
        r_drawviewmodel                               "false"
        viewmodel_fov                                 "0"
        r_drawdecals                                  "1"
        citadel_boss_glow_disabled                    "1"
        citadel_trooper_glow_disabled                 "1"
        citadel_player_outline_enemies                "false"
        r_citadel_npr_outlines                        "0"
        citadel_per_weapon_per_surface_impact_effects "false"
        r_drawtracers_firstperson                     "false"
        r_muzzleflashbrightness                       "0"
        fx_drawmetalspark                             "false"
        cl_show_splashes                              "0"
        violence_ablood                               "0"
        violence_agibs                                "0"
        violence_hblood                               "0"
        violence_hgibs                                "0"
        r_render_hair                                 "false"
        r_hair_ao                                     "0"
        r_hair_indirect_transmittance                 "false"
        r_hair_shadowtile                             "false"
        r_haircull_percent                            "100"
        r_grass_end_fade                              "0"
        r_grass_quality                               "0"
        r_grass_start_fade                            "0"
        r_world_wind_strength                         "0"
        r_world_wind_frequency_grass                  "0"
        r_world_wind_frequency_trees                  "0"
        wind_system_default_resolution_xy             "0"
        wind_system_temporal_smoothing                "false"
        r_drawropes                                   "false"
        r_ropetranslucent                             "false"
        rope_collide                                  "0"
        rope_subdiv                                   "0"
        rope_wind_dist                                "0"
        citadel_camera_wobble_disable                 "true"
        citadel_melee_shake_amplitude                 "0"
        citadel_melee_shake_duration                  "0"
        r_citadel_clip_sphere_min_opacity             "0"
        r_max_portal_render_targets                   "0"
        r_monitor_3dskybox                            "0"
        r_skip_precache_validation_check              "true"
        r_strip_invisible_during_sceneobject_update   "1"
        r_pixelvisibility_partial                     "false"

        // =========================================================================
        // 9. IA Y AUDIO ULTRA RECORTADOS (2 HILOS)
        // =========================================================================
        citadel_npc_force_animate_every_tick          "false"
        cl_simulate_dormant_entities                  "false"
        ai_async_queue_max_jobs                       "1"
        ai_foot_sweep_enable                          "false"
        ai_gather_conditions_async                    "true"
        ai_lod_auto_enabled                           "true"
        ai_strong_optimizations_no_checkstand         "1"
        ai_think_interval                             "0.5"
        ai_think_interval_lod_med                     "1.0"
        ai_think_interval_lod_low                     "2.0"
        ai_think_interval_lod_very_low                "4.0"
        ai_use_async_ragdoll_fixup                    "true"
        nav_obstruction_async_update                  "true"
        citadel_use_pvs_for_players                   "true"
        sv_hide_ent_in_pvs                            "1"
        sv_remove_ent_from_pvs                        "1"
        snd_steamaudio_num_threads                    "2"
        snd_mixahead                                  "0.08"
        snd_mix_async                                 "1"
        snd_async_fullyasync                          "1"
        snd_occlusion_bounces                         "0"
        snd_occlusion_rays                            "0"
        snd_steamaudio_max_occlusion_samples          "4"
        snd_steamaudio_num_diffuse_samples            "64"
        snd_steamaudio_reverb_order_rendering         "0"
        snd_steamaudio_reverb_update_rate             "5"
        snd_use_baked_occlusion                       "1"
        snd_ui_positional                             "0"
        audio_enable_vmix_mastering                   "false"
        audio_enable_spawn_mask_mix_layer             "false"
        snd_boxverb_simd                              "false"
        snd_enable_subgraph_corenull_passthrough      "false"
        disable_source_soundscape_trace               "1"
        dsp_volume                                    "0"
        update_voices_low_priority                    "true"
        citadel_enable_vdata_sound_preload            "true"
        steam_inputhandler_enabled                    "false"
        cl_joystick_enabled                           "0"
        panorama_joystick_enabled                     "0"

        // =========================================================================
        // 10. BLOQUE OFICIAL DE RED (VALVE)
        // =========================================================================
        rate
        {
            min     "98304"
            default "786432"
            max     "1000000"
        }

        sv_minrate                                                       "98304"
        sv_maxunlag                                                      "0.500"
        sv_maxunlag_player                                               "0.200"
        sv_lagcomp_filterbyviewangle                                     "false"
        cl_usesocketsforloopback                                         "1"
        cl_poll_network_early                                            "0"
        cq_buffer_bloat_msecs_max                                        "120"
        cl_tickpacket_recvmargin_desired                                 "5"
        cl_tickpacket_desired_queuelength                                "1"
        cl_async_usercmd_send_disabled_recvmargin_min                    "0.5"
        cl_clock_buffer_ticks                                            "1"
        cl_interp_ratio                                                  "0"
        cl_async_usercmd_send                                            "false"
        cl_updaterate                                                    "128"
        nav_gen_connect_dist_a                                           "2.0"
        panorama_classes_perf_warning_threshold_ms                       "0.75"
        panorama_js_minidumps                                            "1"
        snd_steamaudio_load_reverb_data                                  "0"
        snd_steamaudio_load_pathing_data                                 "0"
        snd_steamaudio_load_occlusion_data                               "0"
        snd_steamaudio_load_dimensions_data                              "1"
        snd_steamaudio_load_materials_data                               "0"
        snd_steamaudio_enable_custom_hrtf                                "0"
        snd_steamaudio_active_hrtf                                       "0"
        snd_steamaudio_pathing_order                                     "3"
        snd_steamaudio_pathing_order_rendering                           "3"
        snd_steamaudio_enable_pathing                                    "0"
        snd_steamaudio_enable_reverb                                     "0"
        snd_steamaudio_reverb_level_db                                   "-6"
        snd_steamaudio_invalid_path_length                               "0.0"
        snd_steamaudio_max_probes_customdata_dimensions                  "100000"
        snd_steamaudio_dimensions_grid_height_max                        "100"
        snd_steamaudio_baked_dimensions_probelookup_usealternate         "1"
        snd_steamaudio_custombake_dimensions_size_and_inout_bake_enabled "1"
        snd_steamaudio_custombake_dimensions_outsidefield_bake_enabled   "0"
        snd_steamaudio_custombake_dimensions_smallsizefield_bake_enabled "0"
        snd_steamaudio_dimensions_max_ray_length                         "2500"
        cl_disconnect_soundevent                                         "citadel.convar.stop_all_game_layer_soundevents"
        snd_event_browser_default_stack                                  "citadel_default_3d"
        voice_in_process                                                 "1"
        snd_report_audio_nan                                             "1"
        snd_sos_max_event_base_depth                                     "10"
        sos_use_guid_filter                                              "1"

        voice_always_sample_mic
        {
            version "2"
            default "0"
        }

        reset_voice_on_input_stallout            "0"
        voice_input_stallout                     "0.5"
        audio_enclosure_calc_enabled             "0"
        in_button_double_press_window            "0.3"
        snd_ui_spatialization_spread             "2.4"
        snd_envelope_rate                        "100.0"
        snd_soundmixer_update_maximum_frame_rate "0"

        speaker_config
        {
            min     "0"
            default "0"
            max     "2"
        }

        snd_soundmixer "Default_Mix"
    }

    Memory
    {
        EstimatedMaxCPUMemUsageMB "1"
        EstimatedMinGPUMemUsageMB "1"

        ShowInsufficientPageFileMessageBox      "1"
        ShowLowAvailableVirtualMemoryMessageBox "1"
    }
}
