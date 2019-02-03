class TripPlan < ApplicationRecord
    has_many :days
    validates :title, :summary, presence: {
        message: "can't be blank."
    }
end
