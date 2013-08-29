class QueryToken < ActiveRecord::Base
  store :data, accessors: [], coder: JSON
end
