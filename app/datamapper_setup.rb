require 'bcrypt'
require 'sinatra/base'
require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/peep'
require_relative 'models/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ ENV["RACK_ENV"] }")

if ENV['RACK_ENV'] = 'test'
  DataMapper.auto_migrate!
end

DataMapper.finalize
