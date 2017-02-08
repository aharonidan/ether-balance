require 'sequel'
Sequel.connect('sqlite://data.sqlite')
Sequel::Model.plugin :json_serializer

Dir['./models/*.rb'].each {|file| require file }