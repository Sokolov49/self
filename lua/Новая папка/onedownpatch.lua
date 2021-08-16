--reuses preset from deathwish because this difficulty shouldn't exist either
function CharacterTweakData:_set_sm_wish()
	self:_multiply_all_hp(1, 1)
	local easy_mode = Global.game_settings and Global.game_settings.one_down

	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 900
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(1.05, 1.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 300
	else
		self.presets.gang_member_damage.HEALTH_INIT = 150
	end
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")
	self.shadow_spooc.shadow_spooc_attack_timeout = {3, 4}
	self.spooc.spooc_attack_timeout = {3, 4}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 12,	r = 700,	acc = {0.7, 1},		recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 4000,	acc = {0.6, 0.95},	recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 10000,	acc = {0.2, 0.8},	recoil = {3, 5},	mode = {1, 0, 0, 0}}
	}
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{dmg_mul = 8,	r = 100,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7.5,	r = 500,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.85},	recoil = {0.45, 0.8},	mode = {1, 2, 2, 0}},
		{dmg_mul = 5,	r = 2000,	acc = {0.5, 0.65},	recoil = {0.45, 0.8},	mode = {3, 2, 2, 0}},
		{dmg_mul = 3.5,	r = 3000,	acc = {0.3, 0.5}, 	recoil = {1, 1.2}, 		mode = {3, 1, 1, 0}}
	}
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
	self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
	self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
	self.tank.weapon.is_rifle.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_rifle.focus_delay = 0
	self.tank.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55}, recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.tank.weapon.mini.aim_delay = {
		0,
		0
	}
	self.tank.weapon.mini.focus_delay = 0
	self.tank.weapon.mini.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55},	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.shield.weapon.is_smg.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{dmg_mul = 7,	r = 0, 		acc = {0.9, 0.95},	recoil = {0.35, 0.35},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 700, 	acc = {0.8, 0.8}, 	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 1000,	acc = {0.6, 0.65},	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 2000,	acc = {0.5, 0.7}, 	recoil = {0.35, 1}, 	mode = {2, 5, 6, 4}},
		{dmg_mul = 7,	r = 3000,	acc = {0.5, 0.5}, 	recoil = {0.5, 1.2}, 	mode = {6, 4, 2, 0}}
	}
	self.shield.weapon.is_pistol.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{dmg_mul = 7.5, r = 0,		acc = {0.6, 0.9},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 700,	acc = {0.6, 0.8},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 1000,	acc = {0.6, 0.75},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 2000,	acc = {0.6, 0.75},	recoil = {0.35, 0.65},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 3000,	acc = {0.5, 0.6},	recoil = {0.35, 1.5},	mode = {1, 0, 0, 0}}
	}
	self.taser.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 7,	r = 100, 	acc = {0.9, 0.95}, 	recoil = {0.4, 0.4}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 500, 	acc = {0.75, 0.95}, recoil = {0.4, 0.5}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.9}, 	recoil = {0.4, 0.6}, 	mode = {1, 2, 3, 0}},
		{dmg_mul = 7,	r = 2000,	acc = {0.65, 0.8}, 	recoil = {0.5, 1}, 		mode = {3, 2, 2, 0}},
		{dmg_mul = 7,	r = 3000,	acc = {0.55, 0.75}, recoil = {1, 2}, 		mode = {3, 1, 1, 0}}
	}

	self.tank.HEALTH_INIT = 935
	self.fbi_heavy_swat.HEALTH_INIT = 34
	self.spooc.HEALTH_INIT = 102
	self.taser.HEALTH_INIT = 60
	self.phalanx_minion.HEALTH_INIT = 80
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 160
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1

	self.russian.move_speed 	= 		self.presets.move_speed.lightning
	self.german.move_speed 		= 		self.presets.move_speed.lightning
	self.spanish.move_speed 	= 		self.presets.move_speed.lightning
	self.american.move_speed 	= 		self.presets.move_speed.lightning
	self.jowi.move_speed 		= 		self.presets.move_speed.lightning
	self.old_hoxton.move_speed 	=  		self.presets.move_speed.lightning
	self.female_1.move_speed 	=  		self.presets.move_speed.lightning
	self.dragan.move_speed 		=  		self.presets.move_speed.lightning
	self.jacket.move_speed 		=  		self.presets.move_speed.lightning
	self.bonnie.move_speed 		=  		self.presets.move_speed.lightning
	self.sokol.move_speed 		=  		self.presets.move_speed.lightning
	self.dragon.move_speed 		=  		self.presets.move_speed.lightning
	self.bodhi.move_speed 		=  		self.presets.move_speed.lightning
	self.jimmy.move_speed 		=  		self.presets.move_speed.lightning
	self.sydney.move_speed 		= 		self.presets.move_speed.lightning
	self.wild.move_speed 		= 		self.presets.move_speed.lightning
	self.chico.move_speed 		=		self.presets.move_speed.lightning
	self.max.move_speed 		= 		self.presets.move_speed.lightning
	self.joy.move_speed 		= 		self.presets.move_speed.lightning
	self.myh.move_speed 		= 		self.presets.move_speed.lightning
	self.ecp_female.move_speed 	= 		self.presets.move_speed.lightning
	self.ecp_male.move_speed 	= 		self.presets.move_speed.lightning
	
	self.presets.gang_member_damage.hurt_severity.bullet = {
		health_reference = "current",
		zones = {
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.4
			},
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.7
			},
			{
				heavy = 0,
				light = 0,
				moderate = 0,
				none = 1
			}
		}
	}
