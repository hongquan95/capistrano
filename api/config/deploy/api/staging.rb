
server "stg.wiki.taroapp.net", user: "minhtd", roles: %w{web}

role :web, %w{minhtd@stg.wiki.taroapp.net}

set :branch, 'staging'

set :application, 'cap_api_1'

set :stage, 'staging'

set :deploy_to, '/home/minhtd/top/cap_api_1'

