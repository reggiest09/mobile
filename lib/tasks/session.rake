require "rubygems"
require "httparty"

namespace :session do
  desc "TODO"
  task sign_in: :environment do
    response = HTTParty.post("http://localhost:3000/api/sign_in",
      body: { email: "raul@takeofflabs.com", password: "12345678" }.to_json,
      headers: { 'Content-Type' => 'application/json' } )
    puts response.body
  end

  task create_user: :environment do
    response = HTTParty.post("http://localhost:3000/api/users",
      body: { user: { email: "raul@takeofflabs.com", password: "12345678", password_confirmation: "12345678" } }.to_json,
      headers: { 'Content-Type' => 'application/json' } )
    puts response.body
  end

  task sign_out: :environment do
    response = HTTParty.delete("http://localhost:3000/api/sign_out",
      body: { auth_token: "vsw8Ek4SHeJMCZ4-rKKa" }.to_json,
      headers: { 'Content-Type' => 'application/json' } )
    puts response.body
  end

  task update: :environment do
    response = HTTParty.put("http://localhost:3000/api/users/453",
      body: {auth_token: "2GqBZCzsviR_MxZyQ97z",user: {email: "raul@takeofflabs.com", password: "12345678", password_confirmation: "12345678" }},
      header: { 'Content-Type' => 'application/json'} )
    puts response.body
  end

  task show: :environment do
    response = HTTParty.get("http://localhost:3000/api/users/453",
      body: {auth_token: "2GqBZCzsviR_MxZyQ97z"},
      header: { 'Content-Type' => 'application/json'} )
    puts response.body
  end

end
