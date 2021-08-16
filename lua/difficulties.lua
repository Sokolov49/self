if string.lower(RequiredScript) == "lib/managers/mission/elementspawnenemygroup" then
	-- Fix for custom cop spawn groups by Iamgoofball
	-- Updated version of the fix from SC's Overhaul in Restoration mod
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	
	groupsOLD = {
		"tac_shield_wall_charge",
		"FBI_spoocs",
		"tac_tazer_charge",
		"tac_tazer_flanking",
		"tac_shield_wall",
		"tac_swat_rifle_flank",
		"tac_shield_wall_ranged",
		"tac_bull_rush"
	}  

	local old_finalize_values = ElementSpawnEnemyGroup._finalize_values
	function ElementSpawnEnemyGroup:_finalize_values()
		old_finalize_values(self)
				
		local groups = self._values.preferred_spawn_groups
		-- If we have an ordinary spawn with exactly the old group elements, add all defined groups.
		if groups and #groups == #groupsOLD and table.contains_all(groups, groupsOLD) and difficulty_index < 7 then
			for name,_ in pairs(tweak_data.group_ai.enemy_spawn_groups) do
				if not table.contains(groups, name) then
					table.insert(groups, name)
				end
			end
		end
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/groupaitweakdata" then
	local data = GroupAITweakData.init
	function GroupAITweakData:init(tweak_data)
		data(self, tweak_data)
		local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
		local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	
		if difficulty_index <= 2 then
			self.special_unit_spawn_limits = {
				medic = 0,
				tank = 1,
				taser = 1,
				spooc = 0,
				shield = 2
			}
		elseif difficulty_index == 3 then
			self.special_unit_spawn_limits = {
				medic = 0,
				tank = 1,
				taser = 2,
				spooc = 1,
				shield = 4
			}
		elseif difficulty_index == 4 then
			self.special_unit_spawn_limits = {
				medic = 0,
				tank = 3,
				taser = 4,
				spooc = 2,
				shield = 5
			}
		elseif difficulty_index == 5 then
			self.special_unit_spawn_limits = {
				medic = 0,
				tank = 3,
				taser = 4,
				spooc = 3,
				shield = 5
			}
		else
			self.special_unit_spawn_limits = {
				medic = 0,
				tank = 3,
				taser = 4,
				spooc = 4,
				shield = 5
			}
		end
		
		if difficulty_index == 8 then
			self.special_unit_spawn_limits.medic = 3
		end
		
		if difficulty_index < 7 then
			self._tactics = {
				CS_cop = {
					"provide_coverfire",
					"provide_support",
					"ranged_fire",
					"groupcsr"
				},
				CS_cop_stealth = {
					"flank",
					"provide_coverfire",
					"provide_support"
				},
				CS_swat_rifle = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"ranged_fire",
					"deathguard",
					"groupcsr"
				},
				CS_swat_shotgun = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield_cover",
					"groupcsr"
				},
				CS_swat_heavy = {
					"smoke_grenade",
					"charge",
					"flash_grenade",
					"provide_coverfire",
					"provide_support",
					"groupcsr"
				},
				CS_shield = {
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				CS_swat_rifle_flank = {
					"flank",
					"flash_grenade",
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support"
				},
				CS_swat_shotgun_flank = {
					"flank",
					"flash_grenade",
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support"
				},
				CS_swat_heavy_flank = {
					"flank",
					"flash_grenade",
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield_cover"
				},
				CS_shield_flank = {
					"flank",
					"charge",
					"flash_grenade",
					"provide_coverfire",
					"provide_support",
					"shield"
				},
				CS_tazer = {
					"flank",
					"charge",
					"flash_grenade",
					"shield_cover",
					"murder"
				},
				CS_sniper = {
					"ranged_fire",
					"provide_coverfire",
					"provide_support"
				},
				FBI_suit = {
					"flank",
					"ranged_fire",
					"flash_grenade",
					"grouphrtr"
				},
				FBI_suit_stealth = {
					"provide_coverfire",
					"provide_support",
					"flash_grenade",
					"flank",
					"grouphrtr"
				},
				FBI_swat_rifle = {
					"smoke_grenade",
					"flash_grenade",
					"provide_coverfire",
					"charge",
					"provide_support",
					"ranged_fire",
					"groupcsr"
				},
				FBI_swat_shotgun = {
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"groupcsr"
				},
				FBI_heavy = {
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield_cover",
					"deathguard",
					"groupcsr"
				},
				FBI_shield = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				FBI_swat_rifle_flank = {
					"flank",
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support"
				},
				FBI_swat_shotgun_flank = {
					"flank",
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support"
				},
				FBI_heavy_flank = {
					"flank",
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield_cover"
				},
				FBI_shield_flank = {
					"flank",
					"smoke_grenade",
					"flash_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield"
				},
				FBI_tank = {
					"charge",
					"deathguard",
					"shield_cover",
					"smoke_grenade"
				},
				Phalanx_minion = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				Phalanx_vip = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				spooc = {
					"charge",
					"shield_cover",
					"smoke_grenade"
				}
			}
			self.enemy_spawn_groups.CS_defend_a = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_cop_C45_R870",
						freq = 1,
						tactics = self._tactics.CS_cop,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.CS_defend_b = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_swat_MP5",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.CS_cop,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.CS_defend_c = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_heavy_M4",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.CS_cop,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.CS_cops = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_cop_C45_R870",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.CS_cop,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.CS_stealth_a = {
				amount = {2, 3},
				spawn = {
					{
						unit = "CS_cop_stealth_MP5",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.CS_cop_stealth,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.CS_swats = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_swat_MP5",
						freq = 1,
						tactics = self._tactics.CS_swat_rifle,
						rank = 2
					},
					{
						unit = "CS_swat_R870",
						freq = 0.5,
						amount_max = 2,
						tactics = self._tactics.CS_swat_shotgun,
						rank = 1
					},
					{
						unit = "CS_swat_MP5",
						freq = 0.33,
						tactics = self._tactics.CS_swat_rifle_flank,
						rank = 3
					}
				}
			}
			self.enemy_spawn_groups.CS_heavys = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_heavy_M4",
						freq = 1,
						tactics = self._tactics.CS_swat_rifle,
						rank = 2
					},
					{
						unit = "CS_heavy_M4",
						freq = 0.35,
						tactics = self._tactics.CS_swat_rifle_flank,
						rank = 3
					}
				}
			}
			self.enemy_spawn_groups.CS_shields = {
				amount = {3, 4},
				spawn = {
					{
						unit = "CS_shield",
						freq = 1,
						amount_min = 1,
						amount_max = 2,
						tactics = self._tactics.CS_shield,
						rank = 3
					},
					{
						unit = "CS_cop_stealth_MP5",
						freq = 0.5,
						amount_max = 1,
						tactics = self._tactics.CS_cop_stealth,
						rank = 1
					},
					{
						unit = "CS_heavy_M4_w",
						freq = 0.75,
						amount_max = 1,
						tactics = self._tactics.CS_swat_heavy,
						rank = 2
					}
				}
			}	
			if difficulty_index < 6 then
				self.enemy_spawn_groups.CS_tazers = {
					amount = {1, 3},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.CS_tazer,
							rank = 2
						},
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_max = 2,
							tactics = self._tactics.CS_cop_stealth,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.CS_tazers = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 3,
							tactics_ = self._tactics.CS_tazer,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.FBI_shield,
							rank = 3
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_max = 2,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 1
						}
					}
				}
			end
			self.enemy_spawn_groups.CS_tanks = {
				amount = {1, 2},
				spawn = {
					{
						unit = "FBI_tank",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.FBI_tank,
						rank = 2
					},
					{
						unit = "CS_tazer",
						freq = 0.5,
						amount_max = 1,
						tactics = self._tactics.CS_tazer,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_defend_a = {
				amount = {3, 3},
				spawn = {
					{
						unit = "FBI_suit_C45_M4",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.FBI_suit,
						rank = 2
					},
					{
						unit = "CS_cop_C45_R870",
						freq = 1,
						tactics = self._tactics.FBI_suit,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_defend_b = {
				amount = {3, 3},
				spawn = {
					{
						unit = "FBI_suit_M4_MP5",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.FBI_suit,
						rank = 2
					},
					{
						unit = "FBI_swat_M4",
						freq = 1,
						tactics = self._tactics.FBI_suit,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_defend_c = {
				amount = {3, 3},
				spawn = {
					{
						unit = "FBI_swat_M4",
						freq = 1,
						tactics = self._tactics.FBI_suit,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_defend_d = {
				amount = {2, 3},
				spawn = {
					{
						unit = "FBI_heavy_G36",
						freq = 1,
						tactics = self._tactics.FBI_suit,
						rank = 1
					}
				}
			}
			if difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_stealth_a = {
					amount = {2, 3},
					spawn = {
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 1
						},
						{
							unit = "CS_tazer",
							freq = 1,
							amount_max = 2,
							tactics = self._tactics.CS_tazer,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_stealth_a = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 2
						},
						{
							unit = "CS_tazer",
							freq = 1,
							amount_max = 2,
							tactics = self._tactics.CS_tazer,
							rank = 1
						}
					}
				}
			end
			if difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_stealth_b = {
					amount = {2, 3},
					spawn = {
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 1
						},
						{
							unit = "FBI_suit_M4_MP5",
							freq = 0.75,
							tactics = self._tactics.FBI_suit,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_stealth_b = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 1
						},
						{
							unit = "FBI_suit_M4_MP5",
							freq = 0.75,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 2
						}
					}
				}
			end
			if difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_swats = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_swat_M4",
							freq = 0.75,
							tactics = self._tactics.FBI_swat_rifle_flank,
							rank = 3
						},
						{
							unit = "FBI_swat_R870",
							freq = 0.5,
							amount_max = 2,
							tactics = self._tactics.FBI_swat_shotgun,
							rank = 1
						},
						{
							unit = "spooc",
							freq = 0.15,
							amount_max = 2,
							tactics = self._tactics.spooc,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_swats = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 1
						},
						{
							unit = "FBI_suit_M4_MP5",
							freq = 1,
							tactics = self._tactics.FBI_swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_swat_R870",
							amount_min = 2,
							freq = 1,
							tactics = self._tactics.FBI_swat_shotgun,
							rank = 3
						}
					}
				}
			end
			if difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_heavys = {
					amount = {2, 3},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 1
						},
						{
							unit = "FBI_heavy_G36",
							freq = 0.75,
							tactics = self._tactics.FBI_swat_rifle_flank,
							rank = 2
						},
						{
							unit = "CS_tazer",
							freq = 0.25,
							amount_max = 1,
							tactics = self._tactics.CS_tazer,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_heavys = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_heavy_G36_w",
							freq = 1,
							amount_min = 4,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 1
						},
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							tactics = self._tactics.FBI_heavy_flank,
							rank = 2
						}
					}
				}
			end
			if difficulty_index == 8 then
				self.enemy_spawn_groups.FBI_shields = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 3,
							amount_max = 4,
							tactics = self._tactics.FBI_shield,
							rank = 3
						},
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 1
						},
						{
							unit = "spooc",
							freq = 0.15,
							amount_max = 2,
							tactics = self._tactics.spooc,
							rank = 1
						},
						{
							unit = "medic_R870",
							freq = 0.75,
							amount_min = 2,
							tactics = self._tactics.CS_swat_heavy,
							rank = 2
						},
						{
							unit = "CS_tazer",
							freq = 0.75,
							amount_min = 2,
							tactics = self._tactics.CS_swat_heavy,
							rank = 2
						}
					}
				}
			elseif difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_shields = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 1,
							amount_max = 2,
							tactics = self._tactics.FBI_shield_flank,
							rank = 3
						},
						{
							unit = "CS_tazer",
							freq = 0.75,
							amount_max = 1,
							tactics = self._tactics.CS_tazer,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 0.5,
							amount_max = 1,
							tactics = self._tactics.FBI_swat_rifle_flank,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_shields = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 3,
							amount_max = 4,
							tactics = self._tactics.FBI_shield,
							rank = 3
						},
						{
							unit = "FBI_suit_stealth_MP5",
							freq = 1,
							amount_min = 1,
							tactics = self._tactics.FBI_suit_stealth,
							rank = 1
						},
						{
							unit = "spooc",
							freq = 0.15,
							amount_max = 2,
							tactics = self._tactics.spooc,
							rank = 1
						},
						{
							unit = "CS_tazer",
							freq = 0.75,
							amount_min = 2,
							tactics = self._tactics.CS_swat_heavy,
							rank = 2
						}
					}
				}
			end
			if difficulty_index < 6 then
				self.enemy_spawn_groups.FBI_tanks = {
					amount = {3, 4},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_max = 1,
							tactics = self._tactics.FBI_tank,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 0.5,
							amount_min = 1,
							amount_max = 2,
							tactics = self._tactics.FBI_shield_flank,
							rank = 3
						},
						{
							unit = "FBI_heavy_G36_w",
							freq = 0.75,
							amount_min = 1,
							tactics = self._tactics.FBI_heavy_flank,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.FBI_tanks = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 2,
							tactics = self._tactics.FBI_tank,
							rank = 3
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 1,
							amount_max = 2,
							tactics = self._tactics.FBI_shield,
							rank = 3
						},
						{
							unit = "CS_tazer",
							freq = 0.75,
							amount_min = 1,
							tactics = self._tactics.FBI_swat_rifle,
							rank = 2
						}
					}
				}
			end

			if difficulty_index < 6 then
				self.smoke_and_flash_grenade_timeout = {10, 20}
			else
				self.smoke_and_flash_grenade_timeout = {4, 6}
			end
			
			if difficulty_index <= 2 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {180, 300},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {60, 120},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {45, 60},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			else
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			end
			
			self.besiege.assault.sustain_duration_min = {0, 80, 120}
			self.besiege.assault.sustain_duration_max = {0, 80, 120}
			
			if difficulty_index <= 2 then
				self.besiege.assault.delay = {80, 70, 30}
			elseif difficulty_index == 3 then         
				self.besiege.assault.delay = {45, 35, 20}
			elseif difficulty_index == 4 then         
				self.besiege.assault.delay = {40, 30, 20}
			elseif difficulty_index == 5 then         
				self.besiege.assault.delay = {30, 20, 15}
			else                                      
				self.besiege.assault.delay = {20, 15, 10}
			end
			if is_console then
				self.besiege.assault.force = 		{0, 4, 7}
				self.besiege.assault.force_pool = 	{0, 60, 100}
			else                                        
				self.besiege.assault.force = 		{0, 5, 7}
				self.besiege.assault.force_pool = 	{0, 20, 50}
			end
			
			if difficulty_index <= 2 then
				self.besiege.assault.groups = {
					CS_swats = 		{0,		1, 		0.85},
					CS_shields = 	{0,		0, 		0.15},
					single_spooc = 	{0,		0, 		0 	}
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.groups = {
					CS_swats = 		{0,		1, 		0 	},
					CS_heavys = 	{0,		0.2, 	0.7 },
					CS_shields = 	{0,		0.02, 	0.2 },
					CS_tazers = 	{0,		0.05, 	0.15},
					CS_tanks = 		{0,		0.01, 	0.05},
					single_spooc = 	{0,		0, 		0 	}
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.groups = {
					FBI_swats = 	{0.1, 		1, 			1	},
					FBI_heavys = 	{0.05,		0.25, 		0.5	},
					FBI_shields = 	{0.1, 		0.2, 		0.2	},
					FBI_tanks = 	{0, 		0.1, 		0.15},
					FBI_spoocs = 	{0, 		0.1, 		0.2	},
					CS_tazers = 	{0.05,		0.15, 		0.2	},
					single_spooc = 	{0, 		0, 			0	}
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.groups = {
					FBI_swats = 	{0.2, 	1, 		1 	},
					FBI_heavys = 	{0.1, 	0.5, 	0.75},
					FBI_shields = 	{0.1, 	0.3, 	0.4 },
					FBI_tanks = 	{0, 	0.25, 	0.3 },
					CS_tazers = 	{0.1, 	0.25, 	0.25},
					single_spooc =	{0, 	0, 		0 	}
				}
			else
				self.besiege.assault.groups = {
					FBI_swats = 	{0.2,	0.8, 		0.8 },
					FBI_heavys = 	{0.1,	0.3, 		0.4 },
					FBI_shields = 	{0.1,	0.5, 		0.4 },
					FBI_tanks = 	{0.1,	0.5, 		0.5 },
					CS_tazers = 	{0.1,	0.5, 		0.45},
					FBI_spoocs = 	{0, 	0.45,		0.45},
					single_spooc = 	{1, 	1, 			1	}
				}
			end
			if difficulty_index <= 2 then
				self.besiege.reenforce.groups = {
					CS_defend_a = {1,	0.2,	0},
					CS_defend_b = {0,	1,		1}
				}
			elseif difficulty_index == 3 then
				self.besiege.reenforce.groups = {
					CS_defend_a = {1,	0,	0},
					CS_defend_b = {2,	1,	0},
					CS_defend_c = {0,	0,	1}
				}
			elseif difficulty_index == 4 then
				self.besiege.reenforce.groups = {
					CS_defend_a = 	{1,		0,		0},
					CS_defend_b = 	{2,		1,		0},
					CS_defend_c = 	{0,		0,		1},
					FBI_defend_a = 	{0,		1,		0},
					FBI_defend_b = 	{0,		0,		1}
				}
			elseif difficulty_index == 5 then
				self.besiege.reenforce.groups = {
					CS_defend_a = 	{0.1,	0,		0},
					FBI_defend_b = 	{1, 	1,		0},
					FBI_defend_c = 	{0, 	1,		0},
					FBI_defend_d = 	{0, 	0,		1}
				}
			else
				self.besiege.reenforce.groups = {
					CS_defend_a = 	{0.1,	0,		0},
					FBI_defend_b = 	{1, 	1,		0},
					FBI_defend_c = 	{0, 	1,		0},
					FBI_defend_d = 	{0, 	0,		1}
				}
			end
			if difficulty_index <= 2 then
				self.besiege.recon.groups = {
					CS_stealth_a = 	{1,		1,	0},
					CS_swats = 		{0,		1,	1},
					single_spooc = 	{0,		0,	0}
				}
			elseif difficulty_index == 3 then
				self.besiege.recon.groups = {
					CS_stealth_a = 	{1,		0, 		0	},
					CS_swats = 		{0,		1, 		1	},
					CS_tazers = 	{0,		0.1,	0.15},
					FBI_stealth_b = {0,		0, 		0.1	},
					single_spooc = 	{0,		0, 		0	}
				}
			elseif difficulty_index == 4 then
				self.besiege.recon.groups = {
					FBI_stealth_a = {1,		0.5,	0},
					FBI_stealth_b = {0,		0, 		1},
					single_spooc = 	{0,		0, 		0}
				}
			elseif difficulty_index == 5 then
				self.besiege.recon.groups = {
					FBI_stealth_a = {0.5, 		1, 		1},
					FBI_stealth_b = {0.25,		0.5,	1},
					single_spooc = 	{0, 		0, 		0}
				}
			else
				self.besiege.recon.groups = {
					FBI_stealth_a = {0.5, 	1, 		1},
					FBI_stealth_b = {0.25, 	0.5,	1},
					single_spooc = 	{0, 	0, 		0}
				}
			end
			
			self.phalanx.spawn_chance = {
				decrease = 0,
				start = 0,
				respawn_delay = 0,
				increase = 0,
				max = 0
			}
		end
		
		if difficulty_index > 6 then
			self.besiege.assault.force_balance_mul = {
				1,
				2,
				3,
				4
			}
			self.besiege.assault.force_pool_balance_mul = {
				1,
				2,
				3,
				4
			}
		end
		
		if difficulty_index < 6 then
			self.flash_grenade.timer = 1
		else
			self.flash_grenade.timer = 0.5
		end
		
		local fbi_swat_2 = Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
		local fbi_heavy_1 = Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
		local shield_1 = Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
		local bulldozer_2 = Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
		local bulldozer_3 = Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
		local akan_tank_saiga = Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga")
		local akan_tank_rpk_lmg = Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
		local bulldozer_hvh_2 = Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_2/ene_bulldozer_hvh_2")
		local bulldozer_hvh_3 = Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3")
		local murkywater_tank_2 = Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_3/ene_murkywater_bulldozer_3")
		local murkywater_tank_3 = Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4")
		local dozer_policia_federale_2 = Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_saiga/ene_swat_dozer_policia_federale_saiga")
		local dozer_policia_federale_3 = Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249")
		
		local ene_akan_fbi_swat_r870 = Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_r870/ene_akan_fbi_swat_r870")
		
		local ene_murkywater_light = Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light/ene_murkywater_light")
		local ene_murkywater_light_fbi_r870 = Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light_fbi_r870/ene_murkywater_light_fbi_r870")

		local policia_01 = Idstring("units/pd2_dlc_bex/characters/ene_policia_01/ene_policia_01")
		local policia_02 = Idstring("units/pd2_dlc_bex/characters/ene_policia_02/ene_policia_02")
		local swat_policia_federale = Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale/ene_swat_policia_federale")
		local swat_policia_federale_fbi_r870 = Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale_fbi_r870/ene_swat_policia_federale_fbi_r870")
		local heavy_policia_federale_fbi = Idstring("units/pd2_dlc_bex/characters/ene_swat_heavy_policia_federale_fbi/ene_swat_heavy_policia_federale_fbi")
		local ene_swat_policia_federale_city = Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale_city/ene_swat_policia_federale_city")
		
		self.unit_categories.CS_cop_C45_R870.unit_types.murkywater = {ene_murkywater_light}
		self.unit_categories.CS_cop_stealth_MP5.unit_types.murkywater = {ene_murkywater_light}
		self.unit_categories.FBI_suit_C45_M4.unit_types.murkywater = {ene_murkywater_light}
		self.unit_categories.FBI_suit_M4_MP5.unit_types.murkywater = {ene_murkywater_light}
		self.unit_categories.FBI_suit_stealth_MP5.unit_types.murkywater = {ene_murkywater_light}	
				
		self.unit_categories.CS_cop_C45_R870.unit_types.federales = {policia_01}
		self.unit_categories.CS_cop_stealth_MP5.unit_types.federales = {swat_policia_federale}
		self.unit_categories.FBI_suit_C45_M4.unit_types.federales = {swat_policia_federale}
		self.unit_categories.FBI_suit_M4_MP5.unit_types.federales = {swat_policia_federale, policia_02}
		self.unit_categories.FBI_suit_stealth_MP5.unit_types.federales = {policia_02}
		
		self.unit_categories.FBI_swat_R870.unit_types.federales = {swat_policia_federale_fbi_r870}
		self.unit_categories.FBI_heavy_G36_w.unit_types.federales = {heavy_policia_federale_fbi}
		self.unit_categories.FBI_heavy_G36.unit_types.federales = {heavy_policia_federale_fbi}
		
		if difficulty_index == 6 then
			self.unit_categories.FBI_swat_R870.unit_types.america = {fbi_swat_2}
			self.unit_categories.FBI_heavy_G36.unit_types.america = {fbi_heavy_1}
			self.unit_categories.FBI_shield.unit_types.america = {shield_1}
			
			self.unit_categories.FBI_swat_R870.unit_types.murkywater = {ene_murkywater_light_fbi_r870}
			
			self.unit_categories.FBI_tank.unit_types.america = {
				bulldozer_2,
				bulldozer_3
			}
			self.unit_categories.FBI_swat_R870.unit_types.russia = {ene_akan_fbi_swat_r870}
			self.unit_categories.FBI_tank.unit_types.russia = {
				akan_tank_saiga,
				akan_tank_rpk_lmg
			}
			self.unit_categories.FBI_tank.unit_types.zombie = {
				bulldozer_hvh_2,
				bulldozer_hvh_3
			}
			self.unit_categories.FBI_tank.unit_types.murkywater = {
				murkywater_tank_2,
				murkywater_tank_3
			}
			self.unit_categories.FBI_tank.unit_types.federales = {
				dozer_policia_federale_2,
				dozer_policia_federale_3
			}
		elseif difficulty_index == 7 then
			self.unit_categories.FBI_swat_M4.unit_types.federales = {ene_swat_policia_federale_city}
		
			self.unit_categories.FBI_tank.unit_types.america = {bulldozer_3}
			self.unit_categories.FBI_tank.unit_types.russia = {akan_tank_rpk_lmg}
			self.unit_categories.FBI_tank.unit_types.zombie = {bulldozer_hvh_3}
			self.unit_categories.FBI_tank.unit_types.murkywater = {murkywater_tank_3}
			self.unit_categories.FBI_tank.unit_types.federales = {dozer_policia_federale_3}
		end
		

	end
end
if string.lower(RequiredScript) == "lib/tweak_data/charactertweakdata" then
	local data = CharacterTweakData.init
	function CharacterTweakData:init(tweak_data)
		data(self, tweak_data)
		self.presets.weapon.normal.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.normal.is_shotgun_pump)
		self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
		self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
		self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
		self.presets.weapon.good.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.good.is_shotgun_pump)
		self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
		self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
		self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
		self.presets.weapon.expert.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.expert.is_shotgun_pump)
		self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
		self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
		self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
		self.presets.weapon.deathwish.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.deathwish.is_shotgun_pump)
		self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
		self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
		self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
		self.presets.weapon.normal.is_pistol.melee_dmg = 8
		self.presets.weapon.normal.akimbo_pistol.melee_dmg = 8
		self.presets.weapon.normal.is_rifle.melee_dmg = 8
		self.presets.weapon.normal.is_bullpup.melee_dmg = 8
		self.presets.weapon.normal.is_shotgun_pump.melee_dmg = 8
		self.presets.weapon.normal.is_shotgun_mag.melee_dmg = 8
		self.presets.weapon.normal.is_smg.melee_dmg = 8
		self.presets.weapon.normal.is_revolver.melee_dmg = 8
		self.presets.weapon.normal.mini.melee_dmg = 8
		self.presets.weapon.normal.is_lmg.melee_dmg = 8
		self.presets.weapon.expert.is_shotgun_pump.focus_delay = 2
		self.presets.weapon.expert.is_shotgun_pump.RELOAD_SPEED = 1.2
		self.presets.weapon.expert.is_shotgun_pump.melee_dmg = 20
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[1].acc = {0.6, 0.95}
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[2].acc = {0.5, 0.9}
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[3].acc = {0.4, 0.75}
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[4].acc = {0.1, 0.55}
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[5].acc = {0.1, 0.35}
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[1].dmg_mul = 6.5
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[2].dmg_mul = 5.5
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[3].dmg_mul = 4
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[4].dmg_mul = 3.5
		self.presets.weapon.expert.is_shotgun_pump.FALLOFF[5].dmg_mul = 2.5
		self.presets.weapon.expert.is_rifle.focus_delay = 2
		self.presets.weapon.expert.is_rifle.focus_dis = 300
		self.presets.weapon.expert.is_rifle.RELOAD_SPEED = 1.2
		self.presets.weapon.expert.is_rifle.melee_dmg = 20
		self.presets.weapon.expert.is_rifle.FALLOFF[1].dmg_mul = 6
		self.presets.weapon.expert.is_rifle.FALLOFF[2].dmg_mul = 5.75
		self.presets.weapon.expert.is_rifle.FALLOFF[2].acc = {0.55, 0.95}
		self.presets.weapon.expert.is_rifle.FALLOFF[3].dmg_mul = 5.75
		self.presets.weapon.expert.is_rifle.FALLOFF[3].acc = {0.525, 0.8}
		self.presets.weapon.expert.is_rifle.FALLOFF[4].dmg_mul = 5.5
		self.presets.weapon.expert.is_rifle.FALLOFF[4].acc = {0.5, 0.7}
		self.presets.weapon.expert.is_rifle.FALLOFF[5].acc = {0.2, 0.4}
		self.presets.weapon.expert.is_rifle.FALLOFF[5].dmg_mul = 5.25
		
		self.security.HEALTH_INIT = 3
		self.security.headshot_dmg_mul = self.security.HEALTH_INIT / 1
		self.security_mex.headshot_dmg_mul = self.security.headshot_dmg_mul
		self.security_mex.HEALTH_INIT = self.security.HEALTH_INIT
		
		self.gensec.HEALTH_INIT = 6
		self.gensec.headshot_dmg_mul = self.gensec.HEALTH_INIT / 1
		self.gensec.surrender = self.presets.surrender.hard
		
		self.cop.HEALTH_INIT = 3
		self.cop.headshot_dmg_mul = self.cop.HEALTH_INIT / 1
		self.cop.surrender = self.presets.surrender.normal
		
		self.fbi.HEALTH_INIT = 5
		self.fbi.headshot_dmg_mul = self.fbi.HEALTH_INIT / 1
		self.fbi.surrender = self.presets.surrender.normal
		
		self.swat.HEALTH_INIT = 8
		self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT / 2
		self.swat.surrender = self.presets.surrender.hard
			
		self.heavy_swat.HEALTH_INIT = 10
		self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT / 6
		self.heavy_swat.surrender = self.presets.surrender.hard
				
		self.fbi_swat.HEALTH_INIT = 13
		self.fbi_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 4
		self.fbi_swat.surrender = self.presets.surrender.hard
			
		self.fbi_heavy_swat.HEALTH_INIT = 20
		self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.HEALTH_INIT / 10
		self.fbi_heavy_swat.surrender = self.presets.surrender.hard
			
		self.city_swat.HEALTH_INIT = 13
		self.city_swat.headshot_dmg_mul = self.city_swat.HEALTH_INIT / 4
		self.city_swat.surrender = self.presets.surrender.hard
		self.city_heavy_swat = deep_clone(self.city_swat)
		
		self.sniper.headshot_dmg_mul = self.sniper.HEALTH_INIT / 2
			
		self.gangster.HEALTH_INIT = 4
		self.gangster.headshot_dmg_mul = self.gangster.HEALTH_INIT / 1
			
		self.tank.HEALTH_INIT = 550
		self.tank.headshot_dmg_mul = self.tank.HEALTH_INIT / 24
		self.tank.damage.explosion_damage_mul = 1
		self.tank.move_speed = self.presets.move_speed.very_slow
		self.tank.damage.hurt_severity = self.presets.hurt_severities.only_light_hurt_and_fire
		self.tank.ecm_hurts.ears = {min_duration = 7, max_duration = 9}
		self.tank.weapon.is_shotgun_mag.FALLOFF[1].dmg_mul = 3
		self.tank_mini.headshot_dmg_mul = self.tank_mini.HEALTH_INIT / 75
		
		self.spooc.headshot_dmg_mul = self.spooc.HEALTH_INIT / 14
			
		self.shield.HEALTH_INIT = 10
		self.shield.headshot_dmg_mul = self.shield.HEALTH_INIT / 6
		self.shield.move_speed = self.presets.move_speed.fast
		self.shield.weapon.is_smg.FALLOFF[2].dmg_mul = 3
		self.shield.weapon.is_smg.FALLOFF[3].dmg_mul = 2
		self.shield.weapon.is_smg.FALLOFF[4].dmg_mul = 1
			
		self.taser.HEALTH_INIT = 36
		self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 20
	end
	
	local data = CharacterTweakData._set_overkill
	function CharacterTweakData:_set_overkill()
		data(self)
		self:_multiply_all_hp(1/2, 1/2)
	end
	
	local data = CharacterTweakData._set_overkill_145
	function CharacterTweakData:_set_overkill_145()
		data(self) 
		self:_multiply_all_hp(1/3, 1/3)
	end
	
	local data = CharacterTweakData._set_overkill_290
	function CharacterTweakData:_set_easy_wish()
		data(self)
		self:_multiply_all_hp(1/6, 1/1.5)
		self:_multiply_all_hp(1.7, 0.75)
		self.fbi_swat.HEALTH_INIT = 17
		self.city_swat.HEALTH_INIT = 24
		self.city_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 8
		self.city_swat.damage.explosion_damage_mul = 0.8
	end
	
	local data = CharacterTweakData._set_overkill_290
	function CharacterTweakData:_set_overkill_290()
		data(self)
		self:_multiply_all_hp(1/6, 1/1.5)
		self:_multiply_all_hp(1.7, 0.75)
		self.city_swat.HEALTH_INIT = 24
		self.city_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 8
		self.city_swat.damage.explosion_damage_mul = 0.8
		self.shield.HEALTH_INIT = 24
		self.shield.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 8
		self.shield.damage.explosion_damage_mul = 0.8
		self.fbi_heavy_swat.HEALTH_INIT = 52
		self.fbi_heavy_swat.headshot_dmg_mul = 2
		self.fbi_heavy_swat.damage.explosion_damage_mul = 0.8
		self.fbi_heavy_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
	end
	
	local data = CharacterTweakData._set_sm_wish
	function CharacterTweakData:_set_sm_wish()
		data(self)
		self:_multiply_all_hp(1/6, 1/1.5)
		self:_multiply_all_hp(9, 1)
		
		self.swat = self.city_swat
		self.heavy_swat = self.fbi_heavy_swat
		
		self.swat.HEALTH_INIT = 72
		self.heavy_swat.HEALTH_INIT = 144
		self.heavy_swat_sniper.HEALTH_INIT = 144
		self.shield.HEALTH_INIT = self.swat.HEALTH_INIT
		
		self.security.headshot_dmg_mul = self.security.HEALTH_INIT
		self.security_mex.headshot_dmg_mul = self.security.headshot_dmg_mul
		self.gensec.headshot_dmg_mul = self.gensec.HEALTH_INIT
		self.cop.headshot_dmg_mul = self.cop.HEALTH_INIT
		self.fbi.headshot_dmg_mul = self.fbi.HEALTH_INIT
		self.gangster.headshot_dmg_mul = self.gangster.HEALTH_INIT
		self.sniper.headshot_dmg_mul = self.sniper.HEALTH_INIT
		self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT * 0.035
		self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT * 0.0265
		self.heavy_swat_sniper.headshot_dmg_mul = self.heavy_swat_sniper.HEALTH_INIT * 0.0265
		self.shield.headshot_dmg_mul = self.swat.headshot_dmg_mul
		self.spooc.headshot_dmg_mul = self.spooc.HEALTH_INIT * 0.03
		self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT * 0.025
		self.medic.headshot_dmg_mul = self.medic.HEALTH_INIT * 0.035
		self.tank.headshot_dmg_mul = self.tank.HEALTH_INIT * 0.025
		self.tank_mini.headshot_dmg_mul = self.tank_mini.HEALTH_INIT * 0.015
		self.tank_medic.headshot_dmg_mul = self.tank_medic.HEALTH_INIT * 0.05
		
		self.fbi_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.fbi_heavy_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.heavy_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.heavy_swat_sniper.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.fbi.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.gensec.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		self.tank.damage.hurt_severity = self.presets.hurt_severities.no_hurts
		
		self.tank.move_speed = self.presets.move_speed.slow
		self.tank_mini.move_speed = self.presets.move_speed.very_slow
		
		self.swat.damage.explosion_damage_mul = 0.75
		self.heavy_swat.damage.explosion_damage_mul = 0.75
		self.heavy_swat_sniper.damage.explosion_damage_mul = 0.75
		self.fbi_swat.damage.explosion_damage_mul = 0.75
		self.fbi_heavy_swat.damage.explosion_damage_mul = 0.75
		self.city_swat.damage.explosion_damage_mul = 0.75
	end
	
	local data = CharacterTweakData._multiply_all_hp
	function CharacterTweakData:_multiply_all_hp(hp_mul, hs_mul)
		data(self, hp_mul, hs_mul)
		self.security.HEALTH_INIT = self.security.HEALTH_INIT * hp_mul
		self.security_mex.HEALTH_INIT = self.security_mex.HEALTH_INIT * hp_mul
		self.cop.HEALTH_INIT = self.cop.HEALTH_INIT * hp_mul
		self.gensec.HEALTH_INIT = self.gensec.HEALTH_INIT * hp_mul
		
		if self.security.headshot_dmg_mul then
			self.security.headshot_dmg_mul = self.security.headshot_dmg_mul * hs_mul
		end
		if self.security_mex.headshot_dmg_mul then
			self.security_mex.headshot_dmg_mul = self.security_mex.headshot_dmg_mul * hs_mul
		end
		if self.cop.headshot_dmg_mul then
			self.cop.headshot_dmg_mul = self.cop.headshot_dmg_mul * hs_mul
		end
		if self.gensec.headshot_dmg_mul then
			self.gensec.headshot_dmg_mul = self.gensec.headshot_dmg_mul * hs_mul
		end
	end
	
	function CharacterTweakData:custom_weapons(unit)
		local name = unit:name()
		local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
		local difficulty_index = tweak_data:difficulty_to_index(difficulty)
		local r870 = Idstring("units/payday2/weapons/wpn_npc_r870/wpn_npc_r870")
		local raging_bull = Idstring("units/payday2/weapons/wpn_npc_raging_bull/wpn_npc_raging_bull")
		local beretta = Idstring("units/payday2/weapons/wpn_npc_beretta92/wpn_npc_beretta92")
		local benelli = Idstring("units/payday2/weapons/wpn_npc_benelli/wpn_npc_benelli")
		local c45 = Idstring("units/payday2/weapons/wpn_npc_c45/wpn_npc_c45")
		local g36 = Idstring("units/payday2/weapons/wpn_npc_g36/wpn_npc_g36")
		local m4 = Idstring("units/payday2/weapons/wpn_npc_m4/wpn_npc_m4")
		local mp5 = Idstring("units/payday2/weapons/wpn_npc_mp5/wpn_npc_mp5")
		local mp5_spook = Idstring("units/payday2/weapons/wpn_npc_mp5_tactical/wpn_npc_mp5_tactical")
		local scar = Idstring("units/payday2/weapons/wpn_npc_scar_murkywater/wpn_npc_scar_murkywater")
		local ump = Idstring("units/payday2/weapons/wpn_npc_ump/wpn_npc_ump")
		local asval = Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval")
		local rpk = Idstring("units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk")
		local ak47 = Idstring("units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47")
		
		math.randomseed(TimerManager:game():time() * 1500)
		
		local weapons = {g36, ump, benelli}
		local city_swat = {
			"units/payday2/characters/ene_city_swat_1/ene_city_swat_1",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale/ene_swat_policia_federale",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale_fbi/ene_swat_policia_federale_fbi",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale_fbi_g36/ene_swat_policia_federale_fbi_g36",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale_city/ene_swat_policia_federale_city"
		}
		for _, units in pairs(city_swat) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "overkill_290" or difficulty == "sm_wish" then
					return weapons[math.random(3)]
				elseif difficulty == "easy_wish" then
					return weapons[math.random(2)]
				end
			end
		end
		
		local weapons = {scar, ump, benelli}
		local city_murky = {
			"units/pd2_dlc_bph/characters/ene_murkywater_light/ene_murkywater_light",
			"units/pd2_dlc_bph/characters/ene_murkywater_light_city/ene_murkywater_light_city"
		}
		for _, units in pairs(city_swat) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "overkill_290" or difficulty == "sm_wish" then
					return weapons[math.random(3)]
				elseif difficulty == "easy_wish" then
					return weapons[math.random(2)]
				end
			end
		end
		
		local weapons = {benelli, mp5, g36}
		local zeal = {
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale/ene_swat_policia_federale",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale_fbi/ene_swat_policia_federale_fbi",
			"units/pd2_dlc_bex/characters/ene_swat_policia_federale_fbi_g36/ene_swat_policia_federale_fbi_g36"
		}
		for _, units in pairs(zeal) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "sm_wish" then
					return weapons[math.random(3)]
				end
			end
		end
		
		local weapons = {r870, scar, m4}
		local heavys = {
			"units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36",
			"units/pd2_dlc_bph/characters/ene_murkywater_heavy/ene_murkywater_heavy",
			"units/pd2_dlc_bex/characters/ene_swat_heavy_policia_federale_fbi/ene_swat_heavy_policia_federale_fbi",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy"
		}
		for _, units in pairs(heavys) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "sm_wish" then
					return weapons[math.random(2, 3)]
				elseif difficulty == "overkill_290" then
					return weapons[math.random(2)]
				end
			end
		end
			
		local weapons = {r870, rpk, asval}
		local akan_swat_heavy = {
			"units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36"
		}
		for _, units in pairs(akan_swat_heavy) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "sm_wish" then
					return weapons[math.random(2, 3)]
				elseif difficulty == "overkill_290" then
					return weapons[math.random(2)]
				end
			end
		end
		
		local weapons = {ak47, asval, benelli}
		local akan_city = {
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass"
		}
		for _, units in pairs(akan_city) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "overkill_290" or difficulty == "sm_wish" then
					return weapons[math.random(3)]
				elseif difficulty == "easy_wish" then
					return weapons[math.random(2)]
				end
			end
		end
		
		local scar_rifles = {
			"units/pd2_dlc_bph/characters/ene_murkywater_heavy_g36/ene_murkywater_heavy_g36",
			"units/pd2_dlc_drm/characters/ene_bulldozer_minigun_classic/ene_bulldozer_minigun_classic",
			"units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun",
			"units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_1/ene_murkywater_bulldozer_1",
			"units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_minigun/ene_swat_dozer_policia_federale_minigun"
		}
		for _, units in pairs(scar_rifles) do
			if name == Idstring(units) or name == Idstring(units .. "_husk") then
				if difficulty == "overkill_290" or difficulty == "sm_wish" then
					return scar
				else
					return m4
				end
			end
		end
		
		return
	end
