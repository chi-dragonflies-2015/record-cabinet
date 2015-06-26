class Record < ActiveRecord::Base
  has_many :lists_records
  has_many :lists, through: :lists_records
end
