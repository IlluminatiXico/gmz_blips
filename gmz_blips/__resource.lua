resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
	"@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua",
	"GMZ-Blips-Server.net.dll",
	"config.lua"
}

files {
	"Newtonsoft.Json.dll"
}

clr_disable_task_scheduler 'not'