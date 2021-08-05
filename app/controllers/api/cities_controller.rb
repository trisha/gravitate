class Api::CitiesController < ApplicationController

    def show
        @taggings_count = ActsAsTaggableOn::Tag.most_used.pluck :name, :taggings_count
        render json: @taggings_count
    end
end
