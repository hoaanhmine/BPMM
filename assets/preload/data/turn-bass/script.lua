local angleshit = 0.2;
local anglevar = 0.2;
local zoomshit = 0;
local camSpeed = 5;
local camInt = 1;
local modchart = true

function onCreate()

	makeAnimatedLuaSprite('black','no se codear/negro',-600,-100)
	addAnimationByPrefix('black','1','black1',24,true)
	addAnimationByPrefix('black','2','black2',24,true)
    setObjectCamera('black', 'camOther')
    addLuaSprite('black',true)

	makeAnimatedLuaSprite('negron','no se codear/dark',-600,-100)
    addAnimationByPrefix('negron','block','negronblock',24,true)
    addAnimationByPrefix('negron','blackin','negronblackin',24,true)
    setObjectCamera('negron', 'camOther')
    addLuaSprite('negron',true)
	
	makeLuaSprite('youarebf', 'no se codear/youarebf', -410, 300);
	setScrollFactor('youarebf', 1.0, 1.0);
	setObjectCamera('youarebf', 'other')
	scaleObject('youarebf', 1.0, 1.0);
	addLuaSprite('youarebf', true);

	makeLuaSprite('dark', 'darks', 0, 0)
    setObjectCamera('dark', 'camOther')
    setProperty('dark.alpha', 0.5)
    scaleObject('dark', 0.75, 0.75);
    addLuaSprite('dark', false)

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bf_dead');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'bf_loop');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'bf_confirm');

end

function onBeatHit()

    if curBeat == 4 then
		playAnim('black','2',true)
	end

    if curBeat == 4 then
		playAnim('negron','blackin',true)
	end

    if curBeat == 8 then
		playAnim('negron','block',true)
	end

	if curBeat == 1 then
		doTweenX('youarebfTweenY', 'youarebf', 500, 0.5, 'cubeOut')
	  end
	  if curBeat == 4 then
		doTweenX('youarebfTweenY', 'youarebf', 1500, 0.5, 'cubeIn')
	  end
	  if curBeat == 6 then
		  setProperty('youarebf.visible', false);
	  end

    if curBeat > 0 then
		if curBeat < 96 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 93 then
		if curBeat < 160 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 159 then
		if curBeat < 192 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

    if curBeat > 191 then
		if curBeat < 256 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

	if curBeat > 255 then
        if curBeat < 320 then
		    triggerEvent('Add Camera Zoom', 0.00,0.00)

		    if curBeat % 2 == 0 then
			    angleshit = anglevar;
		    else
			    angleshit = -anglevar;
		    end
		    setProperty('camHUD.angle',angleshit*3)
		    setProperty('camGame.angle',angleshit*3)
		    doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		    doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		    doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		    doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	    else
		    setProperty('camHUD.angle',0)
		    setProperty('camHUD.x',0)
		    setProperty('camHUD.x',0)
	    end
    end

    if curBeat > 255 then
		if curBeat < 320 then
			if curBeat % 1 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

	if curBeat > 319 then
		if curBeat < 352 then
			if curBeat % 2 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

	if curBeat > 351 then
		if curBeat < 400 then
			if curBeat % 4 == 0 then
				triggerEvent('Add Camera Zoom', 0.1,0.1)
			end
		end
	end

	if curBeat == 352 then
		objectPlayAnimation('black','1',true)
	end
end

