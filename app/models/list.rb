class List < ActiveRecord::Base
  belongs_to :user
  has_many :lists_records
  has_many :records, through: :lists_records
end
