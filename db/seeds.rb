AddressType.find_or_create_by!(:address_type => 'HOME', :description => 'Home address')
AddressType.find_or_create_by!(:address_type => 'BUSINESS', :description => 'Business address')
AddressType.find_or_create_by!(:address_type => 'BILLING', :description => 'Billing address')
AddressType.find_or_create_by!(:address_type => 'SHIPPING', :description => 'Shipping address')

