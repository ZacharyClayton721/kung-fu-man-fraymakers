// API Script

// Sprites
var ragingBackground = Sprite.create(self.getResource().getContent('kungfuman'));
ragingBackground.currentAnimation = 'raging_demon_background';

var bg = Sprite.create(self.getResource().getContent('kungfuman'));
bg.currentAnimation = 'raging_demon_background';

// Super Bar Related Variables

// Bar Holder Sprite
var superBar = Sprite.create(self.getResource().getContent('kungfuman'));
superBar.currentAnimation = 'superBar';
// Gauge Sprite
var superGaugeSprite = Sprite.create(self.getResource().getContent('kungfuman'));
superGaugeSprite.currentAnimation = 'superGauge';
// Maximum Sprite
var maximumSprite = Sprite.create(self.getResource().getContent('kungfuman'));
maximumSprite.currentAnimation = 'maximum';

// Tracks Individual Super Gauge
var superGauge = 1;
// Tracks Animation of Super Gauge
var superGaugeVisual = 1;
// Determines Animation Interval
var superGaugeAnim = 0;
// Shader for Super After Images
var superShader = new RgbaColorShader();
// Tracks level
var level = 1;
// Maximum Tracker
var maximumLevel = false;
// Tracking the Anim Timer
var animTimer = -1;
// Listen for an attack press
var attackListen = true;
// Current Attack Button Anim
var attackAnim = null;
// For Tracking Whether the Attack Landed or not
var attackAnimLanded = false;
// Check Whiff
var checkWhiff = false;
// Holds Transistion States for Checking if a move whiffed
var transitionStates = [2,19,23];
// Creates a Map of Animations and the value to add to bar
var onHitAdd = new StringMap();
onHitAdd.set("aerial_neutral", 6);
onHitAdd.set("aerial_down", 8);
onHitAdd.set("aerial_forward", 6);
onHitAdd.set("aerial_up", 6);
onHitAdd.set("aerial_back", 8);
onHitAdd.set("jab1", 2);
onHitAdd.set("jab2", 2);
onHitAdd.set("jab3", 5);
onHitAdd.set("tilt_forward", 5);
onHitAdd.set("tilt_up", 6);
onHitAdd.set("tilt_down", 6);
onHitAdd.set("strong_forward_in", 8);
onHitAdd.set("strong_up_in", 6);
onHitAdd.set("strong_down_in", 8);
onHitAdd.set("dash_attack", 6);
onHitAdd.set("special_up", 5);
onHitAdd.set("special_up_air", 5);
onHitAdd.set("special_side", 8);
onHitAdd.set("special_down", 4);
onHitAdd.set("special_down_air", 4);

// Creates a Map of Animations and the value to add to bar when the move is whiffed
var onWhiffAdd = new StringMap();
onWhiffAdd.set("aerial_neutral", 3);
onWhiffAdd.set("aerial_down", 4);
onWhiffAdd.set("aerial_forward", 3);
onWhiffAdd.set("aerial_up", 3);
onWhiffAdd.set("aerial_back", 4);
onWhiffAdd.set("jab1", 1);
onWhiffAdd.set("tilt_forward", 2);
onWhiffAdd.set("tilt_up", 3);
onWhiffAdd.set("tilt_down", 4);
onWhiffAdd.set("strong_forward_in", 5);
onWhiffAdd.set("strong_up_in", 6);
onWhiffAdd.set("strong_down_in", 6);
onWhiffAdd.set("dash_attack", 5);


// start general functions --- 

//Runs on object init
function initialize(){
    
    // Event Listener For Adding Bar
    self.addEventListener(GameObjectEvent.HIT_DEALT, onHitBar, {persistent: true});
    self.addEventListener(GameObjectEvent.LAND, onLandBar, {persistent: true});

    // Adds the Super Bar Sprites to the Characters Damage Counter
    self.getDamageCounterContainer().y = -5;
    self.getDamageCounterContainer().addChild(superBar);
    self.getDamageCounterContainer().addChild(superGaugeSprite);


}

// Super Related Functions

// Function to Add Bar to the Super Gauge
function addToGuage(addition) {
    if (maximumLevel == false) {
        superGauge += addition;
        superGaugeVisual += addition;
    }
}

// Function to Add Bar when a move hits
function onHitBar() {
    attackAnimLanded = true;
    attackListen = true;
    superGaugeSprite.currentFrame = superGaugeVisual;
    addToGuage(onHitAdd.get(attackAnim));
    
}


function gotHitBar() {
    superAfterImage1.currentFrame = 1;
    superAfterImage2.currentFrame = 1;
    self.getViewRootContainer().removeChild(superAfterImage1);
    self.getViewRootContainer().removeChild(superAfterImage2);
    //Engine.log(event.data.foe);
    attackAnimLanded = false;
    checkWhiff = false;
    attackListen = true;
    superGaugeSprite.currentFrame = superGaugeVisual;
    addToGuage(4);
}

