class Query < ActiveRecord::Base
  store :data, accessors: [:name, :query], coder: JSON
end
