class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Welcome to Michaela's Property Management System! Use the '/properties' end point to get to the properties list, the '/types' endpoint to get to the types list, and the '/records' endpoint to get to the records list".to_json
  end

  get "/properties" do
    Property.all.to_json(include: :type)
  end

  get "/properties/:id" do
    property = Property.find(params[:id])
    property.to_json(include: [:records, :type])
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

  patch "/properties/:id" do
    change_property = Property.find(params[:id])
    change_property.update(
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
    change_property.to_json
  end

  delete "/properties/:id" do
    goodbye_property = Property.find(params[:id])
    goodbye_property.destroy
    goodbye_property.to_json
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

  post "/records" do
    new_record = Record.create(
      mortgage_payment: params[:mortgage_payment],
      hoa_payment: params[:hoa_payment],
      property_management_payment: params[:property_management_payment],
      gross_income: params[:gross_income],
      property: Property.find_by(street_address: params[:property])
    )
  end

  delete "/records/:id" do
    goodbye_record = Record.find(params[:id])
    goodbye_record.destroy
    goodbye_record.to_json
  end

end