class Tweet < ApplicationRecord
    has_one :users

    validates :tweet, presence: true, length: { maximum: 100 }
end
