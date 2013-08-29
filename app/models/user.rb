class User < ActiveRecord::Base
  attr_accessible :email, :username
  store :data, accessors: [:password_hash, :name, :url, :company, :location, :gravatar_email], coder: JSON
end
