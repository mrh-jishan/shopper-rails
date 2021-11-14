AddressType.create!(:address_type => 'HOME', :description => 'Home address')
AddressType.create!(:address_type => 'BUSINESS', :description => 'Business address')
AddressType.create!(:address_type => 'BILLING', :description => 'Billing address')
AddressType.create!(:address_type => 'SHIPPING', :description => 'Shipping address')


User.create!(email: 'example@mail.com' , password: '123123123' , password_confirmation: '123123123')