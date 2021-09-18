if string.lower(RequiredScript) == "lib/tweak_data/skilltreetweakdata" then
	local data = SkillTreeTweakData.init
	function SkillTreeTweakData:init(tweak_data)
		local function digest(value)
			return Application:digest_value(value, true)
		end
		data(self, tweak_data)
		
		self.tier_unlocks = {
			digest(1),
			digest(5),
			digest(10),
			digest(20),
			digest(30),
			digest(40)
		}
		self.costs.unlock_tree = digest(1)
			
		self.skills.mastermind = {
			name_id = "menu_mastermind",
			desc_id = "menu_mastermind_desc",
			icon_xy = {2, 7},
			{
				upgrades = {"doctor_bag"},
				cost = self.costs.unlock_tree,
				desc_id = "menu_mastermind_tier_1"
			},
			{
				upgrades = {},
				desc_id = "menu_mastermind_tier_2"
			},
			{
				upgrades = {},
				desc_id = "menu_mastermind_tier_3"
			},
			{
				upgrades = {},
				desc_id = "menu_mastermind_tier_4"
			},
			{
				upgrades = {},
				desc_id = "menu_mastermind_tier_5"
			},
			{
				upgrades = {},
				desc_id = "menu_mastermind_tier_6"
			}
		}
		self.skills.enforcer = {
			name_id = "menu_enforcer",
			desc_id = "menu_enforcer_desc",
			icon_xy = {1, 0},
			{
				upgrades = {"ammo_bag"},
				cost = self.costs.unlock_tree,
				desc_id = "menu_menu_enforcer_tier_1"
			},
			{
				upgrades = {},
				desc_id = "menu_menu_enforcer_tier_2"
			},
			{
				upgrades = {},
				desc_id = "menu_menu_enforcer_tier_3"
			},
			{
				upgrades = {},
				desc_id = "menu_menu_enforcer_tier_4"
			},
			{
				upgrades = {},
				desc_id = "menu_menu_enforcer_tier_5"
			},
			{
				upgrades = {},
				desc_id = "menu_menu_enforcer_tier_6"
			}
		}
		self.skills.technician = {
			name_id = "menu_technician",
			desc_id = "menu_technician_desc",
			icon_xy = {7, 4},
			{
				upgrades = {"trip_mine"},
				cost = self.costs.unlock_tree,
				desc_id = "menu_technician_tier_1"
			},
			{
				upgrades = {},
				desc_id = "menu_technician_tier_2"
			},
			{
				upgrades = {},
				desc_id = "menu_technician_tier_3"
			},
			{
				upgrades = {},
				desc_id = "menu_technician_tier_4"
			},
			{
				upgrades = {},
				desc_id = "menu_technician_tier_5"
			},
			{
				upgrades = {},
				desc_id = "menu_technician_tier_6"
			}
		}
		self.skills.ghost = {
			name_id = "menu_ghost",
			desc_id = "menu_ghost_desc",
			icon_xy = {1, 4},
			{
				upgrades = {
					"ecm_jammer"
				},
				cost = self.costs.unlock_tree,
				desc_id = "menu_ghost_tier_1"
			},
			{
				upgrades = {},
				desc_id = "menu_ghost_tier_2"
			},
			{
				upgrades = {},
				desc_id = "menu_ghost_tier_3"
			},
			{
				upgrades = {},
				desc_id = "menu_ghost_tier_4"
			},
			{
				upgrades = {},
				desc_id = "menu_ghost_tier_5"
			},
			{
				upgrades = {},
				desc_id = "menu_ghost_tier_6"
			}
		}
		self.skills.hoxton = {
			name_id = "menu_hoxton_pack",
			desc_id = "menu_hoxton_pack_desc",
			icon_xy = {3, 10},
			{
				upgrades = {
					"first_aid_kit"
				},
				cost = self.costs.unlock_tree,
				desc_id = "menu_hoxton_tier_1"
			},
			{
				upgrades = {},
				desc_id = "menu_hoxton_tier_2"
			},
			{
				upgrades = {},
				desc_id = "menu_hoxton_tier_3"
			},
			{
				upgrades = {},
				desc_id = "menu_hoxton_tier_4"
			},
			{
				upgrades = {},
				desc_id = "menu_hoxton_tier_5"
			},
			{
				upgrades = {},
				desc_id = "menu_hoxton_tier_6"
			}
		}

		self.default_upgrades = {
			"cable_tie",
			"player_special_enemy_highlight",
			"player_hostage_trade",
			"player_sec_camera_highlight",
			"player_corpse_dispose",
			"player_corpse_dispose_amount_1",
			"player_civ_harmless_melee",
			"striker_reload_speed_default",
			"temporary_first_aid_damage_reduction",
			"temporary_passive_revive_damage_reduction_2",
			"ecm_jammer_affects_cameras",
			"jowi",
			"x_1911",
			"x_b92fs",
			"x_deagle",
			"x_g22c",
			"x_g17",
			"x_usp",
			"x_sr2",
			"x_mp5",
			"x_akmsu",
			"x_packrat",
			"x_p226",
			"x_m45",
			"x_mp7",
			"x_ppk"
		}
		
		self.trees = {
			{
				skill = "mastermind",
				name_id = "st_menu_mastermind",
				unlocked = true,
				background_texture = "guis/textures/pd2/skilltree/bg_mastermind",
				tiers = {
					{
						"cable_guy",
						"combat_medic",
						"triathlete"
					},
					{
						"inside_man",
						"fast_learner",
						"leadership"
					},
					{
						"tactician",
						"equilibrium",
						"dominator"
					},
					{
						"stockholm_syndrome",
						"medic_2x",
						"joker"
					},
					{
						"kilmer",
						"gun_fighter",
						"control_freak"
					},
					{
						"black_marketeer",
						"pistol_messiah",
						"inspire"
					}
				}
			},
			{
				skill = "enforcer",
				name_id = "st_menu_enforcer",
				unlocked = true,
				background_texture = "guis/textures/pd2/skilltree/bg_enforcer",
				tiers = {
					{
						"oppressor",
						"ammo_reservoir",
						"pack_mule"
					},
					{
						"show_of_force",
						"underdog",
						"steroids"
					},
					{
						"shotgun_impact",
						"shades",
						"tough_guy"
					},
					{
						"shotgun_cqb",
						"ammo_2x",
						"wolverine"
					},
					{
						"from_the_hip",
						"bandoliers",
						"portable_saw"
					},
					{
						"overkill",
						"juggernaut",
						"carbon_blade"
					}
				}
			},
			{
				skill = "technician",
				name_id = "st_menu_technician",
				unlocked = true,
				background_texture = "guis/textures/pd2/skilltree/bg_technician",
				tiers = {
					{
						"rifleman",
						"trip_miner",
						"discipline"
					},
					{
						"sharpshooter",
						"trip_mine_expert",
						"hardware_expert"
					},
					{
						"sentry_gun",
						"master_craftsman",
						"drill_expert"
					},
					{
						"sentry_targeting_package",
						"blast_radius",
						"silent_drilling"
					},
					{
						"sentry_2_0",
						"shaped_charge",
						"insulation"
					},
					{
						"sentry_gun_2x",
						"mag_plus",
						"iron_man"
					}
				}
			},
			{
				skill = "ghost",
				name_id = "st_menu_ghost",
				unlocked = true,
				background_texture = "guis/textures/pd2/skilltree/bg_ghost",
				tiers = {
					{
						"scavenger",
						"sprinter",
						"cat_burglar"
					},
					{
						"transporter",
						"chameleon",
						"cleaner"
					},
					{
						"assassin",
						"martial_arts",
						"smg_master"
					},
					{
						"nine_lives",
						"ecm_2x",
						"hitman"
					},
					{
						"magic_touch",
						"ecm_booster",
						"silence_expert"
					},
					{
						"good_luck_charm",
						"ecm_feedback",
						"moving_target"
					}
				}
			},
			{
				skill = "hoxton",
				name_id = "st_menu_hoxton_pack",
				unlocked = true,
				background_texture = "guis/textures/pd2/skilltree/bg_fugitive",
				tiers = {
					{
						"freedom_call",
						"hidden_blade",
						"thick_skin"
					},
					{
						"awareness",
						"jail_workout",
						"alpha_dog"
					},
					{
						"cell_mates",
						"thug_life",
						"tea_time"
					},
					{
						"perseverance",
						"second_chances",
						"tea_cookies"
					},
					{
						"trigger_happy",
						"backstab",
						"drop_soap"
					},
					{
						"prison_wife",
						"jail_diet",
						"akimbo"
					}
				}
			}
		}
		
		--mastermind
		self.skills.cable_guy.name_id = "menu_cable_guy"
		self.skills.cable_guy.desc_id = "menu_cable_guy_desc"
		self.skills.cable_guy.icon_xy = {4, 7}
		self.skills.cable_guy[1].upgrades = {"cable_tie_interact_speed_multiplier"}
		self.skills.cable_guy[2].upgrades = {"cable_tie_quantity"}
		self.skills.combat_medic.desc_id = "menu_combat_medic_desc"
		self.skills.combat_medic[1].upgrades = {"temporary_combat_medic_damage_multiplier1"}
		self.skills.triathlete.name_id = "menu_triathlete"
		self.skills.triathlete.desc_id = "menu_triathlete_desc"
		self.skills.triathlete.icon_xy = {1, 8}
		self.skills.triathlete[1].upgrades = {"player_stamina_multiplier"}
		self.skills.triathlete[2].upgrades = {"team_stamina_multiplier"}
		self.skills.inside_man.name_id = "menu_inside_man"
		self.skills.inside_man.desc_id = "menu_inside_man_desc"
		self.skills.leadership.name_id = "menu_leadership"
		self.skills.leadership.desc_id = "menu_leadership_desc"
		self.skills.leadership[1].upgrades = {"team_pistol_recoil_multiplier", "team_akimbo_recoil_multiplier"}
		self.skills.leadership[2].upgrades = {"team_weapon_recoil_multiplier"}
		self.skills.tactician.name_id = "menu_tactician"
		self.skills.tactician.desc_id = "menu_tactician_desc"
		self.skills.equilibrium.desc_id = "menu_equilibrium_desc"
		self.skills.equilibrium[1].upgrades = {"pistol_spread_index_addend", "pistol_swap_speed_multiplier"}
		self.skills.equilibrium[2].upgrades = {"pistol_fire_rate_multiplier"}
		self.skills.dominator.name_id = "menu_dominator"
		self.skills.dominator.desc_id = "menu_dominator_desc"
		self.skills.dominator[1].upgrades = {"player_intimidate_enemies"}
		self.skills.stockholm_syndrome.desc_id = "menu_stockholm_syndrome_desc"
		self.skills.stockholm_syndrome[1].upgrades = {"player_civilian_reviver"}
		self.skills.stockholm_syndrome[2].upgrades = {"player_civilian_gives_ammo"}
		self.skills.joker.desc_id = "menu_joker_desc"
		self.skills.joker.prerequisites = {"dominator"}
		self.skills.joker[1].upgrades = {"player_convert_enemies", "player_convert_enemies_max_minions_1", "player_convert_enemies_damage_multiplier_1"}
		self.skills.joker[2].upgrades = {"player_convert_enemies_health_multiplier", "player_convert_enemies_damage_multiplier_2", "player_convert_enemies_interaction_speed_multiplier"}
		self.skills.gun_fighter.name_id = "menu_gun_fighter"
		self.skills.gun_fighter.desc_id = "menu_gun_fighter_desc"
		self.skills.gun_fighter.icon_xy = {0, 9}
		self.skills.gun_fighter[1].upgrades = {"pistol_reload_speed_multiplier"}
		self.skills.gun_fighter[2].upgrades = {"pistol_damage_addend_1", "pistol_damage_addend_2"}
		self.skills.control_freak.prerequisites = {"joker"}
		self.skills.inspire.desc_id = "menu_inspire_desc"
		
		--enforcer
		self.skills.oppressor.name_id = "menu_oppressor"
		self.skills.oppressor.desc_id = "menu_oppressor_desc"
		self.skills.oppressor.icon_xy = {7, 0}
		self.skills.oppressor[1].upgrades = {"player_suppression_bonus"}
		self.skills.oppressor[2].upgrades = {"player_suppression_mul_1"}
		self.skills.pack_mule.desc_id = "menu_pack_mule_desc"
		self.skills.pack_mule.icon_xy = {6, 0}
		self.skills.pack_mule[1].upgrades = {"carry_movement_speed_multiplier"}
		self.skills.pack_mule[2].upgrades = {"carry_throw_distance_multiplier"}
		self.skills.show_of_force.name_id = "menu_show_of_force"
		self.skills.show_of_force.desc_id = "menu_show_of_force_desc"
		self.skills.show_of_force.icon_xy = {1, 2}
		self.skills.show_of_force[1].upgrades = {"player_primary_weapon_when_downed"}
		self.skills.show_of_force[2].upgrades = {"player_armor_regen_timer_multiplier"}
		self.skills.steroids.icon_xy = {4, 0}
		self.skills.shotgun_impact.desc_id = "menu_shotgun_impact_desc"
		self.skills.shotgun_impact.icon_xy = {5, 0}
		self.skills.shotgun_impact[1].upgrades = {"shotgun_recoil_index_addend"}
		self.skills.shotgun_impact[2].upgrades = {"shotgun_damage_multiplier_1", "shotgun_damage_multiplier_2"}
		self.skills.shades.name_id = "menu_shades"
		self.skills.shades.desc_id = "menu_shades_desc"
		self.skills.tough_guy.name_id = "menu_tough_guy"
		self.skills.tough_guy.desc_id = "menu_tough_guy_desc"
		self.skills.tough_guy.icon_xy = {1, 1}
		self.skills.shotgun_cqb.desc_id = "menu_shotgun_cqb_desc"
		self.skills.shotgun_cqb.icon_xy = {5, 1}
		self.skills.shotgun_cqb[1].upgrades = {"shotgun_reload_speed_multiplier_1", "shotgun_reload_speed_multiplier_2"}
		self.skills.shotgun_cqb[2].upgrades = {"shotgun_enter_steelsight_speed_multiplier"}
		self.skills.from_the_hip.name_id = "menu_from_the_hip"
		self.skills.from_the_hip.desc_id = "menu_from_the_hip_desc"
		self.skills.bandoliers.desc_id = "menu_bandoliers_desc"
		self.skills.bandoliers[2].upgrades = {"player_pick_up_ammo_multiplier", "player_pick_up_ammo_multiplier_2"}
		self.skills.portable_saw.desc_id = "menu_portable_saw_desc"
		self.skills.portable_saw[1].upgrades = {"saw"}
		self.skills.portable_saw[2].upgrades = {"saw_extra_ammo_multiplier"}
		self.skills.overkill.desc_id = "menu_overkill_desc"
		self.skills.overkill[2].upgrades = {"player_overkill_all_weapons"}
		self.skills.juggernaut.desc_id = "menu_juggernaut_desc"
		self.skills.juggernaut[1].upgrades = {"body_armor6"}
		self.skills.juggernaut[2].upgrades = {"player_shield_knock", "player_run_and_shoot"}
		self.skills.carbon_blade.name_id = "menu_carbon_blade"
		self.skills.carbon_blade.desc_id = "menu_carbon_blade_desc"
		self.skills.carbon_blade.prerequisites = {"portable_saw"}
		self.skills.carbon_blade[1].upgrades = {"player_saw_speed_multiplier_1", "saw_lock_damage_multiplier_1"}
		self.skills.carbon_blade[2].upgrades = {"player_saw_speed_multiplier_2", "saw_lock_damage_multiplier_2", "saw_enemy_slicer", "saw_secondary"}
		
		--technician
		self.skills.rifleman.desc_id = "menu_rifleman_desc"
		self.skills.rifleman.icon_xy = {0, 5}
		self.skills.rifleman[1].upgrades = {"assault_rifle_enter_steelsight_speed_multiplier", "snp_enter_steelsight_speed_multiplier"}
		self.skills.rifleman[2].upgrades = {"assault_rifle_zoom_increase", "snp_zoom_increase"}
		self.skills.trip_miner.name_id = "menu_trip_miner"
		self.skills.trip_miner.desc_id = "menu_trip_miner_desc"
		self.skills.discipline.name_id = "menu_discipline"
		self.skills.discipline.desc_id = "menu_discipline_desc"
		self.skills.sharpshooter.name_id = "menu_sharpshooter"
		self.skills.sharpshooter.desc_id = "menu_sharpshooter_desc"
		self.skills.sharpshooter.icon_xy = {6, 5}
		self.skills.sharpshooter[2].upgrades = {"assault_rifle_recoil_index_addend", "snp_recoil_index_addend"}
		self.skills.trip_mine_expert.name_id = "menu_trip_mine_expert"
		self.skills.trip_mine_expert.desc_id = "menu_trip_mine_expert_desc"
		self.skills.trip_mine_expert.icon_xy = {4, 6}
		self.skills.trip_mine_expert[1].upgrades = {"trip_mine_can_switch_on_off"}
		self.skills.trip_mine_expert[2].upgrades = {"trip_mine_sensor_toggle", "trip_mine_sensor_highlight"}
		self.skills.hardware_expert.name_id = "menu_hardware_expert"
		self.skills.hardware_expert.desc_id = "menu_hardware_expert_desc"
		self.skills.hardware_expert.icon_xy = {5, 5}
		self.skills.hardware_expert[1].upgrades = {"player_drill_fix_interaction_speed_multiplier", "player_trip_mine_deploy_time_multiplier_2"}
		self.skills.hardware_expert[2].upgrades = {"player_drill_autorepair_1", "player_drill_autorepair_2", "player_sentry_gun_deploy_time_multiplier"}
		self.skills.sentry_gun.name_id = "menu_sentry_gun"
		self.skills.sentry_gun.desc_id = "menu_sentry_gun_desc"
		self.skills.sentry_gun[1].upgrades = {"sentry_gun", "sentry_gun_silent"}
		self.skills.sentry_targeting_package.icon_xy = {1, 6}
		self.skills.sentry_targeting_package.prerequisites = {"sentry_gun"}
		self.skills.blast_radius.name_id = "menu_blast_radius"
		self.skills.blast_radius.desc_id = "menu_jack_of_all_trades_beta_desc"
		self.skills.blast_radius[1].upgrades = {"deploy_interact_faster_1"}
		self.skills.blast_radius[2].upgrades = {"second_deployable_1"}
		self.skills.silent_drilling.name_id = "menu_silent_drilling"
		self.skills.silent_drilling.desc_id = "menu_silent_drilling_desc"
		self.skills.silent_drilling[1].upgrades = {"player_drill_alert"}
		self.skills.silent_drilling[2].upgrades = {"player_silent_drill"}
		self.skills.sentry_2_0.name_id = "menu_sentry_2_0"
		self.skills.sentry_2_0.desc_id = "menu_sentry_2_0_desc"
		self.skills.sentry_2_0.prerequisites = {"sentry_gun"}
		self.skills.shaped_charge.name_id = "menu_shaped_charge"
		self.skills.shaped_charge.desc_id = "menu_shaped_charge_desc"
		self.skills.insulation.name_id = "menu_insulation"
		self.skills.insulation.desc_id = "menu_insulation_desc"
		self.skills.insulation[2].upgrades = {"player_taser_self_shock"}
		self.skills.mag_plus.name_id = "menu_mag_plus"
		self.skills.mag_plus.desc_id = "menu_mag_plus_desc"
		self.skills.iron_man.name_id = "menu_iron_man"
		self.skills.iron_man.desc_id = "menu_iron_man_desc"
		self.skills.iron_man.icon_xy = {6, 4}
		self.skills.iron_man[1].upgrades = {"player_armor_multiplier"}
		self.skills.iron_man[2].upgrades = {"team_armor_regen_time_multiplier"}
		
		--ghost
		self.skills.scavenger.name_id = "menu_scavenger"
		self.skills.scavenger.desc_id = "menu_scavenger_desc"
		self.skills.scavenger.icon_xy = {2, 3}
		self.skills.scavenger[1].upgrades = {"player_small_loot_multiplier_1"}
		self.skills.scavenger[2].upgrades = {"player_small_loot_multiplier_2"}
		self.skills.sprinter.name_id = "menu_sprinter"
		self.skills.sprinter.desc_id = "menu_sprinter_desc"
		self.skills.sprinter.icon_xy = {7, 3}
		self.skills.sprinter[1].upgrades = {"player_stamina_regen_timer_multiplier", "player_stamina_regen_multiplier"}
		self.skills.sprinter[2].upgrades = {"player_run_dodge_chance", "player_run_speed_multiplier"}
		self.skills.cat_burglar.name_id = "menu_cat_burglar"
		self.skills.cat_burglar.desc_id = "menu_cat_burglar_desc"
		self.skills.cat_burglar[1].upgrades = {"player_fall_damage_multiplier"}
		self.skills.cat_burglar[1].upgrades = {"player_fall_health_damage_multiplier", "player_respawn_time_multiplier"}
		self.skills.transporter.name_id = "menu_transporter"
		self.skills.transporter.desc_id = "menu_transporter_desc"
		self.skills.transporter[1].upgrades = {"carry_interact_speed_multiplier_1"}
		self.skills.transporter[2].upgrades = {"carry_interact_speed_multiplier_2"}
		self.skills.chameleon.name_id = "menu_chameleon"
		self.skills.chameleon.desc_id = "menu_chameleon_desc"
		self.skills.chameleon.icon_xy = {5, 3}
		self.skills.chameleon[1].upgrades = {"player_suspicion_bonus", "player_sec_camera_highlight_mask_off", "player_special_enemy_highlight_mask_off"}
		self.skills.chameleon[2].upgrades = {"player_camouflage_bonus_1"}
		self.skills.cleaner.name_id = "menu_cleaner"
		self.skills.cleaner.desc_id = "menu_cleaner_desc"
		self.skills.cleaner[1].upgrades = {"player_buy_bodybags_asset", "weapon_special_damage_taken_multiplier"}
		self.skills.cleaner[2].upgrades = {"player_corpse_dispose_amount_2"}
		self.skills.assassin.name_id = "menu_assassin"
		self.skills.assassin.desc_id = "menu_assassin_desc"
		self.skills.martial_arts.desc_id = "menu_martial_arts_desc"
		self.skills.martial_arts.icon_xy = {1, 3}
		self.skills.martial_arts[1].upgrades = {"player_melee_knockdown_mul"}
		self.skills.martial_arts[2].upgrades = {"player_melee_damage_dampener"}
		self.skills.smg_master.name_id = "menu_smg_master"
		self.skills.smg_master.desc_id = "menu_smg_master_desc"
		self.skills.nine_lives.name_id = "menu_nine_lives"
		self.skills.nine_lives.desc_id = "menu_nine_lives_desc"
		self.skills.nine_lives[1].upgrades = {"player_additional_lives_1"}
		self.skills.nine_lives[2].upgrades = {"player_cheat_death_chance_1"}
		self.skills.hitman.name_id = "menu_hitman"
		self.skills.hitman.desc_id = "menu_hitman_desc"
		self.skills.hitman.icon_xy = {5, 9}
		self.skills.hitman[1].upgrades = {"weapon_silencer_damage_multiplier_1"}
		self.skills.hitman[2].upgrades = {"weapon_silencer_damage_multiplier_2", "weapon_silencer_armor_piercing_chance_1"}
		self.skills.magic_touch.name_id = "menu_magic_touch"
		self.skills.magic_touch.desc_id = "menu_magic_touch_desc"
		self.skills.magic_touch[2].upgrades = {"player_pick_lock_hard", "player_pick_lock_easy_speed_multiplier_2"}
		self.skills.silence_expert.name_id = "menu_silence_expert"
		self.skills.silence_expert.desc_id = "menu_silence_expert_desc"
		self.skills.silence_expert.icon_xy = {4, 4}
		self.skills.silence_expert[2].upgrades = {"weapon_silencer_spread_index_addend", "weapon_silencer_armor_piercing_chance_2"}
		self.skills.good_luck_charm.name_id = "menu_good_luck_charm"
		self.skills.good_luck_charm.desc_id = "menu_good_luck_charm_desc"
		self.skills.good_luck_charm[2].upgrades = {"player_tape_loop_duration_2"}
		self.skills.ecm_feedback.name_id = "menu_ecm_feedback"
		self.skills.ecm_feedback.desc_id = "menu_ecm_feedback_desc"
		self.skills.ecm_feedback[1].upgrades = {"ecm_jammer_can_activate_feedback"}
		self.skills.ecm_feedback[2].upgrades = {"ecm_jammer_feedback_duration_boost", "ecm_jammer_interaction_speed_multiplier", "ecm_jammer_can_retrigger"}
		self.skills.moving_target.name_id = "menu_moving_target"
		self.skills.moving_target.desc_id = "menu_moving_target_desc"
		self.skills.moving_target[2].upgrades = {"player_can_free_run"}
		
		--fugitive
		self.skills.freedom_call.name_id = "menu_freedom_call"
		self.skills.freedom_call.desc_id = "menu_freedom_call_desc"
		self.skills.freedom_call[1].upgrades = {"player_climb_speed_multiplier_1"}
		self.skills.hidden_blade.name_id = "menu_hidden_blade"
		self.skills.hidden_blade.desc_id = "menu_hidden_blade_desc"
		self.skills.hidden_blade[1].upgrades = {"player_melee_concealment_modifier"}
		self.skills.hidden_blade[2].upgrades = {"player_silent_kill"}
		self.skills.thick_skin.name_id = "menu_thick_skin"
		self.skills.thick_skin.desc_id = "menu_thick_skin_desc"
		self.skills.thick_skin.icon_xy = {2, 12}
		self.skills.thick_skin[1].upgrades = {"player_damage_shake_addend"}
		self.skills.thick_skin[2].upgrades = {"player_level_2_armor_addend", "player_level_3_armor_addend", "player_level_4_armor_addend"}
		self.skills.awareness.name_id = "menu_awareness"
		self.skills.awareness.desc_id = "menu_awareness_desc"
		self.skills.awareness.icon_xy = {7, 10}
		self.skills.awareness[1].upgrades = {"player_movement_speed_multiplier"}
		self.skills.awareness[2].upgrades = {"player_steelsight_normal_movement_speed"}
		self.skills.jail_workout.name_id = "menu_jail_workout"
		self.skills.jail_workout.desc_id = "menu_jail_workout_desc"
		self.skills.jail_workout.icon_xy = {6, 10}
		self.skills.jail_workout[1].upgrades = {"player_standstill_omniscience"}
		self.skills.jail_workout[2].upgrades = {"player_mask_off_pickup"}
		self.skills.alpha_dog.name_id = "menu_alpha_dog"
		self.skills.alpha_dog.desc_id = "menu_alpha_dog_desc"
		self.skills.alpha_dog[2].upgrades = {"player_crouch_dodge_chance_2"}
		self.skills.cell_mates.name_id = "menu_cell_mates"
		self.skills.cell_mates.desc_id = "menu_cell_mates_desc"
		self.skills.cell_mates[1].upgrades = {"player_gangster_damage_dampener_1"}
		self.skills.cell_mates[2].upgrades = {"player_gangster_damage_dampener_2"}
		self.skills.thug_life.name_id = "menu_thug_life"
		self.skills.thug_life.desc_id = "menu_thug_life_desc"
		self.skills.thug_life[1].upgrades = {"player_extra_corpse_dispose_amount"}
		self.skills.thug_life[2].upgrades = {"player_cleaner_cost_multiplier"}
		self.skills.tea_time.name_id = "menu_tea_time"
		self.skills.tea_time.desc_id = "menu_tea_time_desc"
		self.skills.second_chances.name_id = "menu_second_chances"
		self.skills.second_chances.desc_id = "menu_second_chances_desc"
		self.skills.second_chances.icon_xy = {5, 11}
		self.skills.second_chances[1].upgrades = {"bodybags_bag"}
		self.skills.second_chances[2].upgrades = {"bodybags_bag_quantity"}
		self.skills.tea_cookies.desc_id = "menu_tea_cookies_desc"
		self.skills.tea_cookies[2].upgrades = {"first_aid_kit_quantity_increase_2"}
		self.skills.trigger_happy.icon_xy = {7, 11}
		
		--missing skills
		self.skills.kilmer = {
			name_id = "menu_kilmer",
			desc_id = "menu_kilmer_desc",
			icon_xy = {1, 9},
			{
				upgrades = {
					"assault_rifle_reload_speed_multiplier",
					"snp_reload_speed_multiplier"
				},
				cost = self.costs.hightier
			},
			{
				upgrades = {
					"assault_rifle_move_spread_index_addend",
					"player_run_and_reload",
					"snp_move_spread_index_addend"
				},
				cost = self.costs.hightierpro
			}
		}
		self.skills.pistol_messiah = {
			name_id = "menu_pistol_messiah",
			desc_id = "menu_pistol_messiah_desc",
			icon_xy = {2, 9},
			{
				upgrades = {
					"player_pistol_revive_from_bleed_out_1"
				},
				cost = self.costs.hightier
			},
			{
				upgrades = {
					"player_pistol_revive_from_bleed_out_2"
				},
				cost = self.costs.hightierpro
			}
		}
		self.skills.master_craftsman = {
			name_id = "menu_master_craftsman",
			desc_id = "menu_master_craftsman_desc",
			icon_xy = {6, 9},
			{
				upgrades = {
					"trip_mine_explosion_size_multiplier_1",
					"trip_mine_explosion_size_multiplier_2"
				},
				cost = self.costs.default
			},
			{
				upgrades = {
					"trip_mine_marked_enemy_extra_damage"
				},
				cost = self.costs.pro
			}
		}
		self.skills.sentry_gun_2x = {
			name_id = "menu_sentry_gun_2x",
			desc_id = "menu_sentry_gun_2x_desc",
			icon_xy = {7, 6},
			prerequisites = {"sentry_gun"},
			{
				upgrades = {
					"sentry_gun_quantity_1"
				},
				cost = self.costs.hightier
			},
			{
				upgrades = {
					"sentry_gun_damage_multiplier"
				},
				cost = self.costs.hightierpro
			}
		}
		
		--Removing all perk decks after Grinder
		for i = 1, #self.specializations do
			table.remove(self.specializations, 12)
			table.remove(self.specializations, 13)
			table.remove(self.specializations, 14)
			table.remove(self.specializations, 15)
			table.remove(self.specializations, 16)
			table.remove(self.specializations, 17)
			table.remove(self.specializations, 18)
			table.remove(self.specializations, 19)
			table.remove(self.specializations, 20)
			table.remove(self.specializations, 21)
		end
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/upgradestweakdata" then
	local data = UpgradesTweakData.init
	function UpgradesTweakData:init(tweak_data)
		data(self, tweak_data)
		
		self.values.pistol.spread_index_addend = {1}
		self.values.pistol.fire_rate_multiplier = {2}
		self.values.player.convert_enemies_health_multiplier = {0.65}
		self.values.player.convert_enemies_damage_multiplier = {1, 1.45}
		self.values.player.passive_convert_enemies_health_multiplier = {0.6, 0.2}
		self.values.player.minion_master_health_multiplier = {1.2}
		self.values.player.pistol_revive_from_bleed_out = {1, 3}
		self.definitions.player_pistol_revive_from_bleed_out_1 = {
			category = "feature",
			name_id = "menu_player_pistol_revive_from_bleed_out",
			upgrade = {
				category = "player",
				upgrade = "pistol_revive_from_bleed_out",
				value = 1
			}
		}
		self.definitions.player_pistol_revive_from_bleed_out_2 = {
			category = "feature",
			name_id = "menu_player_pistol_revive_from_bleed_out",
			upgrade = {
				category = "player",
				upgrade = "pistol_revive_from_bleed_out",
				value = 2
			}
		}
		self.values.cooldown.long_dis_revive = {{0.75, 1}}
		
		self.values.player.suppression_multiplier = {1.25, 1.75}
		self.definitions.player_suppression_mul_1.upgrade.value = 2
		self.values.temporary.dmg_dampener_outnumbered = {{0.85, 7}}
		self.values.player.non_special_melee_multiplier = {1.5}
		self.values.player.melee_damage_multiplier = {1.5}
		self.values.shotgun.damage_multiplier = {1, 1.35}
		self.values.shotgun.recoil_index_addend = {1}
		self.values.player.flashbang_multiplier = {0.75, 0.25}
		self.values.player.bleed_out_health_multiplier = {1.25}
		self.player_damage_health_ratio_threshold = 0.25
		self.values.temporary.overkill_damage_multiplier = {{1.75, 5}}
		
		self.values.trip_mine.quantity = {1, 2, 3, 4, 5, 8}
		self.values.weapon.single_spread_index_addend = {1}
		self.values.sentry_gun.damage_multiplier = {4}
		self.values.trip_mine.quantity_1 = {1}
		self.definitions.trip_mine_quantity_increase_1.upgrade.upgrade = "quantity_1"
		self.values.trip_mine.quantity_3 = {3}
		self.values.player.deploy_interact_faster_1 = {0.2}
		self.definitions.trip_mine_quantity_increase_2.upgrade.value = 1
		self.definitions.trip_mine_quantity_increase_2.upgrade.upgrade = "quantity_3"
		
		self.values.player.small_loot_multiplier = {1.1, 1.3}
		self.definitions.player_small_loot_multiplier_2 = {
			name_id = "menu_player_small_loot_multiplier",
			category = "feature",
			upgrade = {
				value = 2,
				upgrade = "small_loot_multiplier",
				category = "player"
			}
		}
		self.values.player.run_dodge_chance = {0.25}
		self.values.smg.reload_speed_multiplier = {1.35}
		self.values.player.cheat_death_chance = {0.35}
		self.definitions.weapon_silencer_damage_multiplier_1 = {
			category = "feature",
			name_id = "silencer_damage_multiplier",
			upgrade = {
				category = "weapon",
				upgrade = "silencer_damage_multiplier",
				value = 1
			}
		}
		self.definitions.weapon_silencer_damage_multiplier_2 = {
			category = "feature",
			name_id = "silencer_damage_multiplier",
			upgrade = {
				category = "weapon",
				upgrade = "silencer_damage_multiplier",
				value = 2
			}
		}
		self.values.player.pick_lock_easy_speed_multiplier = {0.75, 0.5}
		self.definitions.player_pick_lock_easy_speed_multiplier_2 = {
			category = "feature",
			name_id = "menu_player_pick_lock_easy_speed_multiplier",
			upgrade = {
				category = "player",
				upgrade = "pick_lock_easy_speed_multiplier",
				value = 2
			}
		}
		self.definitions.weapon_silencer_armor_piercing_chance_2.upgrade.value = 2
		self.values.weapon.silencer_spread_index_addend = {2}
		
		self.values.player.gangster_damage_dampener = {0.9, 0.65}
		self.definitions.player_gangster_damage_dampener_1 = {
			category = "feature",
			name_id = "menu_player_gangster_damage_dampener",
			upgrade = {
				category = "player",
				upgrade = "gangster_damage_dampener",
				value = 1
			}
		}
		self.definitions.player_gangster_damage_dampener_2 = {
			category = "feature",
			name_id = "menu_player_gangster_damage_dampener",
			upgrade = {
				category = "player",
				upgrade = "gangster_damage_dampener",
				value = 2
			}
		}
		self.values.temporary.first_aid_damage_reduction = {{0.8, 10}}
		self.values.temporary.berserker_damage_multiplier = {{1, 3}, {1, 9}}
		self.values.pistol.stacking_hit_damage_multiplier = {
			{
				max_stacks = 4,
				max_time = 2,
				damage_bonus = 1.1
			},
			{
				max_stacks = 4,
				max_time = 8,
				damage_bonus = 1.1
			}
		}
		self.values.player.headshot_regen_armor_bonus = {1.5, 4.5}
		self.values.akimbo.recoil_index_addend = {-6, -4, -2}
	
		local editable_skill_descs = {
											--basic									aced
				mastermind = 				{{"2"}, 								{}},
				cable_guy = 				{{"75%", "50%"},						{"4", "2"}},
				triathlete = 				{{"100%"}, 								{"50%"}},
				combat_medic = 				{{"30%", "5"},							{"30%"}},
				inside_man = 				{{"50%"},								{}},
				fast_learner = 				{{"", "5", "10%"},						{"", "20%"}},
				leadership = 				{{"25%"},								{"50%"}},
				tactician = 				{{"15%"},								{}},
				equilibrium = 				{{"10%", "50%"},						{"100%"}},
				dominator = 				{{}, 									{"50%"}},
				stockholm_syndrome = 		{{"50%"},								{"1"}},
				medic_2x = 					{{"2"},									{"2"}},
				joker = 					{{}, 									{"55%", "35%", "65%"}},
				kilmer = 					{{"25%"},								{"50%"}},
				gun_fighter = 				{{"50%", "5"}, 							{"15", "10"}},
				control_freak = 			{{"10%", "", "40%"},					{"", "", "20%", "40%"}},
				black_marketeer = 			{{"1.5%", "5"}, 						{"4.5%", "5"}},
				pistol_messiah = 			{{"1"}, 								{"2"}},
				inspire = 					{{"50%", "20%", "10"},					{"75%"}},
								
				enforcer = 					{{"400%"}, 								{}},
				oppressor = 				{{"25%"}, 								{"50%"}},
				ammo_reservoir = 			{{"5"}, 								{"", "10"}},
				pack_mule = 				{{"50%"}, 								{"50%", "10", "1%"}},
				show_of_force = 			{{"50%"}, 								{"15%", "20"}},
				underdog = 					{{"18", "15%", "7"},					{"18", "15%", "7"}},
				steroids = 					{{"50%"}, 								{"50%"}},
				shotgun_impact = 			{{"25%"}, 								{"35%"}},
				shades = 					{{"25%"}, 								{"50%"}},
				tough_guy = 				{{"50%"}, 								{"25%"}},
				shotgun_cqb = 				{{"50%"}, 								{"125%"}},
				ammo_2x = 					{{"2"}, 								{"50%"}},
				wolverine = 				{{"", "250%", "25%"},					{"", "100%", "25%"}},
				from_the_hip = 				{{"20%"}, 								{"20%"}},
				bandoliers = 				{{"25%"}, 								{"175%"}},
				portable_saw = 				{{}, 									{"1"}},
				overkill = 					{{"75%", "5"}, 							{}},
				carbon_blade = 				{{"20%"}, 								{"50%", "20%"}},
				
				technician = 				{{"2"}, 								{}},
				rifleman = 					{{"100%"}, 								{"25%"}},
				trip_miner = 				{{"1"}, 								{"20%"}},
				discipline = 				{{"50%"}, 								{}},
				sharpshooter = 				{{"20%"}, 								{"25%"}},
				hardware_expert = 			{{"25%", "20%"}, 						{"30%", "50%"}},
				sentry_gun = 				{{}, 									{"150%"}},
				master_craftsman = 			{{"70%"}, 								{"15%"}},
				drill_expert = 				{{"15%"}, 								{"15%"}},
				sentry_targeting_package = 	{{"100%"}, 								{"150%", "50%"} 		},
				blast_radius = 				{{"20%"},								{"50%"}},
				silent_drilling = 			{{"65%"}, 								{}},
				shaped_charge = 			{{"3"}, 								{}},
				insulation = 				{{}, 									{"50%"}},
				sentry_gun_2x = 			{{"2"}, 								{"300%"}},
				mag_plus = 					{{"5"}, 								{"10"}},
				iron_man = 					{{"50%"}, 								{"25%"}},
							
				ghost = 					{{"1", "20"}, 							{}},
				scavenger = 				{{"10%"}, 								{"20%"}},
				sprinter = 					{{"25%", "25%"},						{"25%", "25%"}},
				cat_burglar = 				{{"75%"}, 								{"50%"}},
				transporter =				{{"25%"}, 								{"50%"} 				},
				chameleon = 				{{"25%"}, 								{"15%"}},
				cleaner = 					{{"5%", "3"}, 							{"1"}},	
				assassin = 					{{"25%", "10%"}, 						{"95%"}},
				martial_arts = 				{{"50%"}, 								{"50%"}},
				smg_master = 				{{"35%"}, 								{"20%"}},
				nine_lives = 				{{"1"}, 								{"35%"}},
				ecm_2x = 					{{"2"}, 								{"25%", "25%"}},
				hitman = 					{{"15%"}, 								{"15%", "15%"}},
				magic_touch = 				{{"25%"}, 								{"25%"} 				},
				ecm_booster = 				{{"25%"}, 								{}},
				silence_expert = 			{{"50%", "100%"}, 						{"50%", "15%"}},
				good_luck_charm = 			{{"10", "1"}, 							{"10"}},
				ecm_feedback = 				{{"50%-100%", "25", "1.5", "15-20"}, 	{"25%", "100%", "4"}},
		
				hoxton = 					{{"4"}, 								{}},
				freedom_call = 				{{"20%"}, 								{"15%"}},
				hidden_blade = 				{{"2"}, 								{"95%"}},
				thick_skin = 				{{"10"}, 								{"20"}},
				awareness =					{{"10%"}, 								{}},
				jail_workout = 				{{"3.5", "10"}, 						{}},
				alpha_dog = 				{{"5%"}, 								{"10%"}},
				cell_mates = 				{{"10%"}, 								{"25%"}},
				thug_life = 				{{"1"}, 								{"75%"}},
				tea_time = 					{{"50%"}, 								{"20%", "10"}},
				perseverance = 				{{"", "3", "60%"}, 						{"6"}},
				second_chances = 			{{""}, 									{"2"}},
				tea_cookies = 				{{"3"}, 								{"7"}},
				trigger_happy = 			{{"10%", "2", "4", "10%"}, 				{"8", "8"}},
				backstab = 					{{"3%", "3", "35", "30%"}, 				{"3%", "1", "35", "30%"}},
				prison_wife = 				{{"15", "2", "15"}, 					{"30", "2", "30"}},
				jail_diet = 				{{"1%", "3", "35", "10%"}, 				{"1%", "1", "35", "10%"}},
				akimbo = 					{{"-16", "50%"}, 						{"-8", "150%", "25%", "50%"}},
			}

		self.skill_descs = {}

		for skill_id, skill_desc in pairs(editable_skill_descs) do
			self.skill_descs[skill_id] = {}

			for index, skill_version in ipairs(skill_desc) do
				local version = index == 1 and "multibasic" or "multipro"
				self.skill_descs[skill_id][index] = #skill_version

				for i, desc in ipairs(skill_version) do
					self.skill_descs[skill_id][version .. (i == 1 and "" or tostring(i))] = desc
				end
			end
		end
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/playertweakdata" then
	local data = PlayerTweakData.init
	function PlayerTweakData:init(tweak_data)
		data(self, tweak_data)
		self.damage.MIN_DAMAGE_INTERVAL = 0.35
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/missiondoortweakdata" then
	--Fix for doors that using shaped charge from second slot.
	local data = MissionDoorTweakData.init
	function MissionDoorTweakData:init(tweak_data)
		data(self, tweak_data)
		self.reinforced_door_single.devices.c4[1].unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge")
		self.keycard_door_single.devices.c4[1].unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge")
		self.keycard_door_single.devices.c4[2].unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge")
		self.cage_door_deluxe.devices.c4[1].unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge")
		self.cage_door_deluxe_non_jamming.devices.c4[1].unit = Idstring("units/payday2/equipment/gen_equipment_shape_charge/gen_equipment_shape_charge")
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/interactiontweakdata" then
	local data = InteractionTweakData.init
	function InteractionTweakData:init(tweak_data)
		data(self, tweak_data)
		self.shaped_sharge.requires_upgrade = {
			category = "player",
			upgrade = "trip_mine_shaped_charge"
		}
		self.shaped_sharge.slot = 1
		self.shaped_sharge.blocked_hint = nil
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/equipmentstweakdata" then
	--Classic trip mine tweakdata + fixed medic bag deploy speed from the tier bonus.
	local data = EquipmentsTweakData.init
	function EquipmentsTweakData:init()
		data(self, tweak_data)
		self.trip_mine.quantity = {2}
		self.trip_mine.upgrade_name = {"trip_mine"}
		self.doctor_bag.upgrade_deploy_time_multiplier = {
			category = "doctor_bag",
			upgrade = "deploy_time_multiplier"
		}
	end
