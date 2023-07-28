function onCreate()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Disabled');
	
    makeLuaSprite('sky','stages/cycles/sky',-200,-400)
	addLuaSprite('sky',false) 
    setLuaSpriteScrollFactor('sky', 0.4, 0.4);
	scaleObject('sky', 5.6, 5.6)
    
	makeLuaSprite('mountains','stages/cycles/mountains',-300,-200)
	addLuaSprite('mountains',false) 
    setLuaSpriteScrollFactor('mountains', 0.5, 0.5);
	scaleObject('mountains', 5.6, 5.6)
    
	makeAnimatedLuaSprite('water','stages/cycles/CyclesEncoreBG',0,400)
	addAnimationByPrefix('water', 'idle', 'wateranim', 24, true)
	addLuaSprite('water',false) 
    setLuaSpriteScrollFactor('water', 0.8, 0.8);
	scaleObject('water', 4.5, 4)

	makeLuaSprite('ground','stages/cycles/ground', -600,500)
	addLuaSprite('ground',false) 
    setLuaSpriteScrollFactor('ground', 1, 1);
	scaleObject('ground', 5.5, 5)

	makeLuaSprite('fog','stages/cycles/fog', -600,200)
	addLuaSprite('fog',true) 
    setLuaSpriteScrollFactor('fog', 1, 1)
	scaleObject('fog', 5.4, 5)

	makeLuaSprite('clouds','stages/cycles/clouds',200,-250)
	addLuaSprite('clouds',false) 
	scaleObject('clouds',3,3)
    setLuaSpriteScrollFactor('clouds', 0.6, 0.6);

	makeAnimatedLuaSprite('overlay','stages/cycles/CyclesEncoreBG',-10,-40)
	addAnimationByPrefix('overlay', 'idle', 'overlay', 24, true)
	addLuaSprite('overlay',true) 
    setLuaSpriteScrollFactor('overlay', 1.1, 1.1);
	scaleObject('overlay', 6.1, 6.1)
	setObjectCamera('overlay', 'camHUD')
    
end

function onCreatePost()
	setProperty('healthBar.visible', false);
	setProperty('healthBarBG.visible', false);

	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);
end

function onBeatHit( ... )--for every beat
    --body
end

function onStepHit( ... )-- for every step
    -- body
end

function onUpdate( ... )
	local health = getProperty('health');
	
	if health < 0.1 then
		setProperty('health',0.2);
	end
end

function onUpdate()
    if mustHitSection == false then
        setProperty('defaultCamZoom', 0.75)
    else
        setProperty('defaultCamZoom', 0.9)
	end
end