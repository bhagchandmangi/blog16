class Employee < ApplicationRecord
    #attr_accessible :last_name
    has_one :office
end
