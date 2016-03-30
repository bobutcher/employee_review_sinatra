require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sinatra'
require './company'
require './migrations'


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'real.sqlite3'
)

# CompanyDataMigration.migrate(:up)


get "/companies" do
  Company.all.to_json
end

get("/") do
  "I am Groot"
end

get "/i/am/bob" do
  return (3 * 3 * 92.123).to_s
end