end
if string.lower(RequiredScript) == "lib/units/enemies/cop/copbase" then
	local data = CopBase.default_weapon_name
	function CopBase:default_weapon_name()
		return tweak_data.character:custom_weapons(self._unit) or data(self)
	end
end
if string.lower(RequiredScript) == "lib/tweak_data/weapontweakdata" then
	local data = WeaponTweakData.init
	function WeaponTweakData:init(tweak_data)
		data(self, tweak_data)
		self.benelli_npc.usage = "is_shotgun_pump_rapid"
		self.mp9_npc.DAMAGE = 0.5
	end
	
	local data = WeaponTweakData._set_normal
	function WeaponTweakData:_set_normal()
		data(self)
		self.ak47_ass_npc.DAMAGE = 1
		self.mp5_npc.DAMAGE = 1
		self.r870_npc.DAMAGE = 5
		self.m4_npc.DAMAGE = 1
		self.m4_yellow_npc.DAMAGE = 1
		self.c45_npc.DAMAGE = 1
		self.raging_bull_npc.DAMAGE = 4
		self.ump_npc.DAMAGE = 1
		self.mp9_npc.DAMAGE = 1
		self.m14_sniper_npc.DAMAGE = 2
		self.mac11_npc.DAMAGE = 1
	end

	local data = WeaponTweakData._set_hard
	function WeaponTweakData:_set_hard()
		data(self)
		self.ak47_ass_npc.DAMAGE = 1
		self.m4_npc.DAMAGE = 1
		self.m4_yellow_npc.DAMAGE = 1
		self.g36_npc.DAMAGE = 3
		self.r870_npc.DAMAGE = 5
	end

	local data = WeaponTweakData._set_overkill_145
	function WeaponTweakData:_set_overkill_145()
		data(self)
		self.ak47_ass_npc.DAMAGE = 1
		self.saiga_npc.DAMAGE = 5
	end

	local data = WeaponTweakData._set_easy_wish
	function WeaponTweakData:_set_easy_wish()
		data(self)
		self.saiga_npc.DAMAGE = 5
		self.g36_npc.DAMAGE = 3
	end

	local data = WeaponTweakData._set_overkill_290
	function WeaponTweakData:_set_overkill_290()
		data(self)
		self.saiga_npc.DAMAGE = 5
		self.scar_npc.DAMAGE = 4
		self.rpk_lmg_npc.DAMAGE = 4
	end
	
	local data = WeaponTweakData._set_sm_wish
	function WeaponTweakData:_set_sm_wish()
		data(self)
		self.mp5_npc.DAMAGE = 3
		self.scar_npc.DAMAGE = 5
		self.mp9_npc.DAMAGE = 1
		self.asval_smg_npc.DAMAGE = 2
		self.rpk_lmg_npc.DAMAGE = 5
		self.saiga_npc.DAMAGE = 5
		self.saiga_npc.CLIP_AMMO_MAX = 22
	end
