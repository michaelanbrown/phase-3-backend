class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Welcome to Michaela's Property Management System! Use the '/properties' end point to get to the properties list, the '/types' endpoint to get to the types list, and the '/records' endpoint to get to the records list".to_json
  end

  get "/properties" do
    Property.all.to_json
  end

  get "/properties/:id" do
    property = Property.find(params[:id])
    property.to_json
  end

  post "/properties" do
    new_property = Property.create(
      street_address: params[:street_address],
      city: params[:city],
      state: params[:state],
      purchase_price: params[:purchase_price],
      square_feet: params[:square_feet],
      garage_spaces: params[:garage_spaces],
      link: params[:link],
      type: Type.find_by(property_type: params[:type]),
      flip_status: params[:flip_status]
    )
    new_property.to_json
  end

  get "/types" do
    Type.all.to_json
  end

  get "/records" do
    Record.all.to_json
  end

  get "/records/:id" do
    record = Record.find(params[:id])
    record.to_json
  end

end