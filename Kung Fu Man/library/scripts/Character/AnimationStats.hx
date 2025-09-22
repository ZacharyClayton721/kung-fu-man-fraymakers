// Animation stats for CharacterTemplate
// Many values are automatically set by our Common class
// Values assigned in this file will override those values
{
	//MOTIONS
	stand: {},
	stand_turn: {},
	walk_in: {},
	walk: {},
	walk_back: {endType:AnimationEndType.LOOP},
	walk_out: {},
	dash: {},
	run: {},
	run_turn: {},
	skid: {},
	jump_squat: {},
	jump_in: {},
	jump_midair: {},
	jump_forward: {endType:AnimationEndType.AUTO, nextAnimation:'fall_loop', allowMovement: true},
	jump_backward: {endType:AnimationEndType.AUTO, nextAnimation:'fall_loop', allowMovement: true},
	jump_out: {},
	fall_loop: {},
	fall_special: {},
	land_light: {},
	land_heavy: {},
	crouch_in: {},
	crouch_loop: {},
	crouch_out: {},

	//AIRDASHES
	airdash_up: {},
	airdash_down: {},
	airdash_forward: {},
	airdash_back: {},
	airdash_forward_up: {},
	airdash_forward_down: {},
	airdash_back_up: {},
	airdash_back_down: {},

	//DEFENSE
	shield_in: {},
	shield_loop: {},
	shield_hurt: {},
	shield_out: {}, 
	parry_in: {},
	parry_success: {},
	parry_fail: {},
	roll: {},
	spot_dodge: {},

	//ASSIST CALL
	assist_call: {},
	assist_call_air: {},

	//LIGHT ATTACKS
	jab1: {},
	jab2: {},
	jab3: {},
	dash_attack: {xSpeedConservation: 1.25, leaveGroundCancel:false},
	tilt_forward: {},
	tilt_up: {},
	tilt_down: {},

	//STRONG ATTACKS
	strong_forward_in: {},
	strong_forward_charge: {},
	strong_forward_attack: {},
	strong_up_in: {},
	strong_up_charge: {},
	strong_up_attack: {},
	strong_down_in: {},
	strong_down_charge: {},
	strong_down_attack: {},

	//AERIAL ATTACKS
	aerial_neutral: {landAnimation:"light_land"},
	aerial_forward: {landAnimation:"light_land"},
	aerial_back: {landAnimation:"light_land"},
	aerial_up: {landAnimation:"light_land"},
	aerial_down: {landAnimation:"light_land"},

	//AERIAL ATTACK LANDING
	aerial_neutral_land: {},
	aerial_forward_land: {},
	aerial_back_land: {},
	aerial_up_land: {},
	aerial_down_land: {},

	//SPECIAL ATTACKS
	special_neutral: {},
	special_neutral_air: {landType:LandType.LINK_FRAMES, landAnimation:"special_neutral"},
	special_up: {xSpeedConservation:0.5, ySpeedConservation:0.5, allowMovement: false}, 
	special_up_air: {allowMovement: true, leaveGroundCancel:false, nextState:CState.FALL_SPECIAL, landType:LandType.TOUCH}, 
	special_up_air_kick: {allowMovement: true, nextState:CState.FALL_SPECIAL, landType:LandType.AUTO, landAnimation:"knee_land"}, 
	special_side: {xSpeedConservation: 1.25},
	special_side_air: {leaveGroundCancel:false, xSpeedConservation: 1, landType:LandType.LINK_FRAMES, landAnimation:"special_side"}, 
	special_down: {allowMovement: false, allowTurnOnFirstFrame: true, nextAnimation: "special_down_loop"}, 
	special_down_loop: {allowMovement: false, chargeFramesMax: 60, chargeGlow: true, chargeShake: true}, 
	special_down_attack: {allowMovement: false}, 
	special_down_air: {allowMovement: false, allowTurnOnFirstFrame: true, nextAnimation: "special_down_air_loop", landType:LandType.LINK_FRAMES, landAnimation:"special_down", gravityMultiplier: .1, singleUse:true}, 
	special_down_air_loop: {allowMovement: false, chargeFramesMax: 60, chargeGlow: true, chargeShake: true, landType:LandType.LINK_FRAMES, landAnimation:"special_down_loop", gravityMultiplier: .1}, 
	special_down_air_attack: {allowMovement: false, landType:LandType.LINK_FRAMES, landAnimation:"special_down_attack"},
	special_down_clutch_attack: {allowMovement: false, slideOff: true},

	//SUPERS
	super1_freeze:  {allowTurnOnFirstFrame: false, allowMovement: false, endType:AnimationEndType.AUTO, nextAnimation:'super1',interruptible:false},
	super1: {allowMovement: false},
	super2_freeze:  {allowTurnOnFirstFrame: false, allowMovement: false, endType:AnimationEndType.AUTO, nextAnimation:'super2',interruptible:false},
	super2: {allowMovement: false},
	

	//THROWS
	grab: {},
	grab_hold: {},
	throw_forward: {},
	throw_back: {},
	throw_up: {},
	throw_down: {},

	//HURT ANIMATIONS
	hurt_light_low: {},
	hurt_light_middle: {},
	hurt_light_high: {},
	hurt_medium: {},
	hurt_heavy: {},
	hurt_thrown: {},
	tumble: {},

	//CRASH
	crash_bounce: {},
	crash_loop: {},
	crash_get_up: {},
	crash_attack: {},
	crash_roll: {},

	//LEDGE
	ledge_in: {},
	ledge_loop: {},
	ledge_roll: {},
	ledge_climb: {},
	ledge_attack: {},

	//MISC
	revival: {},
	emote: {}
}
