function init()
  connect(g_game, { onGameEnd = onGameEnd })
  ProtocolGame.registerExtendedOpcode(103, function(protocol, opcode, buffer) onBuyFailed(protocol, opcode, buffer) end)

  shopWindow = g_ui.displayUI('shop')
  shopWindow:hide()
  playerEmeralds = shopWindow:getChildById('emeralds')

  shopTabBar = shopWindow:getChildById('shopTabBar')
  shopTabBar:setContentWidget(shopWindow:getChildById('shopTabContent'))
  
  outfitsPanel = g_ui.loadUI('outfits')
  shopTabBar:addTab('Outfits', outfitsPanel, '/images/game/shop/outfits')
  
  marketPanel = g_ui.loadUI('market')
  shopTabBar:addTab('Market', marketPanel, '/images/game/shop/market')
  
   marketPanel = g_ui.loadUI('helds')
  shopTabBar:addTab('Helds', marketPanel, '/images/game/shop/helds')

  addonsPanel = g_ui.loadUI('addons')
  shopTabBar:addTab('Addons', addonsPanel, '/images/game/shop/addons')
  
  addonsPanel = g_ui.loadUI('poke1')
  shopTabBar:addTab('Poke1', addonsPanel, '/images/game/shop/poke1')

  clansPanel = g_ui.loadUI('clans')
  shopTabBar:addTab('Clans', clansPanel, '/images/game/shop/clans')

  shopButton = modules.client_topmenu.addRightGameButton('shopButton', tr('Emerald Shop'), '/images/topbuttons/emerald_shop', toggle)
  shopButton:setWidth(36)
end

function terminate()
  disconnect(g_game, { onGameEnd = onGameEnd })
  ProtocolGame.unregisterExtendedOpcode(103)

  shopWindow:destroy()
  shopButton:destroy()
end

function onGameEnd()
  if shopWindow:isVisible() then
    shopWindow:hide()
  end
end

function show()
  shopWindow:show()
  shopWindow:raise()
  shopWindow:focus()
  addEvent(function() g_effects.fadeIn(shopWindow, 250) end)
  playerEmeralds:setText(g_game.getLocalPlayer():getItemsCount(3032))
end

function hide()
  addEvent(function() g_effects.fadeOut(shopWindow, 250) end)
  scheduleEvent(function() shopWindow:hide() end, 250)
end

function toggle()
  if shopWindow:isVisible() then
    hide()
  else
    show()
  end
end

function clanWindow(clan)
  local clanWindow = g_ui.createWidget('ClanWindow', rootWidget)
  local prize = clanWindow:getChildById('prize')
  clanWindow:setText(clan)
  clanWindow:getChildById('okButton').onClick = function() modules.game_textmessage.displayBroadcastMessage(clan .. ': ' .. tonumber(prize:getText())) clanWindow:destroy() end
  clanWindow.onEnter = function() modules.game_textmessage.displayBroadcastMessage(clan .. ': ' .. tonumber(prize:getText())) clanWindow:destroy() end
end

function onClickInItem(cost, self)
  if g_game.getLocalPlayer():getItemsCount(3032) >= cost then
    g_game.getProtocolGame():sendExtendedOpcode(103, string.explode(self:getStyleName(), "B")[1] .. '|' .. self:getParent():getChildIndex(self))
  else
    displayInfoBox(tr('Emerald Shop'), tr('Voce nao possui PokeCoin suficiente.'))
  end
end

function onBuyFailed(protocol, opcode, buffer)
  if toboolean(buffer) then
    displayInfoBox(tr('Emerald Shop'), tr('Vompra realizada com sucesso.'))
    playerEmeralds:setText(g_game.getLocalPlayer():getItemsCount(3032))
  else
    displayInfoBox('Emerald Shop', buffer)
  end
end
