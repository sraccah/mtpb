class Day < ApplicationRecord
    belongs_to :trip_plan, required: false
    validates :title, :description, presence: {
        message: "can't be blank."
    }
end
