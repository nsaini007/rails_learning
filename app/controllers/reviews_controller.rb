class ReviewsController < ApplicationController
    # http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

    def create
        @movie = Movie.find(params[:movie_id])
        @review = @movie.reviews.new(review_params)
        if @review.save
            redirect_to movie_path(@review)
        else
            render :new, status: :unprocessable_entity
        end       
    end

    def destroy
        @movie = Movie.find(params[:movie_id])
        @review = @movie.reviews.find(params[:id])
        @review.destroy
        redirect_to movie_path(@movie), status: :see_other
    end

    private
        def review_params
            params.require(:review).permit(:reviewer, :body, :status)
        end
end
