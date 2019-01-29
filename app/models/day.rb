class Day < ApplicationRecord
    validates :title, :summary, presence: {
        message: "can't be blank."
    }
end