end
if string.lower(RequiredScript) == "lib/units/enemies/cop/actions/upper_body/copactionshoot" then
	--Enemy reload fix
	local data = CopActionShoot.update
	function CopActionShoot:update(t)
		data(self, t)
		if not self._ext_anim.reload and not self._ext_anim.equip and not self._ext_anim.melee then
			if self._weapon_base:clip_empty() then
				if self._autofiring then
					self._weapon_base:stop_autofire()
					self._ext_movement:play_redirect("up_idle")

					self._autofiring = nil
					self._autoshots_fired = nil
				end

				local res = CopActionReload._play_reload(self)

				if res then
					self._machine:set_speed(res, self._reload_speed)
				end

				if Network:is_server() then
					managers.network:session():send_to_peers("reload_weapon_cop", self._unit)
				end
			end
		end
	end
end
if string.lower(RequiredScript) == "lib/units/weapons/grenades/quickflashgrenade" then
	function QuickFlashGrenade:_beep() end
end
if string.lower(RequiredScript) == "lib/managers/group_ai_states/groupaistatebesiege" then
	local data = GroupAIStateBesiege._upd_assault_task
	function GroupAIStateBesiege:_upd_assault_task()
		local task_data = self._task_data.assault

		if managers.skirmish:is_skirmish() or managers.job:current_job_id() == "chill_combat" then
			return data(self)
		end
		
		if not task_data.active then
			return
		end

		local t = self._t

		self:_assign_recon_groups_to_retire()

		local force_pool = self:_get_difficulty_dependent_value(self._tweak_data.assault.force_pool) * self:_get_balancing_multiplier(self._tweak_data.assault.force_pool_balance_mul)
		local task_spawn_allowance = force_pool - (self._hunt_mode and 0 or task_data.force_spawned)

		if task_data.phase == "anticipation" then
			if task_spawn_allowance <= 0 then
				print("spawn_pool empty: -----------FADE-------------")

				task_data.phase = "fade"
				task_data.phase_end_t = t + self._tweak_data.assault.fade_duration
			elseif task_data.phase_end_t < t or self._drama_data.zone == "high" then
				self._assault_number = self._assault_number + 1

				managers.mission:call_global_event("start_assault")
				managers.hud:start_assault(self._assault_number)
				managers.groupai:dispatch_event("start_assault", self._assault_number)
				self:_set_rescue_state(false)

				task_data.phase = "build"
				task_data.phase_end_t = self._t + self._tweak_data.assault.build_duration
				task_data.is_hesitating = nil

				self:set_assault_mode(true)
				managers.trade:set_trade_countdown(false)
			else
				managers.hud:check_anticipation_voice(task_data.phase_end_t - t)
				managers.hud:check_start_anticipation_music(task_data.phase_end_t - t)

				if task_data.is_hesitating and task_data.voice_delay < self._t then
					if self._hostage_headcount > 0 then
						local best_group = nil

						for _, group in pairs(self._groups) do
							if not best_group or group.objective.type == "reenforce_area" then
								best_group = group
							elseif best_group.objective.type ~= "reenforce_area" and group.objective.type ~= "retire" then
								best_group = group
							end
						end

						if best_group and self:_voice_delay_assault(best_group) then
							task_data.is_hesitating = nil
						end
					else
						task_data.is_hesitating = nil
					end
				end
			end
		elseif task_data.phase == "build" then
			if task_spawn_allowance <= 0 then
				task_data.phase = "fade"
				task_data.phase_end_t = t + self._tweak_data.assault.fade_duration
			elseif task_data.phase_end_t < t or self._drama_data.zone == "high" then
				local sustain_duration = math.lerp(self:_get_difficulty_dependent_value(self._tweak_data.assault.sustain_duration_min), self:_get_difficulty_dependent_value(self._tweak_data.assault.sustain_duration_max), math.random()) * self:_get_balancing_multiplier(self._tweak_data.assault.sustain_duration_balance_mul)

				managers.modifiers:run_func("OnEnterSustainPhase", sustain_duration)

				task_data.phase = "sustain"
				task_data.phase_end_t = t + sustain_duration
			end
		elseif task_data.phase == "sustain" then
			local end_t = self:assault_phase_end_time()
			task_spawn_allowance = managers.modifiers:modify_value("GroupAIStateBesiege:SustainSpawnAllowance", task_spawn_allowance, force_pool)

			if task_spawn_allowance <= 0 then
				task_data.phase = "fade"
				task_data.phase_end_t = t + self._tweak_data.assault.fade_duration
			elseif end_t < t and not self._hunt_mode then
				task_data.phase = "fade"
				task_data.phase_end_t = t + self._tweak_data.assault.fade_duration
			end
		else
			local end_assault = false
			local enemies_left = self:_count_police_force("assault")
			if enemies_left < 7 or t > task_data.phase_end_t + 350 then
				if t > task_data.phase_end_t - 8 and not task_data.said_retreat then
					if self._drama_data.amount < tweak_data.drama.assault_fade_end then
						task_data.said_retreat = true
						self:_police_announce_retreat()
					end
				elseif t > task_data.phase_end_t and self._drama_data.amount < tweak_data.drama.assault_fade_end and self:_count_criminals_engaged_force(4) <= 3 then
					task_data.active = nil
					task_data.phase = nil
					task_data.said_retreat = nil
					if self._draw_drama then
						self._draw_drama.assault_hist[#self._draw_drama.assault_hist][2] = t
					end
					managers.mission:call_global_event("end_assault")
					self:_begin_regroup_task()
					return
				end
			else
			end
		end

		if self._drama_data.amount <= tweak_data.drama.low then
			for criminal_key, criminal_data in pairs(self._player_criminals) do
				self:criminal_spotted(criminal_data.unit)

				for group_id, group in pairs(self._groups) do
					if group.objective.charge then
						for u_key, u_data in pairs(group.units) do
							u_data.unit:brain():clbk_group_member_attention_identified(nil, criminal_key)
						end
					end
				end
			end
		end

		local primary_target_area = task_data.target_areas[1]

		if self:is_area_safe_assault(primary_target_area) then
			local target_pos = primary_target_area.pos
			local nearest_area, nearest_dis = nil

			for criminal_key, criminal_data in pairs(self._player_criminals) do
				if not criminal_data.status then
					local dis = mvector3.distance_sq(target_pos, criminal_data.m_pos)

					if not nearest_dis or dis < nearest_dis then
						nearest_dis = dis
						nearest_area = self:get_area_from_nav_seg_id(criminal_data.tracker:nav_segment())
					end
				end
			end

			if nearest_area then
				primary_target_area = nearest_area
				task_data.target_areas[1] = nearest_area
			end
		end

		local nr_wanted = task_data.force - self:_count_police_force("assault")

		if task_data.phase == "anticipation" then
			nr_wanted = nr_wanted - 5
		end

		if nr_wanted > 0 and task_data.phase ~= "fade" then
			local used_event = nil

			if task_data.use_spawn_event and task_data.phase ~= "anticipation" then
				task_data.use_spawn_event = false

				if self:_try_use_task_spawn_event(t, primary_target_area, "assault") then
					used_event = true
				end
			end

			if not used_event then
				if next(self._spawning_groups) then
					-- Nothing
				else
					local spawn_group, spawn_group_type = self:_find_spawn_group_near_area(primary_target_area, self._tweak_data.assault.groups, nil, nil, nil)

					if spawn_group then
						local grp_objective = {
							attitude = "avoid",
							stance = "hos",
							pose = "crouch",
							type = "assault_area",
							area = spawn_group.area,
							coarse_path = {
								{
									spawn_group.area.pos_nav_seg,
									spawn_group.area.pos
								}
							}
						}

						self:_spawn_in_group(spawn_group, spawn_group_type, grp_objective, task_data)
					end
				end
			end
		end

		if task_data.phase ~= "anticipation" then
			if task_data.use_smoke_timer < t then
				task_data.use_smoke = true
			end

			if self._smoke_grenade_queued and task_data.use_smoke and not self:is_smoke_grenade_active() then
				self:detonate_smoke_grenade(self._smoke_grenade_queued[1], self._smoke_grenade_queued[1], self._smoke_grenade_queued[2], self._smoke_grenade_queued[4])
				if self._smoke_grenade_queued[3] then
					self._smoke_grenade_ignore_control = true
				end
			end
		end

		self:_assign_enemy_groups_to_assault(task_data.phase)
	end
end