function onStepHit()

	if curStep == 120 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 122 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 124 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 125 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 126 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 127 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 128 then
		triggerEvent('Add Camera Zoom', 0.2,0.1)
	end

	if curStep == 662 then
		makeLuaText('textobj', 'Do you always rap like that man?', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 684 then
		makeLuaText('textobj', 'YEAH!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 692 then
		makeLuaText('textobj', 'But thats just a bunch of beeps and boops!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 716 then
		makeLuaText('textobj', 'Yeah! You gotta use words and lyrics!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 742 then
		makeLuaText('textobj', 'Like this!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 752 then
		makeLuaText('textobj', '', 200, 200, 200);
		addLuaText('textobj')
		RunTimer('fadeText')
	end

	if curStep == 770 then
		makeLuaText('textobj', 'Pick up a card and place it down', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 786 then
		makeLuaText('textobj', 'Pick up a card and place it down!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 802 then
		makeLuaText('textobj', 'Then watch our turns go round and round', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 818 then
		makeLuaText('textobj', 'Then watch our turns go clockwise round!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 834 then
		makeLuaText('textobj', 'Its pretty easy dont you see', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 850 then
		makeLuaText('textobj', 'I really like this funky beat!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 866 then
		makeLuaText('textobj', 'Come one and have some fun with me', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 882 then
		makeLuaText('textobj', 'Ok Melodii!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 890 then
		makeLuaText('textobj', 'Yeah! Yeah!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 894 then
		makeLuaText('textobj', 'Hey, rappings really easy once you get the basic rhythm,', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 926 then
		makeLuaText('textobj', 'like 2 and 2 together, its like a funky algorithm', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 954 then
		makeLuaText('textobj', 'Yeah!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 956 then
		makeLuaText('textobj', '', 200, 200, 200);
		addLuaText('textobj')
		RunTimer('fadeText')
	end

	if curStep == 958 then
		makeLuaText('textobj', 'Yeah!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 960 then
		makeLuaText('textobj', 'The game wont stop until somebody will win,', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 986 then
		makeLuaText('textobj', 'so lets see which one of use will make it to the end!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1020 then
		makeLuaText('textobj', '', 200, 200, 200);
		addLuaText('textobj')
		RunTimer('fadeText')
	end

	if curStep == 1024 then
		makeLuaText('textobj', 'Numbers, colors, add, and switch,', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1040 then
		makeLuaText('textobj', 'theres lots of cards, try not to flinch!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1056 then
		makeLuaText('textobj', 'Red, yellow, blue, and green,', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1072 then
		makeLuaText('textobj', 'dont panic if youre in a pinch', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1088 then
		makeLuaText('textobj', 'Why panic if Im gonna win,', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1102 then
		makeLuaText('textobj', 'just one more card and Im out the door', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1118 then
		makeLuaText('textobj', 'Before you go, have one more card!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1134 then
		makeLuaText('textobj', 'Its a plus 4', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1142 then
		makeLuaText('textobj', 'Now this means WAR!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1152 then
		makeLuaText('textobj', 'Cant find a match, so Ill grab another', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1168 then
		makeLuaText('textobj', 'Oh take youre time, its not a bother', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1184 then
		makeLuaText('textobj', 'Dont try me dawg, Ill take you down!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1200 then
		makeLuaText('textobj', 'Dont threaten me, Ill end this NOW!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1214 then
		makeLuaText('textobj', 'Have 2', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1218 then
		makeLuaText('textobj', 'Take 4', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1222 then
		makeLuaText('textobj', 'Take 6', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1226 then
		makeLuaText('textobj', 'Have 8', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1230 then
		makeLuaText('textobj', 'Keep going dont make me wait!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1242 then
		makeLuaText('textobj', 'Youre late!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1246 then
		makeLuaText('textobj', 'Ill make you lose', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1254 then
		makeLuaText('textobj', 'Ill be on top', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1262 then
		makeLuaText('textobj', 'Ill keep on going till you drop!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1272 then
		makeLuaText('textobj', 'Ill keep on going till you drop!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1280 then
		makeLuaText('textobj', '', 200, 200, 200);
		addLuaText('textobj')
		RunTimer('fadeText')
	end

	if curStep == 1314 then
		makeLuaText('textobj', 'Whats that BF?', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1326 then
		makeLuaText('textobj', ':D', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1334 then
		makeLuaText('textobj', 'Oh. You won', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1350 then
		makeLuaText('textobj', 'Oh...', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1358 then
		makeLuaText('textobj', 'Well good game guys!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'EA53FE')
		setTextBorder('textobj', 2.0, '8017B0')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1372 then
		makeLuaText('textobj', 'Yeah!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1377 then
		makeLuaText('textobj', 'Good job!', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', 'FF632D')
		setTextBorder('textobj', 2.0, 'A52111')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1386 then
		makeLuaText('textobj', 'GG B)', 500, 380, 540);
		addLuaText('textobj')
		setTextColor('textobj', '5CC4FF')
		setTextBorder('textobj', 2.0, '1644B6')
		setTextSize('textobj', 23.0)
	end

	if curStep == 1396 then
		makeLuaText('textobj', '', 200, 200, 200);
		addLuaText('textobj')
		RunTimer('fadeText')
	end

	if curStep == 764 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 765 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 766 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 767 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 768 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1008 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end
	
	if curStep == 1010 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1012 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1014 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1016 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1020 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1022 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

	if curStep == 1024 then
		triggerEvent('Add Camera Zoom', 0.1,0.1)
	end

end

function onCreatePost()

	scaleObject('iconP2', 0.9, 0.9)
	scaleObject('iconP1', 0.9, 0.9)
	setProperty('healthBar.alpha', 0.2)
	setProperty('healthBarBG.alpha', 0.2)
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('iconP1.visible', true)
end

function onSongStart()

end

function onUpdate()

	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    cameraShake('game', 0.001, 0.1)
end

