class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    
    RATINGS = {
        'one_star': '1_star',
        'two_star': '2_star',
        'three_star': '3_star',
        'four_star': '4_star',
        'five_star': '5_star'
    }
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end
end
