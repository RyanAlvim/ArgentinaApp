

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	
	local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 1 )	
	

	local title = display.newText( "Início", display.contentCenterX, 30, native.systemFont, 32 )
	title:setFillColor( 0 )	

	local newTextParams = { text = "Aplicativo feito pelo Ryan.\n Trabalho irá ser apresentado pela Camila, João e Lucas (2 A)", 
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
