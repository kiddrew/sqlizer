class QueryRun < ActiveRecord::Base
  store :data, accessors: [], coder: JSON
end