end
if string.lower(RequiredScript) == "lib/managers/playermanager" then
	function PlayerManager:equiptment_upgrade_value(category, upgrade, default)
		if category == "trip_mine" and upgrade == "quantity" then
			return self:upgrade_value(category, "quantity_1", default) + self:upgrade_value(category, "quantity_2", default) + self:upgrade_value(category, "quantity_3", default)
		end
		return self:upgrade_value(category, upgrade, default)
	end
end
if string.lower(RequiredScript) == "lib/units/enemies/cop/copdamage" then
	function CopDamage:damage_bullet(attack_data)
		if self._dead or self._invulnerable then
			return
		end

		if self:is_friendly_fire(attack_data.attacker_unit) then
			return "friendly_fire"
		end

		local is_civilian = CopDamage.is_civilian(self._unit:base()._tweak_table)

		if self._has_plate and attack_data.col_ray.body and attack_data.col_ray.body:name() == self._ids_plate_name and not attack_data.armor_piercing then
			local armor_pierce_roll = math.rand(1)
			local armor_pierce_value = 0

			if attack_data.attacker_unit == managers.player:player_unit() and not attack_data.weapon_unit:base().thrower_unit then
				armor_pierce_value = armor_pierce_value + attack_data.weapon_unit:base():armor_piercing_chance()
				armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("player", "armor_piercing_chance", 0)
				armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("weapon", "armor_piercing_chance", 0)
				armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("weapon", "armor_piercing_chance_2", 0)

				if attack_data.weapon_unit:base():got_silencer() then
					armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("weapon", "armor_piercing_chance_silencer", 0)
				end

				if attack_data.weapon_unit:base():is_category("saw") then
					armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("saw", "armor_piercing_chance", 0)
				end
			elseif attack_data.attacker_unit:base() and attack_data.attacker_unit:base().sentry_gun then
				local owner = attack_data.attacker_unit:base():get_owner()

				if alive(owner) then
					if owner == managers.player:player_unit() then
						armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("sentry_gun", "armor_piercing_chance", 0)
						armor_pierce_value = armor_pierce_value + managers.player:upgrade_value("sentry_gun", "armor_piercing_chance_2", 0)
					else
						armor_pierce_value = armor_pierce_value + (owner:base():upgrade_value("sentry_gun", "armor_piercing_chance") or 0)
						armor_pierce_value = armor_pierce_value + (owner:base():upgrade_value("sentry_gun", "armor_piercing_chance_2") or 0)
					end
				end
			end

			if armor_pierce_roll >= armor_pierce_value then
				return
			end
		end

		local result = nil
		local body_index = self._unit:get_body_index(attack_data.col_ray.body:name())
		local head = self._head_body_name and attack_data.col_ray.body and attack_data.col_ray.body:name() == self._ids_head_body_name
		local damage = attack_data.damage

		if self._unit:base():char_tweak().DAMAGE_CLAMP_BULLET then
			damage = math.min(damage, self._unit:base():char_tweak().DAMAGE_CLAMP_BULLET)
		end

		damage = damage * (self._marked_dmg_mul or 1)

		if self._marked_dmg_mul and self._marked_dmg_dist_mul then
			local dst = mvector3.distance(attack_data.origin, self._unit:position())
			local spott_dst = tweak_data.upgrades.values.player.marked_inc_dmg_distance[self._marked_dmg_dist_mul]

			if spott_dst[1] < dst then
				damage = damage * spott_dst[2]
			end
		end

		if self._unit:movement():cool() then
			damage = self._HEALTH_INIT
		end

		local headshot = false
		local headshot_multiplier = 1

		if attack_data.attacker_unit == managers.player:player_unit() then
			local damage_scale = nil

			if alive(attack_data.weapon_unit) and attack_data.weapon_unit:base() and attack_data.weapon_unit:base().is_weak_hit then
				local weak_hit = attack_data.weapon_unit:base():is_weak_hit(attack_data.col_ray and attack_data.col_ray.distance, attack_data.attacker_unit)
				damage_scale = weak_hit and 0.5 or 1
			end

			local critical_hit, crit_damage = self:roll_critical_hit(attack_data)

			if critical_hit then
				managers.hud:on_crit_confirmed(damage_scale)

				damage = crit_damage
				attack_data.critical_hit = true
			else
				managers.hud:on_hit_confirmed(damage_scale)
			end

			headshot_multiplier = managers.player:upgrade_value("weapon", "passive_headshot_damage_multiplier", 1)

			if tweak_data.character[self._unit:base()._tweak_table].priority_shout then
				damage = damage * managers.player:upgrade_value("weapon", "special_damage_taken_multiplier", 1)
			end

			if head then
				managers.player:on_headshot_dealt()

				headshot = true
			end
		end

		if not self._char_tweak.ignore_headshot and not self._damage_reduction_multiplier and head then
			if self._char_tweak.headshot_dmg_mul then
				damage = damage * self._char_tweak.headshot_dmg_mul * headshot_multiplier
			else
				damage = self._health * 10
			end
		end

		if attack_data.weapon_unit:base().get_add_head_shot_mul then
			local add_head_shot_mul = attack_data.weapon_unit:base():get_add_head_shot_mul()

			if not head and add_head_shot_mul and self._char_tweak and self._char_tweak.access ~= "tank" then
				local tweak_headshot_mul = math.max(0, self._char_tweak.headshot_dmg_mul - 1)
				local mul = tweak_headshot_mul * add_head_shot_mul + 1
				damage = damage * mul
			end
		end

		damage = self:_apply_damage_reduction(damage)
		attack_data.raw_damage = damage
		attack_data.headshot = head
		local damage_percent = math.ceil(math.clamp(damage / self._HEALTH_INIT_PRECENT, 1, self._HEALTH_GRANULARITY))
		damage = damage_percent * self._HEALTH_INIT_PRECENT
		damage, damage_percent = self:_apply_min_health_limit(damage, damage_percent)

		if self._immortal then
			damage = math.min(damage, self._health - 1)
		end

		if self._health <= damage then
			if self:check_medic_heal() then
				result = {
					type = "healed",
					variant = attack_data.variant
				}
			else
				if head then
					managers.player:on_lethal_headshot_dealt(attack_data.attacker_unit, attack_data)

					if math.random(10) < damage then
						self:_spawn_head_gadget({
							position = attack_data.col_ray.body:position(),
							rotation = attack_data.col_ray.body:rotation(),
							dir = attack_data.col_ray.ray
						})
					end
				end

				attack_data.damage = self._health
				result = {
					type = "death",
					variant = attack_data.variant
				}

				self:die(attack_data)
				self:chk_killshot(attack_data.attacker_unit, "bullet", headshot)
			end
		else
			attack_data.damage = damage
			local result_type = not self._char_tweak.immune_to_knock_down and (attack_data.knock_down and "knock_down" or attack_data.stagger and not self._has_been_staggered and "stagger") or self:get_damage_type(damage_percent, "bullet")
			result = {
				type = result_type,
				variant = attack_data.variant
			}

			self:_apply_damage_to_health(damage)
		end

		attack_data.result = result
		attack_data.pos = attack_data.col_ray.position

		if result.type == "death" then
			local data = {
				name = self._unit:base()._tweak_table,
				stats_name = self._unit:base()._stats_name,
				head_shot = head,
				weapon_unit = attack_data.weapon_unit,
				variant = attack_data.variant
			}

			if managers.groupai:state():all_criminals()[attack_data.attacker_unit:key()] then
				managers.statistics:killed_by_anyone(data)
			end

			if attack_data.attacker_unit == managers.player:player_unit() then
				local special_comment = self:_check_special_death_conditions(attack_data.variant, attack_data.col_ray.body, attack_data.attacker_unit, attack_data.weapon_unit)

				self:_comment_death(attack_data.attacker_unit, self._unit, special_comment)
				self:_show_death_hint(self._unit:base()._tweak_table)

				local attacker_state = managers.player:current_state()
				data.attacker_state = attacker_state

				managers.statistics:killed(data)
				if attack_data.attacker_unit:character_damage():bleed_out() and not CopDamage.is_civilian(self._unit:base()._tweak_table) then
					local messiah_revive = false
					if managers.player:has_category_upgrade("player", "pistol_revive_from_bleed_out") and not data.weapon_unit:base().thrower_unit then
						local weapon_data = data.weapon_unit:base():weapon_tweak_data()
						if (weapon_data.category == "pistol" or weapon_data.sub_category == "pistol") and attack_data.attacker_unit:character_damage():consume_messiah_charge() then
							messiah_revive = true
						end
					end
					if messiah_revive then
						attack_data.attacker_unit:character_damage():revive(true)
					end
				end
				self:_check_damage_achievements(attack_data, head)

				if not is_civilian and managers.player:has_category_upgrade("temporary", "overkill_damage_multiplier") and not attack_data.weapon_unit:base().thrower_unit and attack_data.weapon_unit:base():is_category("shotgun", "saw") then
					managers.player:activate_temporary_upgrade("temporary", "overkill_damage_multiplier")
				end

				if is_civilian then
					managers.money:civilian_killed()
				end
			elseif attack_data.attacker_unit:in_slot(managers.slot:get_mask("criminals_no_deployables")) then
				self:_AI_comment_death(attack_data.attacker_unit, self._unit)
			elseif attack_data.attacker_unit:base().sentry_gun then
				if Network:is_server() then
					local server_info = attack_data.weapon_unit:base():server_information()

					if server_info and server_info.owner_peer_id ~= managers.network:session():local_peer():id() then
						local owner_peer = managers.network:session():peer(server_info.owner_peer_id)

						if owner_peer then
							owner_peer:send_queued_sync("sync_player_kill_statistic", data.name, data.head_shot and true or false, data.weapon_unit, data.variant, data.stats_name)
						end
					else
						data.attacker_state = managers.player:current_state()

						managers.statistics:killed(data)
					end
				end

				local sentry_attack_data = deep_clone(attack_data)
				sentry_attack_data.attacker_unit = attack_data.attacker_unit:base():get_owner()

				if sentry_attack_data.attacker_unit == managers.player:player_unit() then
					self:_check_damage_achievements(sentry_attack_data, head)
				else
					self._unit:network():send("sync_damage_achievements", sentry_attack_data.weapon_unit, sentry_attack_data.attacker_unit, sentry_attack_data.damage, sentry_attack_data.col_ray and sentry_attack_data.col_ray.distance, head)
				end
			end
		end

		local hit_offset_height = math.clamp(attack_data.col_ray.position.z - self._unit:movement():m_pos().z, 0, 300)
		local attacker = attack_data.attacker_unit

		if attacker:id() == -1 then
			attacker = self._unit
		end

		local weapon_unit = attack_data.weapon_unit

		if alive(weapon_unit) and weapon_unit:base() and weapon_unit:base().add_damage_result then
			weapon_unit:base():add_damage_result(self._unit, result.type == "death", attacker, damage_percent)
		end

		local variant = nil

		if result.type == "knock_down" then
			variant = 1
		elseif result.type == "stagger" then
			variant = 2
			self._has_been_staggered = true
		elseif result.type == "healed" then
			variant = 3
		else
			variant = 0
		end

		self:_send_bullet_attack_result(attack_data, attacker, damage_percent, body_index, hit_offset_height, variant)
		self:_on_damage_received(attack_data)

		if not is_civilian then
			managers.player:send_message(Message.OnEnemyShot, nil, self._unit, attack_data)
		end

		result.attack_data = attack_data

		return result
	end
