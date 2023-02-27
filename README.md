# Michaela's Property Management System

## Models

I have incldued three models:
1. Property
2. Record
3. Type

### Property

The Property model belongs_to :type and has_many :records.

### Record

The Record model belongs_to :property.

### Type

The Type model has_many :properties.

## Schemas

### Property

The Property schema contains all pertinent information about each property owned and/or each property that we are looking to purchase. The properties connect to their type via the two columns below:

```bash
t.integer "type_id"
```
```bash
t.index ["type_id"], name: "index_properties_on_type"
```

### Record

The Record schema contains all pertinent information about each owned property's finances (i.e. the mortgage payment, hoa payment, etc). The records connect to their property via the two columns below:

```bash
t.integer "property_id"
```
```bash
.index ["property_id"], name: "index_records_on_property"
```

### Type

The Type schema contains all different property types (i.e. Single family, Multifamily, Condo/Townhouse, etc).

## Description

My Property Management system contains all properties that my significant other and I own or are interested in purchasing. There are many functions within the controller that can be utilized to manage said properties:
1. Access all information in our Property table via a get request to "/properties"
2. Access all information for a specific property via a get request to "/properties/:id"
3. Access all information in our Record table via a get request to "/records"
4. Access all information for a specific record via a get request to "/records/:id"
5. Access all information in our Type table via a get request to "/type"
6. Add a property to the Property table via a post request to "/properties"
7. Edit a property in the Property table via a patch request to "/properties/:id"
8. Delete a property from the Property table via a delete request to "/properties/:id"
9. Add a record to the Record table via a post request to "/records"

## Examples

```python
# Get Request
  get "/properties" do
    Property.all.to_json
  end
```

```python
# Post Request
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
```

```python
# Patch Request
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
```

```python
# Delete Request
  delete "/properties/:id" do
    goodbye_property = Property.find(params[:id])
    goodbye_property.destroy
    goodbye_property.to_json
  end
```

## Fork and Clone

Feel free to fork and clone this to use as your own!
Be aware of the seeded data.

## Contributing

Suggestions are welcome.