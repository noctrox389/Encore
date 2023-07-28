previouslyric = '';

function onCreate()
	makeLuaText('lyric', '', 720, 250, 540);
	setObjectCamera('lyric', 'camHUD');
	setTextSize('lyric', 25);
	setTextColor('lyric', 'FFFF');
	addLuaText('lyric');
end

function onEvent(n,v1,v2)
	if n == 'Lyrics' then

		v2 = tostring(v2);

		if v2 == '0' then
			setTextString('lyric', v1);
			-- debugPrint('new');
		else
			setTextString('lyric', previouslyric .. v1);
			-- debugPrint(v1, ' added to ', previouslyric);
		end
	end
	previouslyric = getTextString('lyric');
end
