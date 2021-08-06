
server "dev.wiki.taroapp.net", user: "minhtd", roles: %w{web}

role :web, %w{minhtd@dev.wiki.taroapp.net}

set :branch, 'develop'

set :application, 'cap_api_2'

set :stage, 'dev'

set :deploy_to, '/home/minhtd/top/cap_api_2'

