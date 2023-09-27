function onCountdownTick(counter)
	if counter == 0 then
		makeLuaSprite('creditsImage', 'songCred', -342, 70)
		setObjectCamera('creditsImage', 'hud')
		addLuaSprite('creditsImage', true)

		makeLuaText('Line1', Ln1, 999, -332, 165)
		setTextAlignment('Line1', 'left')
		setTextSize('Line1', 24)
		setTextFont('Line1', 'vcr (og).ttf')
		addLuaText('Line1', true)

		makeLuaText('Line2', Ln2, 999, -332, 210)
		setTextAlignment('Line2', 'left')
		setTextSize('Line2', 24)
		setTextFont('Line2', 'vcr (og).ttf')
		addLuaText('Line2', true)

		makeLuaText('Line3', Ln3, 999, -332, 255)
		setTextAlignment('Line3', 'left')
		setTextSize('Line3', 24)
		setTextFont('Line3', 'vcr (og).ttf')
		addLuaText('Line3', true)

		makeLuaText('Line4', Ln4, 999, -332, 300)
		setTextAlignment('Line4', 'left')
		setTextSize('Line4', 24)
		setTextFont('Line4', 'vcr (og).ttf')
		addLuaText('Line4', true)

		doTweenX('creditsEnter', 'creditsImage', 0, 0.8, 'expoOut')
		doTweenX('Line1.x', 'Line1', 10, 0.8, 'expoOut')
		doTweenX('Line2.x', 'Line2', 10, 0.8, 'expoOut')
		doTweenX('Line3.x', 'Line3', 10, 0.8, 'expoOut')
		doTweenX('Line4.x', 'Line4', 10, 0.8, 'expoOut')
	end
end
function onTweenCompleted(tag)
	if tag == 'creditsEnter' then
		runTimer('creditsWait', 2, 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'creditsWait' then
		doTweenX('creditsExit', 'creditsImage', -342, 0.8, 'expoIn')
		doTweenX('Line1.x', 'Line1', -332, 0.8, 'expoIn')
		doTweenX('Line2.x', 'Line2', -332, 0.8, 'expoIn')
		doTweenX('Line3.x', 'Line3', -332, 0.8, 'expoIn')
		doTweenX('Line4.x', 'Line4', -332, 0.8, 'expoIn')
	end
end



function onCreate()

	if songName == 'torrent' then
		Ln1 = 'Torrent'
		Ln2 = 'Artist: Squeak'
		Ln3 = 'Artist: zeroh'
		Ln4 = ''
	end

	if songName == 'sensory-overload' then
		Ln1 = 'Sensory Overload'
		Ln2 = 'Artist: DatDavi'
		Ln3 = 'Artist: aytanner'
		Ln4 = ''
	end

	if songName == 'jailbreak' then
		Ln1 = 'Jailbreak'
		Ln2 = 'Artist: ayybeff'
		Ln3 = ''
		Ln4 = ''
	end

	if songName == 'bitcrush' then
		Ln1 = 'Bitcrush'
		Ln2 = 'Artist: zeroh'
		Ln3 = 'Artist: aytanner'
		Ln4 = 'Artist: DatDavi'
	end

	if songName == 'firewall' then
		Ln1 = 'Firewall'
		Ln2 = 'Artist: genechip'
		Ln3 = ''
		Ln4 = ''
	end

	if songName == 'subzero' then
		Ln1 = 'Subzero'
		Ln2 = 'Artist: genechip'
		Ln3 = ''
		Ln4 = ''
	end

	if songName == 'kickstart' then
		Ln1 = 'Kickstart'
		Ln2 = 'Artist: zeroh'
		Ln3 = ''
		Ln4 = ''
	end

	if songName == 'night-rider' then
		Ln1 = 'Night Rider'
		Ln2 = 'Artist: DatDavi'
		Ln3 = 'Artist: aytanner'
		Ln4 = ''
	end

	if songName == 'turbocharged' then
		Ln1 = 'Turbocharged'
		Ln2 = 'Artist: Squeak'
		Ln3 = 'Artist: Genechip'
		Ln4 = 'Artist: Saster,Zeroh'
	end

	if songName == 'giveaway' then
		Ln1 = 'Giveaway'
		Ln2 = 'Artist: Squeak'
		Ln3 = 'Artist: genechip'
		Ln4 = ''
	end

	if songName == 'nexus' then
		Ln1 = 'Nexus'
		Ln2 = 'Artist: genechip'
		Ln3 = ''
		Ln4 = ''
	end

	if songName == 'shockwave' then
		Ln1 = 'Shockwave'
		Ln2 = 'Artist: zeroh'
		Ln3 = ''
		Ln4 = ''
	end
end