
display.setStatusBar( display.DefaultStatusBar )


local widget = require "widget"
local composer = require "composer"



local function onFirstView( event )
	composer.gotoScene( "view1" )
end

local function onSecondView( event )
	composer.gotoScene( "view2" )
end
local function TerceiraView( event )
	composer.gotoScene("view3")
end
local function Historia(event)
	composer.gotoScene("view4")
end
local function entrada(event)
	composer.gotoScene("entrada")
end


local tabButtons = {
	{ label="Curiosidades", defaultFile="argentina.png", overFile="argentina.png", width = 32, height = 32, onPress=onFirstView, selected=true },
	{ label="Lua", defaultFile="logolua.png", overFile="logolua.png", width=32, height = 32, onPress=TerceiraView },
	{ label="Características", defaultFile="argentina.png", overFile="argentina.png", width = 32, height = 32, onPress=onSecondView },
}


local tabBar = widget.newTabBar{
	top = display.contentHeight - 50,	
	buttons = tabButtons
}

entrada()	