end
if string.lower(RequiredScript) == "lib/units/beings/player/playerdamage" then
	--Insulation skill fix.
	function PlayerDamage:damage_tase(attack_data)
		if self._god_mode then
			return
		end
		   
		local cur_state = self._unit:movement():current_state_name()
		   
		if cur_state ~= "tased" and cur_state ~= "fatal" then
			self:on_tased(false)
		   
			self._tase_data = attack_data
		   
			managers.player:set_player_state("tased")
		   
			local damage_info = {
				result = {
					variant = "tase",
					type = "hurt"
				}
			}
		   
			self:_call_listeners(damage_info)
		   
			if attack_data.attacker_unit and attack_data.attacker_unit:alive() and attack_data.attacker_unit:base()._tweak_table == "taser" then
				attack_data.attacker_unit:sound():say("post_tasing_taunt")
		
				if managers.blackmarket:equipped_mask().mask_id == tweak_data.achievement.its_alive_its_alive.mask then
					managers.achievment:award_progress(tweak_data.achievement.its_alive_its_alive.stat)
				end
			end
		end
		if cur_state == "tased" then
			if attack_data.attacker_unit:base()._tweak_table == "taser" or attack_data.attacker_unit:base()._tweak_table == "taser_titan" then
			   attack_data.attacker_unit:sound():say("post_tasing_taunt")
			end
		end	
	end
	
	function PlayerDamage:_regenerated(no_messiah)
		self:set_health(self:_max_health())
		self:_send_set_health()
		self:_set_health_effect()
		self._said_hurt = false
		self._revives = Application:digest_value(tweak_data.player.damage.LIVES_INIT + managers.player:upgrade_value("player", "additional_lives", 0), true)
		self._revive_health_i = 1
		managers.environment_controller:set_last_life(false)
		self._down_time = tweak_data.player.damage.DOWNED_TIME
		if not no_messiah then
			self._messiah_charges = managers.player:upgrade_value("player", "pistol_revive_from_bleed_out", 0)
		end
	end
	function PlayerDamage:consume_messiah_charge()
		if self:got_messiah_charges() then
			self._messiah_charges = self._messiah_charges - 1
			return true
		end
		return false
	end
	function PlayerDamage:got_messiah_charges()
		return self._messiah_charges and self._messiah_charges > 0
	end

	--Restored an old dodge and gangster damage reduction.
	function PlayerDamage:damage_bullet(attack_data)
		if not self:_chk_can_take_dmg() then
			return
		end

		local damage_info = {
			result = {
				variant = "bullet",
				type = "hurt"
			},
			attacker_unit = attack_data.attacker_unit
		}
		local pm = managers.player
		local dmg_mul = pm:damage_reduction_skill_multiplier("bullet")
		if CopDamage.is_gangster(attack_data.attacker_unit:base()._tweak_table) then
			dmg_mul = dmg_mul * managers.player:upgrade_value("player", "gangster_damage_dampener", 1)
		end
		attack_data.damage = attack_data.damage * dmg_mul
		attack_data.damage = managers.mutators:modify_value("PlayerDamage:TakeDamageBullet", attack_data.damage)
		attack_data.damage = managers.modifiers:modify_value("PlayerDamage:TakeDamageBullet", attack_data.damage, attack_data.attacker_unit:base()._tweak_table)

		if _G.IS_VR then
			local distance = mvector3.distance(self._unit:position(), attack_data.attacker_unit:position())

			if tweak_data.vr.long_range_damage_reduction_distance[1] < distance then
				local step = math.clamp(distance / tweak_data.vr.long_range_damage_reduction_distance[2], 0, 1)
				local mul = 1 - math.step(tweak_data.vr.long_range_damage_reduction[1], tweak_data.vr.long_range_damage_reduction[2], step)
				attack_data.damage = attack_data.damage * mul
			end
		end

		local damage_absorption = pm:damage_absorption()

		if damage_absorption > 0 then
			attack_data.damage = math.max(0, attack_data.damage - damage_absorption)
		end

		local dodge_roll = math.random()
		local dodge_value = tweak_data.player.damage.DODGE_INIT or 0
		local armor_dodge_chance = pm:body_armor_value("dodge")
		local skill_dodge_chance = pm:skill_dodge_chance(self._unit:movement():running(), self._unit:movement():crouching(), self._unit:movement():zipline_unit())
		dodge_value = dodge_value + armor_dodge_chance + skill_dodge_chance

		if self._temporary_dodge_t and TimerManager:game():time() < self._temporary_dodge_t then
			dodge_value = dodge_value + self._temporary_dodge
		end

		local smoke_dodge = 0

		for _, smoke_screen in ipairs(managers.player._smoke_screen_effects or {}) do
			if smoke_screen:is_in_smoke(self._unit) then
				smoke_dodge = tweak_data.projectiles.smoke_screen_grenade.dodge_chance

				break
			end
		end

		dodge_value = 1 - (1 - dodge_value) * (1 - smoke_dodge)

		if dodge_roll < dodge_value then
			if attack_data.damage > 0 then
				self:_send_damage_drama(attack_data, 0)
			end

			self:_call_listeners(damage_info)
			self:play_whizby(attack_data.col_ray.position)
			self:_hit_direction(attack_data.attacker_unit:position())

			self._next_allowed_dmg_t = Application:digest_value(pm:player_timer():time() + self._dmg_interval, true)
			self._last_received_dmg = attack_data.damage

			managers.player:send_message(Message.OnPlayerDodge)

			return
		end

		if attack_data.attacker_unit:base()._tweak_table == "tank" then
			managers.achievment:set_script_data("dodge_this_fail", true)
		end

		if self._god_mode then
			if attack_data.damage > 0 then
				self:_send_damage_drama(attack_data, attack_data.damage)
			end

			self:_call_listeners(damage_info)

			return
		elseif self._invulnerable or self._mission_damage_blockers.invulnerable then
			self:_call_listeners(damage_info)

			return
		elseif self:incapacitated() then
			return
		elseif self:is_friendly_fire(attack_data.attacker_unit) then
			return
		elseif self:_chk_dmg_too_soon(attack_data.damage) then
			return
		elseif self._unit:movement():current_state().immortal then
			return
		elseif self._revive_miss and math.random() < self._revive_miss then
			self:play_whizby(attack_data.col_ray.position)

			return
		end

		self._last_received_dmg = attack_data.damage
		self._next_allowed_dmg_t = Application:digest_value(pm:player_timer():time() + self._dmg_interval, true)

		if self:get_real_armor() > 0 then
			self._unit:sound():play("player_hit")
		else
			self._unit:sound():play("player_hit_permadamage")
		end

		local shake_armor_multiplier = pm:body_armor_value("damage_shake") * pm:upgrade_value("player", "damage_shake_multiplier", 1)
		local gui_shake_number = tweak_data.gui.armor_damage_shake_base / shake_armor_multiplier
		gui_shake_number = gui_shake_number + pm:upgrade_value("player", "damage_shake_addend", 0)
		shake_armor_multiplier = tweak_data.gui.armor_damage_shake_base / gui_shake_number
		local shake_multiplier = math.clamp(attack_data.damage, 0.2, 2) * shake_armor_multiplier

		self._unit:camera():play_shaker("player_bullet_damage", 1 * shake_multiplier)

		if not _G.IS_VR then
			managers.rumble:play("damage_bullet")
		end

		self:_hit_direction(attack_data.attacker_unit:position())
		pm:check_damage_carry(attack_data)

		attack_data.damage = managers.player:modify_value("damage_taken", attack_data.damage, attack_data)

		if self._bleed_out then
			self:_bleed_out_damage(attack_data)

			return
		end

		if not attack_data.ignore_suppression and not self:is_suppressed() then
			return
		end

		self:_check_chico_heal(attack_data)

		local armor_reduction_multiplier = 0

		if self:get_real_armor() <= 0 then
			armor_reduction_multiplier = 1
		end

		local health_subtracted = self:_calc_armor_damage(attack_data)

		if attack_data.armor_piercing then
			attack_data.damage = attack_data.damage - health_subtracted
		else
			attack_data.damage = attack_data.damage * armor_reduction_multiplier
		end

		health_subtracted = health_subtracted + self:_calc_health_damage(attack_data)

		if not self._bleed_out and health_subtracted > 0 then
			self:_send_damage_drama(attack_data, health_subtracted)
		elseif self._bleed_out and attack_data.attacker_unit and attack_data.attacker_unit:alive() and attack_data.attacker_unit:base()._tweak_table == "tank" then
			self._kill_taunt_clbk_id = "kill_taunt" .. tostring(self._unit:key())

			managers.enemy:add_delayed_clbk(self._kill_taunt_clbk_id, callback(self, self, "clbk_kill_taunt", attack_data), TimerManager:game():time() + tweak_data.timespeed.downed.fade_in + tweak_data.timespeed.downed.sustain + tweak_data.timespeed.downed.fade_out)
		end

		pm:send_message(Message.OnPlayerDamage, nil, attack_data)
		self:_call_listeners(damage_info)
	end