end

function CharacterTweakData:_set_sm_wish()
	self:_multiply_all_hp(2, 2)

	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 900
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(1.05, 1.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 150
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")

	self.shadow_spooc.shadow_spooc_attack_timeout = {3, 4}
	self.spooc.spooc_attack_timeout = {3, 4}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 12,	r = 700,	acc = {0.7, 1},		recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 4000,	acc = {0.6, 0.95},	recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 10000,	acc = {0.2, 0.8},	recoil = {3, 5},	mode = {1, 0, 0, 0}}
	}
	self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{dmg_mul = 8,	r = 100,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7.5,	r = 500,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.85},	recoil = {0.45, 0.8},	mode = {1, 2, 2, 0}},
		{dmg_mul = 5,	r = 2000,	acc = {0.5, 0.65},	recoil = {0.45, 0.8},	mode = {3, 2, 2, 0}},
		{dmg_mul = 3.5,	r = 3000,	acc = {0.3, 0.5}, 	recoil = {1, 1.2}, 		mode = {3, 1, 1, 0}}
	}
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
	self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
	self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
	self.tank.weapon.is_rifle.aim_delay = {0, 0}
	self.tank.weapon.is_rifle.focus_delay = 0
	self.tank.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55}, recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.tank.weapon.mini.aim_delay = {0, 0}
	self.tank.weapon.mini.focus_delay = 0
	self.tank.weapon.mini.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55},	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.shield.weapon.is_smg.aim_delay = {0, 0}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{dmg_mul = 7,	r = 0, 		acc = {0.9, 0.95},	recoil = {0.35, 0.35},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 700, 	acc = {0.8, 0.8}, 	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 1000,	acc = {0.6, 0.65},	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 2000,	acc = {0.5, 0.7}, 	recoil = {0.35, 1}, 	mode = {2, 5, 6, 4}},
		{dmg_mul = 7,	r = 3000,	acc = {0.5, 0.5}, 	recoil = {0.5, 1.2}, 	mode = {6, 4, 2, 0}}
	}
	self.shield.weapon.is_pistol.aim_delay = {0, 0}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{dmg_mul = 7.5, r = 0,		acc = {0.6, 0.9},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 700,	acc = {0.6, 0.8},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 1000,	acc = {0.6, 0.75},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 2000,	acc = {0.6, 0.75},	recoil = {0.35, 0.65},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 3000,	acc = {0.5, 0.6},	recoil = {0.35, 1.5},	mode = {1, 0, 0, 0}}
	}
	self.taser.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 7,	r = 100, 	acc = {0.9, 0.95}, 	recoil = {0.4, 0.4}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 500, 	acc = {0.75, 0.95}, recoil = {0.4, 0.5}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.9}, 	recoil = {0.4, 0.6}, 	mode = {1, 2, 3, 0}},
		{dmg_mul = 7,	r = 2000,	acc = {0.65, 0.8}, 	recoil = {0.5, 1}, 		mode = {3, 2, 2, 0}},
		{dmg_mul = 7,	r = 3000,	acc = {0.55, 0.75}, recoil = {1, 2}, 		mode = {3, 1, 1, 0}}
	}
	
	self.spooc.dodge_with_grenade = {
		flash = {duration = {8, 12}},
		check = function (t, nr_grenades_used)
			local delay_till_next_use = math.lerp(17, 45, math.min(1, (nr_grenades_used or 0) / 4))
			local chance = math.lerp(1, 0.5, math.min(1, (nr_grenades_used or 0) / 10))

			if math.random() < chance then
				return true, t + delay_till_next_use
			end

			return false, t + delay_till_next_use
		end
	}

	self.civilian.submission_max = {10, 20}
	self.civilian.submission_intimidate = 20
	self.civilian.run_away_delay = {0, 0}
	self.civilian.scare_max = {5, 20}
	
	self.civilian_female.submission_max = {10, 20}
	self.civilian_female.submission_intimidate = 20
	self.civilian_female.run_away_delay = {0, 0}
	self.civilian_female.scare_max = {5, 20}
	
	self.bank_manager.submission_max = {10, 20}
	self.bank_manager.submission_intimidate = 20
	self.bank_manager.run_away_delay = {0, 0}
	self.bank_manager.scare_max = {5, 20}
	
	self.cop.surrender = self.presets.surrender.hard
	self.fbi.surrender = self.presets.surrender.hard
	self.fbi_swat.surrender = nil
	self.fbi_heavy_swat.surrender = nil
	self.city_swat.surrender = nil
	self.heavy_swat.surrender = nil
	
	self.civilian.move_speed = self.presets.move_speed.very_fast
	self.civilian_female.move_speed = self.presets.move_speed.very_fast
	self.bank_manager.move_speed = self.presets.move_speed.very_fast
	self.cop.move_speed = self.presets.move_speed.lightning
	self.fbi.move_speed = self.presets.move_speed.very_fast
	self.swat.move_speed = self.presets.move_speed.very_fast
	self.fbi_swat.move_speed = self.presets.move_speed.fast
	self.fbi_heavy_swat.move_speed = self.presets.move_speed.normal
	self.city_swat.move_speed = self.presets.move_speed.normal
	
	self.cop.HEALTH_INIT = 6
	self.security.HEALTH_INIT = 6
	self.heavy_swat.HEALTH_INIT = 51
	self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 25
	self.shield.headshot_dmg_mul = self.shield.HEALTH_INIT / 20
	self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT / 15
	self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT / 20
	self.fbi_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 20
	self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.HEALTH_INIT / 25
	self.city_swat.headshot_dmg_mul = self.city_swat.HEALTH_INIT / 20
	self.tank.move_speed = self.presets.move_speed.very_slow_but_faster
	self.tank.damage.hurt_severity = self.presets.hurt_severities.tough_light_hurt_and_fire
	self.phalanx_minion.HEALTH_INIT = 80
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 160
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1
	
	self.russian.move_speed 	= 		self.presets.move_speed.lightning
	self.german.move_speed 		= 		self.presets.move_speed.lightning
	self.spanish.move_speed 	= 		self.presets.move_speed.lightning
	self.american.move_speed 	= 		self.presets.move_speed.lightning
	self.jowi.move_speed 		= 		self.presets.move_speed.lightning
	self.old_hoxton.move_speed 	=  		self.presets.move_speed.lightning
	self.female_1.move_speed 	=  		self.presets.move_speed.lightning
	self.dragan.move_speed 		=  		self.presets.move_speed.lightning
	self.jacket.move_speed 		=  		self.presets.move_speed.lightning
	self.bonnie.move_speed 		=  		self.presets.move_speed.lightning
	self.sokol.move_speed 		=  		self.presets.move_speed.lightning
	self.dragon.move_speed 		=  		self.presets.move_speed.lightning
	self.bodhi.move_speed 		=  		self.presets.move_speed.lightning
	self.jimmy.move_speed 		=  		self.presets.move_speed.lightning
	self.sydney.move_speed 		= 		self.presets.move_speed.lightning
	self.wild.move_speed 		= 		self.presets.move_speed.lightning
	self.chico.move_speed 		=		self.presets.move_speed.lightning
	self.max.move_speed 		= 		self.presets.move_speed.lightning
	self.joy.move_speed 		= 		self.presets.move_speed.lightning
	self.myh.move_speed 		= 		self.presets.move_speed.lightning
	self.ecp_female.move_speed 	= 		self.presets.move_speed.lightning
	self.ecp_male.move_speed 	= 		self.presets.move_speed.lightning
	
	self.presets.gang_member_damage.hurt_severity.bullet = {
		health_reference = "current",
		zones = {
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.4
			},
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.7
			},
			{
				heavy = 0,
				light = 0,
				moderate = 0,
				none = 1
			}
		}
	}
end
