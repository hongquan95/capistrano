
server "pro.wiki.taroapp.net", user: "minhtd", roles: %w{web}

role :web, %w{minhtd@pro.wiki.taroapp.net}

set :branch, 'master'

set :application, 'cap_api_1'

set :stage, 'production'

set :deploy_to, '/home/minhtd/top/cap_api_1'

