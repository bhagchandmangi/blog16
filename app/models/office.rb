class Office < ApplicationRecord
    #attr_accessible :employee_id, location
    belongs_to :employee
end
