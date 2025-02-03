fx_version 'adamant'

game 'gta5'
author 'KJ Scripts'
description 'Airdrop script'
lua54 'yes'

ui_page "html/ui.html"

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',

}

client_scripts {
	"client/main.lua",
	"config.lua"
}

server_scripts {
    "server/*.lua",
    "config.lua"
}

files {
	"html/ui.html",
	"html/airdrop.mp3"
}

dependency{
	'ox_inventory'
}