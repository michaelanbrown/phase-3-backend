class Property < ActiveRecord::Base
    belongs_to :type
    has_many :records
end