puts "🌱 Seeding properties..."

Type.create(property_type: "Single family")
Type.create(property_type: "Condo/Townhouse")
Type.create(property_type: "Multifamily")
Type.create(property_type: "Apartment Building")
Type.create(property_type: "Commercial/Business")

Property.create(street_address: "2504 Las Palomas Loop", city: "Lincoln", state: "CA", purchase_price: 390000, square_feet: 1751, garage_spaces: 2, link: "https://ap.rdcpix.com/58ff9135ccddb947ef53cfe335b0a095l-m1435166007od-w1024_h768_x2.webp", type: Type.find_by(property_type: "Condo/Townhouse"), flip_status: "None")
Property.create(street_address: "1211 Zinfandel Drive", city: "Roseville", state: "CA", purchase_price: 489900, square_feet: 2189, garage_spaces: 2, link: "https://ap.rdcpix.com/5d142587d1bf5c51f848cb416a9a1c8fl-m704739413od-w1024_h768_x2.webp", type: Type.find_by(property_type: "Single family"), flip_status: "Complete")
Property.create(street_address: "118 Mercy Circle", city: "Hardeeville", state: "SC", purchase_price: nil, square_feet: 35800, garage_spaces: 0, link: "https://images1.loopnet.com/i2/BHXOcS3DUALRIewNzncmeKG05O4IezjBrdRtsky-QgU/112/118-Mercy-Cir-Hardeeville-SC-IMG_9827-HDR-1-HighDefinition.jpg", type: Type.find_by(property_type: "Apartment Building"), flip_status: nil)
Property.create(street_address: "35 Heritage Rd", city: "Signal Mountain", state: "TN", purchase_price: nil, square_feet: 3530, garage_spaces: 0, link: "https://ap.rdcpix.com/0f988f77db06e00dece274bd1fc6ba90l-m710829318od-w480_h360_x2.webp", type: Type.find_by(property_type: "Multifamily"), flip_status: nil)
Property.create(street_address: "4396 Amnicola Hwy", city: "Chattanooga", state: "TN", purchase_price: nil, square_feet: 5464, garage_spaces: nil, link: "https://images1.loopnet.com/i2/ZaKOydxPdgJv73bOCOvIDb1J-1Ltb_0H_UkvAusKjvc/112/4396-Amnicola-Chattanooga-TN-Cover-1-HighDefinition.jpg", type: Type.find_by(property_type: "Commercial/Business"), flip_status: nil)

Record.create(mortgage_payment: 1735, hoa_payment: 179, property_management_payment: 100, gross_income: 1900, occupancy: true, property: Property.find_by(street_address: "2504 Las Palomas Loop"))
Record.create(mortgage_payment: 1747, hoa_payment: 185, property_management_payment: 100, gross_income: 2200, occupancy: true, property: Property.find_by(street_address: "2504 Las Palomas Loop"))
Record.create(mortgage_payment: 2500, hoa_payment: nil, property_management_payment: 100, gross_income: 1750, occupancy: true, property: Property.find_by(street_address: "1211 Zinfandel Drive"))
Record.create(mortgage_payment: 2700, hoa_payment: nil, property_management_payment: 100, gross_income: 2750, occupancy: true, property: Property.find_by(street_address: "1211 Zinfandel Drive"))

puts "✅ Done seeding!"