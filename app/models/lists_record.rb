class ListsRecord < ActiveRecord::Base
  belongs_to :list
  belongs_to :record
end
