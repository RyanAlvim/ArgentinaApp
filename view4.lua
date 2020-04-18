-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	-- Called when the scene's view does not exist.
	-- 
	-- INSERT code here to initialize the scene
	-- e.g. add display objects to 'sceneGroup', add touch listeners, etc.
	
	-- create a white background to fill screen
	local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 1 )	-- white
	
	-- create some text
	local title = display.newText( "LUA", display.contentCenterX, 30, native.systemFont, 32 )
	title:setFillColor( 0 )	-- black

	local newTextParams = { text = "A línguagem Lua é uma línguagem Multi-Paradigma (POO, Imperativa, funcional) esta línguagem está presente em diversos Jogos e aplicativos como (AngryBirds MySQL WorkBench) Lua é uma línguagem Brasileira e a 20 línguagem mais usada no mundo", 
							x = display.contentCenterX, 
							y = title.y + 215, 
							width = 310, 
							height = 310, 
							font = native.systemFont, 
							fontSize = 14, 
							align = "center" }
	local summary = display.newText( newTextParams )
	summary:setFillColor( 0 ) -- black


	img = display.newImageRect("logolua.png", 100, 100)
	img.x = display.contentCenterX
	img.y = display.contentCenterY + 20

	local desenholua = {
		desenhar = img
	}
	local hello = { text = "print('Ola Mundo')", 
							x = display.contentCenterX, 
							y = title.y + 450, 
							width = 310, 
							height = 310, 
							font = native.systemFont, 
							fontSize = 14, 
							align = "center" }

	local mostrar = display.newText(hello)
	mostrar:setFillColor(0)


	-- all objects must be added to group (e.g. self.view)
	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert( summary )
	sceneGroup:insert(desenholua.desenhar)
	sceneGroup:insert(mostrar)
end


function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
