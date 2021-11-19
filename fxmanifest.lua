fx_version 'cerulean'
game 'gta5'

author 'dsc.gg/rzshop'

ui_page 'ui/index.html'

client_scripts {
    'Client/CLmain.lua'
} 

server_scripts {
    'Server/vChecker.lua'
}

files {
    'ui/index.html',
    'ui/js/script.js',
    'ui/js/jquery.js',
    'ui/css/style.css',
    'ui/fonts/*.ttf',
    'ui/fonts/*.otf'
}

exports {
    'initProgress'
}