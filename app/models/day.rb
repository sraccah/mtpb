class Day < ApplicationRecord
    validates :title, :description, presence: {
        message: "can't be blank."
    }
end
