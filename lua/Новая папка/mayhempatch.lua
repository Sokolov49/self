--hopefully fixes enemy hp on mayhem, that difficulty shouldn't exist anyway
--hard = hard
--overkill = very hard
--overkill_145 = overkill
--easy_wish = mayhem
--overkill_290 = deathwish
--sm_wish = onedown
function CharacterTweakData:_set_easy_wish()
	self:_multiply_all_hp(1, 1)
	self:_multiply_all_speeds(2.05, 2.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			r = 200,
			acc = {0.6, 0.9},
			dmg_mul = 1.1,
			recoil = {0.4, 0.7},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			r = 500,
			acc = {0.6, 0.9},
			dmg_mul = 0.88,
			recoil = {0.4, 0.7},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			r = 1000,
			acc = {0.4, 0.8},
			dmg_mul = 0.75,
			recoil = {0.45, 0.8},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			r = 2000,
			acc = {0.4, 0.55},
			dmg_mul = 0.63,
			recoil = {0.45, 0.8},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			r = 3000,
			acc = {0.1, 0.35},
			dmg_mul = 0.5,
			recoil = {1, 1.2},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 15
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 30
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 300
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{
			r = 300,
			acc = {1, 1},
			dmg_mul = 3.5,
			recoil = {0.25, 0.45},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			r = 10000,
			acc = {1, 1},
			dmg_mul = 1.6,
			recoil = {2, 3},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{
			r = 300,
			acc = {1, 1},
			dmg_mul = 3.5,
			recoil = {0.25, 0.45},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			r = 10000,
			acc = {1, 1},
			dmg_mul = 1.6,
			recoil = {2, 3},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_sniper.FALLOFF = {
		{
			r = 500,
			acc = {1, 1},
			dmg_mul = 7,
			recoil = {1, 1},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 1000,
			acc = {1, 1},
			dmg_mul = 7,
			recoil = {1, 1},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 2500,
			acc = {0.95, 1},
			dmg_mul = 7,
			recoil = {1, 1},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 4000,
			acc = {0.9, 0.95},
			dmg_mul = 3.5,
			recoil = {1, 1},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 10000,
			acc = {0.85, 0.9},
			dmg_mul = 3.5,
			recoil = {1, 1},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_lmg.FALLOFF = {
		{
			r = 100,
			acc = {1, 1},
			dmg_mul = 3,
			recoil = {0.25, 0.45},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 1000,
			acc = {0.85, 0.9},
			dmg_mul = 2,
			recoil = {0.4, 0.65},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 2000,
			acc = {0.6, 0.8},
			dmg_mul = 1.5,
			recoil = {0.8, 1.25},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.7},
			dmg_mul = 1,
			recoil = {0.8, 1.25},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 4000,
			acc = {0.02, 0.25},
			dmg_mul = 0.66,
			recoil = {1, 2},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 10000,
			acc = {0.01, 0.1},
			dmg_mul = 0.2,
			recoil = {2, 3},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{
			r = 300,
			acc = {1, 1},
			dmg_mul = 3.5,
			recoil = {0.25, 0.45},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			r = 10000,
			acc = {1, 1},
			dmg_mul = 1.6,
			recoil = {2, 3},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{
			r = 100,
			acc = {1, 1},
			dmg_mul = 3.5,
			recoil = {0.1, 0.1},
			mode = {
				1,
				1,
				4,
				6
			}
		},
		{
			r = 500,
			acc = {1, 1},
			dmg_mul = 3.5,
			recoil = {0.1, 0.1},
			mode = {
				1,
				1,
				4,
				5
			}
		},
		{
			r = 1000,
			acc = {0.85, 0.95},
			dmg_mul = 1.5,
			recoil = {0.1, 0.15},
			mode = {
				1,
				2,
				4,
				4
			}
		},
		{
			r = 2000,
			acc = {0.75, 0.9},
			dmg_mul = 1,
			recoil = {0.25, 0.45},
			mode = {
				1,
				4,
				4,
				1
			}
		},
		{
			r = 3000,
			acc = {0.4, 0.7},
			dmg_mul = 0.5,
			recoil = {0.4, 0.5},
			mode = {
				4,
				2,
				1,
				0
			}
		},
		{
			r = 10000,
			acc = {0.05, 0.2},
			dmg_mul = 0.2,
			recoil = {0.5, 1},
			mode = {
				2,
				1,
				0,
				0
			}
		}
	}
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
	self:_set_characters_weapon_preset("good")
	self.spooc.spooc_attack_timeout = {6, 8}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			r = 700,
			acc = {0.7, 1},
			dmg_mul = 8,
			recoil = {3, 6},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 4000,
			acc = {0.5, 0.95},
			dmg_mul = 6,
			recoil = {4, 6},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 10000,
			acc = {0, 0.3},
			dmg_mul = 3.5,
			recoil = {4, 6},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.flashbang_multiplier = 1.5
	self.concussion_multiplier = 1
end
