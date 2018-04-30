SOUNDS_CONFIG = {
	soundChannel = SoundChannels.Music,
	checkInterval = 100,
	folder = 'music/',
	noSound = 'Nenhum arquivo de som para esta area',
}

SOUNDS = {

		{fromPos = {x=1509, y=1654, z=7}, toPos = {x=1662, y=1758, z=7}, priority = 1, sound="Smile Town.ogg"},
		{fromPos = {x=1509, y=1654, z=7}, toPos = {x=1662, y=1758, z=6}, priority = 1, sound="Smile Town.ogg"},
		
		{fromPos = {x=1579, y=1697, z=7}, toPos = {x=1593, y=1707, z=7}, priority = 2, sound="Fairy Tail - Main.ogg"},
		
		
		{fromPos = {x=1558, y=1695, z=7}, toPos = {x=1572, y=1707, z=7}, priority = 2, sound="Pokemon Center.ogg"},
		
		{fromPos = {x=729, y=851, z=7}, toPos = {x=808, y=905, z=7}, priority = 1, sound="Elite Four Battle.ogg"},
		{fromPos = {x=852, y=848, z=7}, toPos = {x=914, y=898, z=7}, priority = 1, sound="Elite Four Battle.ogg"},

		
		
} ----------

-- Sound
local rcSoundChannel
local showPosEvent
local playingSound

-- Design
soundWindow = nil
soundButton = nil

function toggle()
  if soundButton:isOn() then
    soundWindow:close()
    soundButton:setOn(false)
  else
    soundWindow:open()
    soundButton:setOn(true)
  end
end

function onMiniWindowClose()
  soundButton:setOn(false)
end

function init()
	for i = 1, #SOUNDS do
		SOUNDS[i].sound = SOUNDS_CONFIG.folder .. SOUNDS[i].sound
	end
	
	connect(g_game, { onGameStart = onGameStart,
                    onGameEnd = onGameEnd })
	
	rcSoundChannel = g_sounds.getChannel(SOUNDS_CONFIG.soundChannel)
	-- rcSoundChannel:setGain(value/COUNDS_CONFIG.volume)

	soundButton = modules.client_topmenu.addRightGameToggleButton('soundButton', tr('Sound Info') .. '', '/images/audio', toggle)
	soundButton:setOn(true)
	
	soundWindow = g_ui.loadUI('rcsound', modules.game_interface.getRightPanel())
	soundWindow:disableResize()
	soundWindow:setup()
	
	if(g_game.isOnline()) then
		onGameStart()
	end
end

function terminate()
	disconnect(g_game, { onGameStart = onGameStart,
                       onGameEnd = onGameEnd })
	onGameEnd()
	soundWindow:destroy()
	soundButton:destroy()
end

function onGameStart()
	stopSound()
	toggleSoundEvent = addEvent(toggleSound, SOUNDS_CONFIG.checkInterval)
end

function onGameEnd()
	stopSound()
	removeEvent(toggleSoundEvent)
end

function isInPos(pos, fromPos, toPos)
	return
		pos.x>=fromPos.x and
		pos.y>=fromPos.y and
		pos.z>=fromPos.z and
		pos.x<=toPos.x and
		pos.y<=toPos.y and
		pos.z<=toPos.z
end

function toggleSound()
	local player = g_game.getLocalPlayer()
	if not player then return end
	
	local pos = player:getPosition()
	local toPlay = nil

	for i = 1, #SOUNDS do
		if(isInPos(pos, SOUNDS[i].fromPos, SOUNDS[i].toPos)) then
			if(toPlay) then
				toPlay.priority = toPlay.priority or 0
				if((toPlay.sound~=SOUNDS[i].sound) and (SOUNDS[i].priority>toPlay.priority)) then
					toPlay = SOUNDS[i]
				end
			else
				toPlay = SOUNDS[i]
			end
		end
	end

	playingSound = playingSound or {sound='', priority=0}
	
	if(toPlay~=nil and playingSound.sound~=toPlay.sound) then
		g_logger.info("RC Sounds: New sound area detected:")
		g_logger.info("  Position: {x=" .. pos.x .. ", y=" .. pos.y .. ", z=" .. pos.z .. "}")
		g_logger.info("  Music: " .. toPlay.sound)
		stopSound()
		playSound(toPlay.sound)
		playingSound = toPlay
	elseif(toPlay==nil) and (playingSound.sound~='') then
		g_logger.info("RC Sounds: New sound area detected:")
		g_logger.info("  Left music area.")
		stopSound()
	end

	toggleSoundEvent = scheduleEvent(toggleSound, SOUNDS_CONFIG.checkInterval)
end

function playSound(sound)
	rcSoundChannel:enqueue(sound, 0)
	setLabel(clearName(sound))
end

function clearName(soundName)
	local explode = string.explode(soundName, "/")
	soundName = explode[#explode]
	explode = string.explode(soundName, ".ogg")
	soundName = ''
	for i = 1, #explode-1 do
		soundName = soundName .. explode[i]
	end
	return soundName
end

function stopSound()
	setLabel(SOUNDS_CONFIG.noSound)
	rcSoundChannel:stop()
	playingSound = nil
end

function setLabel(str)
	soundWindow:recursiveGetChildById('currentSound'):getChildById('value'):setText(str)
end