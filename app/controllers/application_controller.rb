class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Welcome to Michaela's Property Management System!".to_json
  end

  get "/properties" do
    Property.all.to_json
  end

  get "/types" do
    Type.all.to_json
  end

  get "/records" do
    Record.all.to_json
  end

end
