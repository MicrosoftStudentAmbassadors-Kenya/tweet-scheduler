class TweetsController < ApplicationController
    before_action :require_user_logged_in!
    before_action :set_tweet, only: [:edit, :update, :destroy]

    def create
        @tweet = Current.user.tweets.new(tweet_params)

        if @tweet.save
            redirect_to tweets_path, notice: "Tweet Scheduled Successfully!"
        else
            render :new
        end
    end

    def destroy
        @tweet.destroy
        redirect_to tweets_path, notice: "Successfully Deleted Tweet From Schedule!"
    end

    def edit

    end

    def index
        @tweets = Current.user.tweets
    end

    def new 
        @tweet = Tweet.new
    end

    def update
        if @tweet.update(tweet_params)
            redirect_to tweets_path, notice: "Tweet Successfully Updated!"
        else
            render :edit, alert: "An Error Occured Try Again!"
        end
    end

    private

    def tweet_params
        params.require(:tweet).permit(:twitter_account_id, :body, :publish_at)
    end

    def set_tweet
        @tweet = Current.user.tweets.find(params[:id])
    end
end
