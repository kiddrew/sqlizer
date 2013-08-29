class Database < ActiveRecord::Base
  attr_accessible :account_id
  store :data, accessors: [:db_type], coder: JSON
end