end
if string.lower(RequiredScript) == "lib/managers/menu/skilltreegui" then
	local NOT_WIN_32 = SystemInfo:platform() ~= Idstring("WIN32")
	local WIDTH_MULTIPLIER = NOT_WIN_32 and 0.6 or 0.6
	local CONSOLE_PAGE_ADJUSTMENT = NOT_WIN_32 and 0 or 0
	local TOP_ADJUSTMENT = NOT_WIN_32 and 50 or 60
	local NUM_TREES_PER_PAGE = 4
	
	Hooks:PreHook(SkillTreeGui, "_update_borders", "perks", function(self)	
		--A small fix of the tab bar that has slid up a bit.
		local tree_tabs_panel = self._skill_tree_panel:child("tree_tabs_panel")
		local spec_tabs_panel = self._specialization_panel:child("spec_tabs_panel")
		tree_tabs_panel:set_y(TOP_ADJUSTMENT + 1)
		spec_tabs_panel:set_y(TOP_ADJUSTMENT + 1)
	end)
	
	local function make_fine_text(text)
		local x, y, w, h = text:text_rect()

		text:set_size(w, h)
		text:set_position(math.round(text:x()), math.round(text:y()))
	end

	function SkillTreeSkillItem:init(skill_id, tier_panel, num_skills, i, tree, tier, w, h, skill_refresh_skills)
		SkillTreeSkillItem.super.init(self)

		self._skill_id = skill_id
		self._tree = tree
		self._tier = tier
		local skill_panel = tier_panel:panel({
			name = skill_id,
			w = w,
			h = h
		})
		self._skill_panel = skill_panel
		self._skill_refresh_skills = skill_refresh_skills
		local skill = tweak_data.skilltree.skills[skill_id]
		self._skill_name = managers.localization:text(skill.name_id)
		local texture_rect_x = skill.icon_xy and skill.icon_xy[1] or 0
		local texture_rect_y = skill.icon_xy and skill.icon_xy[2] or 0
		self._base_size = h - 10
		local state_image = skill_panel:bitmap({
			texture = "guis/textures/pd2/skilltree/icons_atlas",
			name = "state_image",
			layer = 1,
			texture_rect = {
				texture_rect_x * 64,
				texture_rect_y * 64,
				64,
				64
			},
			color = tweak_data.screen_colors.item_stage_3
		})

		state_image:set_size(self._base_size, self._base_size)
		state_image:set_blend_mode("add")

		local skill_text = skill_panel:text({
			word_wrap = true,
			name = "skill_text",
			vertical = "center",
			wrap = true,
			align = "left",
			blend_mode = "add",
			text = "",
			layer = 3,
			font = tweak_data.menu.pd2_small_font,
			font_size = tweak_data.menu.pd2_small_font_size,
			color = tweak_data.screen_colors.text,
			x = self._base_size + 10,
			w = skill_panel:w() - self._base_size - 10
		})

		state_image:set_x(5)
		state_image:set_center_y(skill_panel:h() / 2)

		self._inside_panel = skill_panel:panel({
			w = w - 10,
			h = h - 10
		})

		self._inside_panel:set_center(skill_panel:w() / 2, skill_panel:h() / 2)

		local cx = tier_panel:w() / num_skills
		skill_panel:set_x((i - 1) * w)

		self._box = BoxGuiObject:new(skill_panel, {
			sides = {
				2,
				2,
				2,
				2
			}
		})

		self._box:hide()

		local state_indicator = skill_panel:bitmap({
			texture = "guis/textures/pd2/skilltree/ace",
			name = "state_indicator",
			alpha = 0,
			layer = 0,
			color = Color.white:with_alpha(1)
		})

		state_indicator:set_size(state_image:w() * 2, state_image:h() * 2)
		state_indicator:set_blend_mode("add")
		state_indicator:set_rotation(360)
		state_indicator:set_center(state_image:center())
	end

	--Added the tier 0 skills that open the trees. (Couldn't found a way to make it shorter.)
	function SkillTreePage:init(tree, data, parent_panel, fullscreen_panel, tree_tab_h, skill_prerequisites)
		self._items = {}
		self._selected_item = nil
		self._tree = tree
		local tree_panel = parent_panel:panel({
			y = 0,
			visible = false,
			name = tostring(tree),
			w = math.round(parent_panel:w() * WIDTH_MULTIPLIER)
		})
		self._tree_panel = tree_panel
		self._bg_image = fullscreen_panel:bitmap({
			name = "bg_image",
			blend_mode = "add",
			layer = 1,
			texture = data.background_texture,
			w = fullscreen_panel:w(),
			h = fullscreen_panel:h()
		})

		self._bg_image:set_alpha(0.6)

		local aspect = fullscreen_panel:w() / fullscreen_panel:h()
		local texture_width = self._bg_image:texture_width()
		local texture_height = self._bg_image:texture_height()
		local sw = math.max(texture_width, texture_height * aspect)
		local sh = math.max(texture_height, texture_width / aspect)
		local dw = texture_width / sw
		local dh = texture_height / sh

		self._bg_image:set_size(dw * fullscreen_panel:w(), dh * fullscreen_panel:h())
		self._bg_image:set_right(fullscreen_panel:w())
		self._bg_image:set_center_y(fullscreen_panel:h() / 2)

		local panel_h = 0
		local h = (parent_panel:h() - tree_tab_h - TOP_ADJUSTMENT) / (8 - CONSOLE_PAGE_ADJUSTMENT)
		for i = 1, 7 do
			local color = Color.black
			local rect = tree_panel:rect({
				h = 2,
				blend_mode = "add",
				name = "rect" .. i,
				color = color
			})

			rect:set_bottom(tree_panel:h() - (i - CONSOLE_PAGE_ADJUSTMENT) * h)

			if true or i == 1 then
				rect:set_alpha(0)
				rect:hide()
			end
		end

		local tier_panels = tree_panel:panel({
			name = "tier_panels"
		})
		if data.skill then
			local tier_panel = tier_panels:panel({
				name = "tier_panel0",
				h = h
			})
			tier_panel:set_bottom(tree_panel:child("rect1"):top())
			local item = SkillTreeUnlockItem:new(data.skill, tier_panel, tree, tier_panel:w() / 3, h)
			table.insert(self._items, item)
			item:refresh(false)
		end
		for tier, tier_data in ipairs(data.tiers) do
			local unlocked = managers.skilltree:tier_unlocked(tree, tier)
			local tier_panel = tier_panels:panel({
				name = "tier_panel" .. tier,
				h = h
			})
			local num_skills = #tier_data

			tier_panel:set_bottom(tree_panel:child("rect" .. tostring(tier + 1)):top())

			local base_size = h
			local base_w = tier_panel:w() / math.max(#tier_data, 1)

			for i, skill_id in ipairs(tier_data) do
				local item = SkillTreeSkillItem:new(skill_id, tier_panel, num_skills, i, tree, tier, base_w, base_size, skill_prerequisites[skill_id])

				table.insert(self._items, item)
				item:refresh(not unlocked)
			end

			local tier_string = tostring(tier)
			local debug_text = tier_panel:text({
				word_wrap = false,
				name = "debug_text",
				wrap = false,
				align = "right",
				vertical = "bottom",
				blend_mode = "add",
				rotation = 360,
				layer = 2,
				text = tier_string,
				font = tweak_data.menu.pd2_small_font,
				font_size = tweak_data.menu.pd2_small_font_size,
				h = tweak_data.menu.pd2_small_font_size,
				color = tweak_data.screen_colors.item_stage_3
			})

			debug_text:set_world_bottom(tree_panel:child("rect" .. tostring(tier + 1)):world_top() + 2)

			local _, _, tw, _ = debug_text:text_rect()

			debug_text:move(tw * 2, 0)

			local lock_image = tier_panel:bitmap({
				texture = "guis/textures/pd2/skilltree/padlock",
				name = "lock",
				layer = 3,
				w = tweak_data.menu.pd2_small_font_size,
				h = tweak_data.menu.pd2_small_font_size,
				color = tweak_data.screen_colors.item_stage_3
			})

			lock_image:set_blend_mode("add")
			lock_image:set_rotation(360)
			lock_image:set_world_position(debug_text:world_right(), debug_text:world_y() - 2)
			lock_image:set_visible(false)

			local add_infamy_glow = false

			if managers.experience:current_rank() > 0 then
				local tree_name = tweak_data.skilltree.trees[tree].skill

				for infamy, item in pairs(tweak_data.infamy.items) do
					if managers.infamy:owned(infamy) then
						local skilltree = item.upgrades and item.upgrades.skilltree

						if skilltree then
							local tree = skilltree.tree
							local trees = skilltree.trees

							if tree and tree == tree_name or trees and table.contains(trees, tree_name) then
								add_infamy_glow = true

								break
							end
						end
					end
				end
			end

			local cost_string = (managers.skilltree:tier_cost(tree, tier) < 10 and "0" or "") .. tostring(managers.skilltree:tier_cost(tree, tier))
			local cost_text = tier_panel:text({
				word_wrap = false,
				name = "cost_text",
				wrap = false,
				align = "left",
				vertical = "bottom",
				blend_mode = "add",
				rotation = 360,
				layer = 2,
				text = cost_string,
				font = tweak_data.menu.pd2_small_font,
				font_size = tweak_data.menu.pd2_small_font_size,
				h = tweak_data.menu.pd2_small_font_size,
				color = tweak_data.screen_colors.item_stage_3
			})
			local x, y, w, h = cost_text:text_rect()

			cost_text:set_size(w, h)
			cost_text:set_world_bottom(tree_panel:child("rect" .. tostring(tier + 1)):world_top() + 2)
			cost_text:set_x(debug_text:right() + tw * 3)

			if add_infamy_glow then
				local glow = tier_panel:bitmap({
					texture = "guis/textures/pd2/crimenet_marker_glow",
					name = "cost_glow",
					h = 56,
					blend_mode = "add",
					w = 56,
					rotation = 360,
					color = tweak_data.screen_colors.button_stage_3
				})

				local function anim_pulse_glow(o)
					local t = 0
					local dt = 0

					while true do
						dt = coroutine.yield()
						t = (t + dt * 0.5) % 1

						o:set_alpha((math.sin(t * 180) * 0.5 + 0.5) * 0.8)
					end
				end

				glow:set_center(cost_text:center())
				glow:animate(anim_pulse_glow)
			end

			local color = unlocked and tweak_data.screen_colors.item_stage_1 or tweak_data.screen_colors.item_stage_2

			debug_text:set_color(color)
			cost_text:set_color(color)

			if not unlocked then
				-- Nothing
			end
		end

		local ps = managers.skilltree:points_spent(self._tree)
		local max_points = 1

		for _, tier in ipairs(tweak_data.skilltree.trees[self._tree].tiers) do
			for _, skill in ipairs(tier) do
				for to_unlock, _ in ipairs(tweak_data.skilltree.skills[skill]) do
					max_points = max_points + managers.skilltree:get_skill_points(skill, to_unlock)
				end
			end
		end

		local prev_tier_p = 0
		local next_tier_p = max_points
		local ct = 0

		for i = 1, 6 do
			local tier_unlocks = managers.skilltree:tier_cost(self._tree, i)

			if ps < tier_unlocks then
				next_tier_p = tier_unlocks

				break
			end

			ct = i
			prev_tier_p = tier_unlocks
		end

		local diff_p = next_tier_p - prev_tier_p
		local diff_ps = ps - prev_tier_p
		local dh = self._tree_panel:child("rect2"):bottom()
		local prev_tier_object = self._tree_panel:child("rect" .. tostring(ct + 1))
		local next_tier_object = self._tree_panel:child("rect" .. tostring(ct + 2))
		local prev_tier_y = prev_tier_object and prev_tier_object:top() or 0
		local next_tier_y = next_tier_object and next_tier_object:top() or 0

		if not next_tier_object then
			next_tier_object = self._tree_panel:child("rect" .. tostring(ct))
			next_tier_y = next_tier_object and next_tier_object:top() or 0
			next_tier_y = 2 * prev_tier_y - next_tier_y
		end

		if ct > 0 then
			dh = math.max(2, tier_panels:child("tier_panel1"):world_bottom() - math.lerp(prev_tier_y, next_tier_y, diff_ps / diff_p))
		else
			dh = 0
		end

		local points_spent_panel = tree_panel:panel({
			w = 4,
			name = "points_spent_panel",
			h = dh
		})
		self._points_spent_line = BoxGuiObject:new(points_spent_panel, {
			sides = {
				2,
				2,
				0,
				0
			}
		})

		self._points_spent_line:set_clipping(dh == 0)
		points_spent_panel:set_world_center_x(tier_panels:child("tier_panel1"):child("lock"):world_center())
		points_spent_panel:set_world_bottom(tier_panels:child("tier_panel1"):world_bottom())

		for i, item in ipairs(self._items) do
			item:link(i, self._items)
		end
	end
end
if string.lower(RequiredScript) == "lib/managers/skilltreemanager" then
	--Restored manager of the old skill trees.
	SkillTreeManager.VERSION = 11
	function SkillTreeManager:_create_tree_data(tree_id)
		self._global.trees[tree_id] = {
			unlocked = false,
			points_spent = Application:digest_value(0, true)
		}
	end
	
	function SkillTreeManager:unlock_tree(tree)
		if self._global.trees[tree].unlocked then
			Application:error("Tree", tree, "allready unlocked")
			return
		end
		local skill_id = tweak_data.skilltree.trees[tree].skill
		local to_unlock = managers.skilltree:next_skill_step(skill_id)
		local total_points, points = managers.skilltree:get_skill_points(skill_id, to_unlock)
		local skill = tweak_data.skilltree.skills[skill_id][to_unlock]
		if not skill or not skill.cost then
			print("[SkillTreeManager:unlock_tree] skill tree: \"" .. tostring(skill_id) .. "\" is missing cost!")
		end
		if total_points > self:points() then
			return
		end
		self._global.trees[tree].unlocked = true
		self:_spend_points(tree, nil, total_points, points)
	end
	
	function SkillTreeManager:get_skill_points(skill, index)
		local points = tweak_data.skilltree.skills[skill][index] and tweak_data.skilltree.skills[skill][index].cost and Application:digest_value(tweak_data.skilltree.skills[skill][index].cost, false) or 0
		local total_points = points
		if points > 0 then
			for _, tree in ipairs(tweak_data.skilltree.trees) do
				if tree.skill == skill then
					local unlocked = self:trees_unlocked()
					if unlocked < #tweak_data.skilltree.unlock_tree_cost then
						total_points = points + Application:digest_value(tweak_data.skilltree.unlock_tree_cost[unlocked + 1], false)
					end
				else
				end
			end
		end
		return total_points, points
	end
	
	
	function SkillTreeManager:get_tree_progress_2(tree, switch_data)
		return self:get_tree_progress_new(tree, switch_data)
	end
		
	function SkillTreeManager:switch_skills(selected_skill_switch)
		if selected_skill_switch == self._global.selected_skill_switch then
			return
		end
		if not self._global.skill_switches[selected_skill_switch] then
			return
		end
		if not self._global.skill_switches[selected_skill_switch].unlocked then
			return
		end
		local function unaquire_skill(skill_id)
			local progress_data = self._global.skills[skill_id]
			local skill_data = tweak_data.skilltree.skills[skill_id]
			for i = progress_data.unlocked, 1, -1 do
				local step_data = skill_data[i]
				local upgrades = step_data.upgrades
				if upgrades then
					for i = #upgrades, 1, -1 do
						local upgrade = upgrades[i]
						managers.upgrades:unaquire(upgrade, UpgradesManager.AQUIRE_STRINGS[2] .. "_" .. tostring(skill_id))
					end
				end
			end
		end

		for tree, data in pairs(tweak_data.skilltree.trees) do
			local tree_data = tweak_data.skilltree.trees[tree]
			for i = #tree_data.tiers, 1, -1 do
				local tier = tree_data.tiers[i]
				for _, skill in ipairs(tier) do
					unaquire_skill(skill)
				end
			end
			unaquire_skill(tree_data.skill)
		end
		self._global.selected_skill_switch = selected_skill_switch
		local data = self._global.skill_switches[self._global.selected_skill_switch]
		self._global.points = data.points
		self._global.trees = data.trees
		self._global.skills = data.skills
		for tree_id, tree_data in pairs(self._global.trees) do
			if tree_data.unlocked and not tweak_data.skilltree.trees[tree_id].dlc then
				local skill_id = tweak_data.skilltree.trees[tree_id].skill
				local skill = tweak_data.skilltree.skills[skill_id]
				local skill_data = self._global.skills[skill_id]
				for i = 1, skill_data.unlocked do
					self:_aquire_skill(skill[i], skill_id, true)
				end
				for tier, skills in pairs(tweak_data.skilltree.trees[tree_id].tiers) do
					for _, skill_id in ipairs(skills) do
						local skill = tweak_data.skilltree.skills[skill_id]
						local skill_data = self._global.skills[skill_id]
						for i = 1, skill_data.unlocked do
							self:_aquire_skill(skill[i], skill_id, true)
						end
					end
				end
			end
		end
		self:set_current_specialization(self:digest_value(data.specialization, false), 1)
		MenuCallbackHandler:_update_outfit_information()
	end
	
	function SkillTreeManager:_setup_skill_switches()
		self._global.skill_switches = {}
		local switch_data
		for i = 1, #tweak_data.skilltree.skill_switches do
			self._global.skill_switches[i] = {
				unlocked = i == 1,
				name = nil,
				points = Application:digest_value(0, true),
				specialization = false
			}
			switch_data = self._global.skill_switches[i]
			switch_data.trees = {}
			for tree, data in pairs(tweak_data.skilltree.trees) do
				switch_data.trees[tree] = {
					unlocked = false,
					points_spent = Application:digest_value(0, true)
				}
			end
			switch_data.skills = {}
			for skill_id, data in pairs(tweak_data.skilltree.skills) do
				switch_data.skills[skill_id] = {
					unlocked = 0,
					total = #data
				}
			end
		end
	end

	function SkillTreeManager:_spend_points(tree, tier, points, points_tier)
		local pre_unlocked_tier = self:current_max_tier(tree)
		managers.money:on_skillpoint_spent(tree, tier, points)
		self:_set_points(self:points() - points)
		self:_set_points_spent(tree, self:points_spent(tree) + points_tier)
		local post_unlocked_tier = self:current_max_tier(tree)
		if not tier or pre_unlocked_tier < post_unlocked_tier then
			self:_on_tier_unlocked(tree, post_unlocked_tier)
		end
		self:_on_points_spent(tree, points)
	end

	function SkillTreeManager:unlock(tree, skill_id)
		if not self._global.trees[tree].unlocked then
			Application:error("Cannot unlock skill", skill_id, "in tree", tree, ". Tree is locked")
			return
		end
		if self._global.skills[skill_id].unlocked >= self._global.skills[skill_id].total then
			Application:error("No more steps to unlock in skill", skill_id)
			return
		end
		local talent = tweak_data.skilltree.skills[skill_id]
		local prerequisites = talent.prerequisites or {}
		for _, prerequisite in ipairs(prerequisites) do
			local unlocked = managers.skilltree:skill_step(prerequisite)
			if unlocked and unlocked == 0 then
				return
			end
		end
		local to_unlock = managers.skilltree:next_skill_step(skill_id)
		local skill = talent[to_unlock]
		local total_points, points = managers.skilltree:get_skill_points(skill_id, to_unlock)
		if total_points > self:points() then
			return
		end
		self._global.skills[skill_id].unlocked = to_unlock
		local tier
		for i, tier_skills in ipairs(tweak_data.skilltree.trees[tree].tiers) do
			if table.contains(tier_skills, skill_id) then
				tier = i
			else
			end
		end
		self:_spend_points(tree, tier, total_points, points)
		self:_aquire_skill(skill, skill_id)
		self:_on_skill_unlocked(tree, skill_id)
		if SystemInfo:platform() == Idstring("WIN32") then
			managers.statistics:publish_skills_to_steam()
		end
	end

	function SkillTreeManager:_on_tier_unlocked(tree, tier)
		local skill_id = tweak_data.skilltree.trees[tree].skill
		local to_unlock = managers.skilltree:next_skill_step(skill_id)
		while tier >= to_unlock do
			local skill = tweak_data.skilltree.skills[skill_id][to_unlock]
			if not skill then
				print("SkillTreeManager:_on_tier_unlocked: No tier upgrade at tier", tier, "for tree", tree)
				break
			end
			self._global.skills[skill_id].unlocked = to_unlock
			self:_aquire_skill(skill, skill_id)
			self:_on_skill_unlocked(tree, skill_id)
			to_unlock = managers.skilltree:next_skill_step(skill_id)
		end
		managers.menu_component:on_tier_unlocked(tree, tier)
	end

	function SkillTreeManager:_on_skill_unlocked(tree, skill_id)
		managers.menu_component:on_skill_unlocked(tree, skill_id)
	end

	function SkillTreeManager:_unlock(tree, skill_id)
		local skill = tweak_data.skills.definitions[skill_id]
		self:_aquire_skill(skill, skill_id)
	end

	function SkillTreeManager:_aquire_skill(skill, skill_id, loading)
		if skill and skill.upgrades then
			for _, upgrade in ipairs(skill.upgrades) do
				managers.upgrades:aquire(upgrade, loading, UpgradesManager.AQUIRE_STRINGS[2] .. "_" .. tostring(skill_id))
			end
		end
	end

	function SkillTreeManager:_reset_skilltree(tree, forced_respec_multiplier)
		self:_set_points_spent(tree, 0)
		self._global.trees[tree].unlocked = false
		managers.money:on_respec_skilltree(tree, forced_respec_multiplier)
		local tree_data = tweak_data.skilltree.trees[tree]
		for i = #tree_data.tiers, 1, -1 do
			local tier = tree_data.tiers[i]
			for _, skill in ipairs(tier) do
				self:_unaquire_skill(skill)
			end
		end
		self:_unaquire_skill(tree_data.skill)
	end

	function SkillTreeManager:_verify_loaded_data(points_aquired_during_load)
		local level_points = managers.experience:current_level()
		local assumed_points = level_points + points_aquired_during_load
		for i, switch_data in ipairs(self._global.skill_switches) do
			local points = assumed_points
			for skill_id, data in pairs(clone(switch_data.skills)) do
				if not tweak_data.skilltree.skills[skill_id] then
					print("[SkillTreeManager:_verify_loaded_data] Skill doesn't exists", skill_id, ", removing loaded data.", "skill_switch", i)
					switch_data.skills[skill_id] = nil
				end
			end
			for tree_id, data in pairs(clone(switch_data.trees)) do
				if not tweak_data.skilltree.trees[tree_id] then
					print("[SkillTreeManager:_verify_loaded_data] Tree doesn't exists", tree_id, ", removing loaded data.", "skill switch", i)
					switch_data.trees[tree_id] = nil
				end
			end
			for tree_id, data in pairs(clone(switch_data.trees)) do
				points = points - Application:digest_value(data.points_spent, false)
			end
			local unlocked = self:trees_unlocked(switch_data.trees)
			while unlocked > 0 do
				points = points - Application:digest_value(tweak_data.skilltree.unlock_tree_cost[unlocked], false)
				unlocked = unlocked - 1
			end
			switch_data.points = Application:digest_value(points, true)
		end
		for i = 1, #self._global.skill_switches do
			if self._global.skill_switches[i] then
				if 0 > Application:digest_value(not self._global.skill_switches[i].points and 0, false) then
					local switch_data = self._global.skill_switches[i]
					switch_data.points = Application:digest_value(assumed_points, true)
					switch_data.trees = {}
					for tree, data in pairs(tweak_data.skilltree.trees) do
						switch_data.trees[tree] = {
							unlocked = false,
							points_spent = Application:digest_value(0, true)
						}
					end
					switch_data.skills = {}
					for skill_id, data in pairs(tweak_data.skilltree.skills) do
						switch_data.skills[skill_id] = {
							unlocked = 0,
							total = #data
						}
					end
				end
			end
		end
		if not self._global.skill_switches[self._global.selected_skill_switch] then
			self._global.selected_skill_switch = 1
		end
		local data = self._global.skill_switches[self._global.selected_skill_switch]
		self._global.points = data.points
		self._global.trees = data.trees
		self._global.skills = data.skills
		for tree_id, tree_data in pairs(self._global.trees) do
			if tree_data.unlocked and not tweak_data.skilltree.trees[tree_id].dlc then
				local skill_id = tweak_data.skilltree.trees[tree_id].skill
				local skill = tweak_data.skilltree.skills[skill_id]
				local skill_data = self._global.skills[skill_id]
				for i = 1, skill_data.unlocked do
					self:_aquire_skill(skill[i], skill_id, true)
				end
				for tier, skills in pairs(tweak_data.skilltree.trees[tree_id].tiers) do
					for _, skill_id in ipairs(skills) do
						local skill = tweak_data.skilltree.skills[skill_id]
						local skill_data = self._global.skills[skill_id]
						for i = 1, skill_data.unlocked do
							self:_aquire_skill(skill[i], skill_id, true)
						end
					end
				end
			end
		end
		local specialization_tweak = tweak_data.skilltree.specializations
		local points, points_left, data
		local total_points_spent = 0
		local current_specialization = self:digest_value(self._global.specializations.current_specialization, false, 1)
		local spec_data = specialization_tweak[current_specialization]
		if not spec_data or spec_data.dlc and not managers.dlc:is_dlc_unlocked(spec_data.dlc) then
			local old_specialization = self._global.specializations.current_specialization
			current_specialization = 1
			self._global.specializations.current_specialization = self:digest_value(current_specialization, true, 1)
			for i, switch_data in ipairs(self._global.skill_switches) do
				if switch_data.specialization == old_specialization then
					switch_data.specialization = self._global.specializations.current_specialization
				end
			end
		end
		for tree, data in ipairs(self._global.specializations) do
			if specialization_tweak[tree] then
				points = self:digest_value(data.points_spent, false)
				points_left = points
				for tier, spec_data in ipairs(specialization_tweak[tree]) do
					if points_left >= spec_data.cost then
						points_left = points_left - spec_data.cost
						if tree == current_specialization then
							for _, upgrade in ipairs(spec_data.upgrades) do
								managers.upgrades:aquire(upgrade, true, UpgradesManager.AQUIRE_STRINGS[3] .. tostring(current_specialization))
							end
						end
						if tier == #specialization_tweak[tree] then
							data.tiers.current_tier = self:digest_value(tier, true)
							data.tiers.max_tier = self:digest_value(#specialization_tweak[tree], true)
							data.tiers.next_tier_data = false
						end
					else
						data.tiers.current_tier = self:digest_value(tier - 1, true)
						data.tiers.max_tier = self:digest_value(#specialization_tweak[tree], true)
						data.tiers.next_tier_data = {
							current_points = self:digest_value(points_left, true),
							points = self:digest_value(spec_data.cost, true)
						}
						points_left = 0
						break
					end
				end
				data.points_spent = self:digest_value(points - points_left, true)
				total_points_spent = total_points_spent + (points - points_left)
			end
		end
		total_points_spent = total_points_spent + self:digest_value(self._global.specializations.points, false)
		if self:digest_value(self._global.specializations.total_points, false) ~= total_points_spent then
			Application:error("[SkillTreeManager] Specialization points do not match up, reseting everything!!!")
			self:reset_specializations()
		else
			local max_points = self:digest_value(self._global.specializations.max_points, false)
			local points = self:digest_value(self._global.specializations.points, false)
			if total_points_spent > max_points or max_points < points then
				self._global.specializations.total_points = self:digest_value(max_points, true)
				self._global.specializations.points = self:digest_value(math.max(total_points_spent - max_points, 0), true)
				self._global.specializations.points_present = self:digest_value(0, true)
				self._global.specializations.xp_present = self:digest_value(0, true)
				self._global.specializations.xp_leftover = self:digest_value(0, true)
			end
		end
	end
end
if string.lower(RequiredScript) == "lib/managers/menu/playerinventorygui" then
	--Classic column of spent skill points on each trees.
	function PlayerInventoryGui:set_skilltree_stats(panel, data) 
		return
	end

	PlayerInventoryGui._update_info_skilltree = function(self, name)
		local text_string = ""
		text_string = text_string .. managers.localization:text("menu_st_skill_switch_set", {skill_switch = managers.skilltree:get_skill_switch_name(managers.skilltree:get_selected_skill_switch(), true)}) .. "\n "
		local tree_to_string_id = {mastermind = "st_menu_mastermind", enforcer = "st_menu_enforcer", technician = "st_menu_technician", ghost = "st_menu_ghost", hoxton = "st_menu_hoxton_pack"}
		text_string = text_string .. "\n"
		
		local trees = {"mastermind", "enforcer", "technician", "ghost", "hoxton"}
		
		for i,tree in ipairs(trees) do
			local points, progress, num_skills = managers.skilltree:get_tree_progress_new(tree)
			points = string.format("%02d", points)
			text_string = text_string .. managers.localization:to_upper_text("menu_profession_progress", {profession = managers.localization:to_upper_text(tree_to_string_id[tree]), progress = points, num_skills = num_skills}) .. "\n"
		end
		self:set_info_text(text_string)
	end
end
if string.lower(RequiredScript) == "lib/managers/menu/menucomponentmanager" then
	--Fix of the cutted-off text that does not fit in the description window.
	local data = SkillTreeGui._set_selected_skill_item
	function SkillTreeGui:_set_selected_skill_item(item, no_sound)
		data(self, item, no_sound)
		local desc_text = self._skill_description_panel:child("text")
		desc_text:set_font_size(tweak_data.menu.pd2_small_font_size)
		local _, _, _, h = desc_text:text_rect()
		while h > self._skill_description_panel:h() - desc_text:top() do
			desc_text:set_font_size(desc_text:font_size() * 0.99)
			_, _, _, h = desc_text:text_rect()
		end
	end
	
	--Open old Skill tree UI instead of vanilla one.
	function MenuComponentManager:create_skilltree_new_gui(node)
		self:close_skilltree_new_gui()
		self._skilltree_gui = SkillTreeGui:new(self._ws, self._fullscreen_ws, node)
		self._new_skilltree_gui_active = true
		self:enable_skilltree_gui()
	end
	function MenuComponentManager:close_skilltree_new_gui()
		if self._skilltree_gui and not self._old_skilltree_gui_active then
			self._skilltree_gui:close()

			self._skilltree_gui = nil
			self._new_skilltree_gui_active = nil
		end
	end
	function MenuComponentManager:on_skill_unlocked(...)
		if self._skilltree_gui then
			self._skilltree_gui:on_skill_unlocked(...)
		end
	end
end
if string.lower(RequiredScript) == "lib/managers/menumanagerdialogs" then
	--Crash fix for "invest skill point" dialog window.
	function MenuManager:show_confirm_respec_skilltree(params)
		local tree_name = managers.localization:text(tweak_data.skilltree.trees[params.tree].name_id)
		local dialog_data = {
			title = managers.localization:text("dialog_skills_respec_title"),
			text = managers.localization:text("dialog_respec_skilltree", {
				tree = tree_name
			}),
			focus_button = 2
		}
		local yes_button = {
			text = managers.localization:text("dialog_yes"),
			callback_func = params.yes_func
		}
		local no_button = {
			text = managers.localization:text("dialog_no"),
			callback_func = params.no_func,
			cancel_button = true
		}
		dialog_data.button_list = {
			yes_button,
			no_button
		}
		dialog_data.no_upper = true

		managers.system_menu:show(dialog_data)
	end
end
if string.lower(RequiredScript) == "lib/managers/group_ai_states/groupaistatebase" then
	--One enemy hostage per dominator skill owner.
	function GroupAIStateBase:has_room_for_police_hostage()
		local nr_hostages_allowed = 0
		
		for u_key, u_data in pairs(self._player_criminals) do
			if u_data.unit:base().is_local_player then
				if managers.player:has_category_upgrade("player", "intimidate_enemies") then
					nr_hostages_allowed = nr_hostages_allowed + 1
				end
			elseif u_data.unit:base():upgrade_value("player", "intimidate_enemies") then
				nr_hostages_allowed = nr_hostages_allowed + 1
			end
		end
		
		return nr_hostages_allowed > self._police_hostage_headcount + table.size(self._converted_police)
	end
end
