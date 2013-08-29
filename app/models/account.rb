class Account < ActiveRecord::Base
  store :data, accessors: [:name, :url, :location, :billing_email, :gravatar_email, :is_organization], coder: JSON
end
