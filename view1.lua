

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 1 )	
	
	local title = display.newText( "Página one", display.contentCenterX, 30, native.systemFont, 32 )
	title:setFillColor( 0 )	

	local newTextParams = { text = "A línguagem Lua é uma línguagem Multi-Paradigma (POO, Imperativa, funcional) esta línguagem está presente em diversos Jogos e aplicativos como (AngryBirds MySQL WorkBench) Lua é uma línguagem Brasileira e a 20 línguagem mais usada no mundo", 
							x = display.contentCenterX, 
							y = title.y + 215, 
							width = 310, 
							height = 310, 
							font = native.systemFont, 
							fontSize = 14, 
							align = "center" }
	local summary = display.newText( newTextParams )
	summary:setFillColor( 0 ) 


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

	elseif phase == "did" then

	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then

	elseif phase == "did" then

	end
end

function scene:destroy( event )
	local sceneGroup = self.view

end


scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )


return scene