function onLandBar() {
    if (checkWhiff == true && attackAnimLanded == false) {
        attackListen = true;
        checkWhiff = false;
        superGaugeSprite.currentFrame = superGaugeVisual;
        addToGuage(onWhiffAdd.get(attackAnim));
    }
}

var checked = false;

function update() {

    // Auto Turn-Around Code
    /*
	var playerCount = self.getFoes();
    if (playerCount.length == 1) {
        var enemy = playerCount[0];
        var enemyX = enemy.getX();
        var playerX = self.getX();
        if (enemyX > playerX) {
            if (self.isFacingLeft() && self.getHeldControls().LEFT) {
                if (self.isOnFloor() && self.inState(CState.STAND_TURN) && checked == false){
                    checked = true;
                    self.toState(CState.WALK_LOOP,'walk_back');
                }
            }
            

        }
    }
    

    if (checked == true) {
        if (self.getHeldControls().LEFT == false) {
            self.flip();
            checked = false;
        }
    }
    */

	if (animTimer > 0) {
        animTimer -= 1;
    } else if (animTimer == 0) {
        attackAnim = self.getAnimation();
        animTimer = -1;
    }

    if ((checkWhiff == true) && (attackAnimLanded == false)) {
        
        if (transitionStates.contains(self.getState())) {
            attackListen = true;
            checkWhiff = false;
            superGaugeSprite.currentFrame = superGaugeVisual;
            addToGuage(onWhiffAdd.get(attackAnim));
        }
    }

    if (attackListen == true) {
        if (self.getPressedControls().ATTACK || self.getPressedControls().SPECIAL || self.getPressedControls().TILT || self.getPressedControls().STRONG) {
            attackListen = false;
            animTimer = 2;
            checkWhiff = true;
            attackAnimLanded = false;
        }

    }
    
    
    if (superGauge > 100) {
        AudioClip.play(self.getResource().getContent('level_up'));
        level += 1;

        if (level == 4) {
            maximumLevel = true;
            superGauge = 101;
            superGaugeVisual = 100;
            self.getDamageCounterContainer().addChild(maximumSprite);
        } else {
            superBar.currentFrame = level;
        }

        superBar.currentFrame = level;
        superGauge -= 100;

    }

    if (superGaugeAnim == 2) {

        if (superGaugeVisual > 100) {
            if (maximumLevel == true) {
                maximumSprite.currentFrame = 1;
            }
            superGaugeVisual -= 100;
            superGaugeSprite.currentFrame = superGaugeVisual;
        } else {
            if (maximumLevel == true) {
                maximumSprite.currentFrame = 2;
            }
            superGaugeVisual += 100;
            superGaugeSprite.currentFrame = superGaugeVisual;
        }
        superGaugeAnim = 0;
    } else {
        superGaugeAnim += 1;
    }


}

function spendBarToMakeBar(levelsSpent) {

    if (maximumLevel == true) {
        self.getDamageCounterContainer().removeChild(maximumSprite);
        maximumLevel = false;
        superGaugeVisual = 1;
    }

    level = level - levelsSpent;
    superBar.currentFrame = level;
    superGaugeSprite.currentFrame = superGaugeVisual;
}

function onTeardown() {
	
}

// --- end general functions

// Raging Demon Hitspark
function summonHitSpark() {
    var hitSpark = Sprite.create(self.getResource().getContent("kungfuman"));
    
    var boardStartFrame = 0;
    var side = Random.getInt(0,1);
    
    if (side == 0) {
        hitSpark.currentAnimation = 'raging_board_left';
        boardStartFrame = -34;
        hitSpark.x = Random.getInt(170,250);
        hitSpark.y = Random.getInt(270,350);
    } else if (side == 1) {
        boardStartFrame = 34;
        hitSpark.currentAnimation = 'raging_board_right';
        hitSpark.x = (Random.getInt(490,580));
        hitSpark.y = Random.getInt(270,350);
        
    }
    
    camera.getForegroundContainer().addChild(hitSpark);

    var apex = Random.getInt(100,150); 
    
    var time = 0;
    function advanceSpark() {
        
        var yPos = -1*(-.099*Math.pow(boardStartFrame,2) + apex) + 320;
        
        hitSpark.y = yPos;

        if (side == 0) {
            if (time < 34) {
                hitSpark.x = hitSpark.x + 4.7;
            }
            boardStartFrame += 1;
        } else {
            if (time < 34) {
                hitSpark.x = hitSpark.x - 4.7;
            }
            boardStartFrame -= 1;
        }
        
        hitSpark.advance();
        time += 1;

        if (time == 34) {
            AudioClip.play(GlobalSfx.FATAL_KICK);
            self.getGrabbedFoe().setDamage(self.getGrabbedFoe().getDamage() + 100);
        }
        
        //Engine.log(time);
        if (time >= 39) {
            camera.getForegroundContainer().removeChild(hitSpark);
        }
    }

    
    self.addTimer(1, 39, advanceSpark);
    
}

