class WelcomeController < ApplicationController
    def say_hello
        @gossips = Gossip.all
        @user = User.all
    end
end
