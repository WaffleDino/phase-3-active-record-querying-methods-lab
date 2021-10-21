class Show < ActiveRecord::Base

    def self.highest_rating 
        self.maximum(:rating)
        # show_rating_array = self.all.collect do |show|
        #     show.rating
        # end
        # show_rating_array.sort.last
    end

    def self.most_popular_show
        popular_show = self.order(:rating)
        popular_show.last
    end
   
    def self.least_popular_show
        popular_show = self.order(:rating)
        popular_show.first
    end

    def self.lowest_rating
        self.minimum(:rating)
    end 

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.select do |show|
            show.rating > 5
        end
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end

end
