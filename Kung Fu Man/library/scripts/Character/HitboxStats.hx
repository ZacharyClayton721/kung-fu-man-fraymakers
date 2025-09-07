// Hitbox stats
{
	//LIGHT ATTACKS
	jab1: {
		hitbox0: { damage: 2, angle: 80, baseKnockback: 30, knockbackGrowth: 25, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FIST }
	},
	jab2: {
		hitbox0: { damage: 3, angle: 80, baseKnockback: 30, knockbackGrowth: 25, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FIST },
		hitbox1: { damage: 3, angle: 80, baseKnockback: 30, knockbackGrowth: 25, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FIST },
		hitbox2: { damage: 3, angle: 80, baseKnockback: 30, knockbackGrowth: 25, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FIST }
	},
	jab3: {
		hitbox0: { damage: 8, angle: 65, baseKnockback: 45, knockbackGrowth: 40, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT },
		hitbox1: { damage: 10, angle: 65, baseKnockback: 60, knockbackGrowth: 60, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT }
	},
	dash_attack: {
		hitbox0: {damage: 11, angle: 45, baseKnockback: 55, knockbackGrowth: 80, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT }
	},	
	tilt_forward: {
		hitbox0: { damage: 9, knockbackGrowth: 40, baseKnockback: 65, angle: 35, limb:AttackLimb.FIST }
	},
	tilt_up: {
		hitbox0: { damage: 8, knockbackGrowth: 55, baseKnockback: 55, angle: 70, limb:AttackLimb.FIST },
		hitbox1: { damage: 6, knockbackGrowth: 50, baseKnockback: 40, angle: 65, limb:AttackLimb.FIST },
	},
	tilt_down: {
		hitbox0: { damage: 5, angle: 65, baseKnockback: 65, knockbackGrowth: 60, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 5, angle: 65, baseKnockback: 65, knockbackGrowth: 60, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 5, angle: 65, baseKnockback: 65, knockbackGrowth: 60, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT}
	},

	//STRONG ATTACKS
	strong_forward_attack: {
		hitbox0: {damage: 8, angle: 40, baseKnockback: 55, knockbackGrowth: 45, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: {damage: 12, angle: 40, baseKnockback: 70, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	strong_up_attack: {
		hitbox0: {damage: 3, knockbackGrowth: 0, baseKnockback: 50, hitstop: -1, selfHitstop: -1, hitstun: -1, reversibleAngle: false, angle: 85, limb:AttackLimb.FIST}
	}, 
	strong_down_attack: {
		hitbox0: {damage: 8, angle: 70, baseKnockback: 60, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.BODY},
		hitbox1: {damage: 10, angle: 70, baseKnockback: 60, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.BODY},
		hitbox2: {damage: 12, angle: 70, baseKnockback: 60, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.BODY}
	},

	//AERIAL ATTACKS
	aerial_neutral: {
		hitbox0: { damage: 8, angle: 361, baseKnockback: 40, knockbackGrowth: 45, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 4, angle: 361, baseKnockback: 40, knockbackGrowth: 45, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	aerial_forward: {
		hitbox0: { damage: 16, angle: 40, knockbackGrowth: 50, baseKnockback: 60, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT },
		hitbox1: { damage: 5, angle: 361, knockbackGrowth: 50, baseKnockback: 40, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT}
	},
	aerial_back: {
		hitbox0: { damage: 8, angle: 40, baseKnockback: 45, knockbackGrowth: 70, hitstop:-1, selfHitstop:-1,  limb:AttackLimb.FOOT },
		hitbox1: { damage: 8, angle: 40, baseKnockback: 50, knockbackGrowth: 75, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT }
	},
	aerial_up: {
		hitbox0: { damage: 9, knockbackGrowth: 70, baseKnockback: 50, hitstop: -1, selfHitstop:-1, angle: 70, limb:AttackLimb.FIST}
	},
	aerial_down: {
		hitbox0: { damage: 10, angle: 270, knockbackGrowth: 45, baseKnockback: 20, hitstop: -1, selfHitstop: -1, limb:AttackLimb.FOOT }
	},

	//SPECIAL ATTACKS
	special_neutral: {
		hitbox0: {damage: 10, angle: 30, baseKnockback: 60, knockbackGrowth: 45, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FIST},
		hitbox1: {damage: 14, angle: 30, baseKnockback: 60, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FIST}
	},
	special_neutral_air: {
		hitbox0: {damage: 12, angle: 30, baseKnockback: 60, knockbackGrowth: 55, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: {damage: 15, angle: 30, baseKnockback: 70, knockbackGrowth: 75, hitstop: -1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	special_side: {
		hitbox0: { damage: 7, knockbackGrowth: 35, baseKnockback: 70, hitstop: -1, selfHitstop:-1, hitstun: -1, angle: 25, limb:AttackLimb.FIST, reversibleAngle: false,}
	},
	special_side_air: {
		hitbox0: { damage: 7, knockbackGrowth: 35, baseKnockback: 70, hitstop: -1, selfHitstop:-1, hitstun: -1, angle: 25, limb:AttackLimb.FIST, }
	},
	special_up: {
		hitbox0: {damage: 3, knockbackGrowth: 0, baseKnockback: 50, hitstop: -1, selfHitstop: -1, hitstun: -1, reversibleAngle: false, angle: 85, limb:AttackLimb.FIST}
	}, 
	special_up_air: {
		hitbox0: {damage: 3, knockbackGrowth: 0, baseKnockback: 70, hitstop: -1, selfHitstop: -1, reversibleAngle: false, angle: 75, directionalInfluence: false, limb:AttackLimb.FIST}
	}, 

	special_up_air_kick: {
		hitbox0: {damage: 10, knockbackGrowth: 65, baseKnockback: 60, hitstop: -1, selfHitstop: -1, hitstun: -1, reversibleAngle: false, angle: 85, limb:AttackLimb.FIST}
	}, 

	special_down: {
		hitbox0: { damage:4, angle:25, baseKnockback: 70, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false}
	}, 
	special_down_air: {
		hitbox0: { damage:4, angle:25, baseKnockback: 75, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false}
	},

	//SUPERS
	super1: {
		hitbox0: { damage: 10, knockbackGrowth: 55, baseKnockback: 70, hitstop: 16, selfHitstop:1, hitstun: -1, angle: 35, limb:AttackLimb.FIST}
	},

	super2: {
		hitbox0: { damage: 20, knockbackGrowth: 60, baseKnockback: 70, hitstop: 16, selfHitstop:1, hitstun: -1, angle: 80, limb:AttackLimb.FIST}
	},

	//THROWS
	throw_down: {
		hitbox0: { damage: 7, angle: 45, baseKnockback: 55, knockbackGrowth: 65, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.BODY }
	},
	throw_up: {
		hitbox0: { damage: 8, angle: 95, baseKnockback: 55, knockbackGrowth: 65, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.HEAD }
	},
	throw_forward: {
		hitbox0: { damage: 8, angle: 45, baseKnockback: 55, knockbackGrowth: 45, hitstop:0, selfHitstop:0, reversibleAngle: false, hitSoundOverride: "#n/a", hitEffectOverride: "#n/a" }
	},
	throw_back: { 
		hitbox0: { damage: 8, angle: 145, baseKnockback: 55, knockbackGrowth: 45, hitstop:0, selfHitstop:0, reversibleAngle: false, hitSoundOverride: "#n/a", hitEffectOverride: "#n/a" }
	},

	raging_demon: {
		hitbox0: {damage:1, angle: 45, backKnockback: 69, knockbackGrowth: 420, hitstop: 60, selfHitstop: 60}
	},

	
	//MISC ATTACKS
	ledge_attack: {
		hitbox0: { damage: 9, angle: 361, baseKnockback: 40, knockbackGrowth: 60, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT},
		hitbox1: { damage: 9, angle: 361, baseKnockback: 40, knockbackGrowth: 60, hitstop:-1, selfHitstop:-1, limb:AttackLimb.FOOT}
	},
	crash_attack: {
		hitbox0: { damage: 6, angle: 145, baseKnockback: 70, knockbackGrowth: 25, hitstop: -1, selfHitstop:-1, reversibleAngle: false, limb:AttackLimb.FOOT }
	},
	emote: {
		hitbox0: {}
	}

	//UNUSED ATTACKS (Example attacks that are currently not used. You can rename the HitboxStats and the animation if you'd like to replace an existing animation.)
	/*
	aerial_neutral (multi-hit): {
		hitbox0: { damage: 1, angle: 40, baseKnockback: 60, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false, limb:AttackLimb.FOOT },
		hitbox1: { damage: 1, angle: 40, baseKnockback: 60, knockbackGrowth: 0, hitstop: -1, selfHitstop: -1, reversibleAngle: false, limb:AttackLimb.FOOT}
	},
	*/
}
