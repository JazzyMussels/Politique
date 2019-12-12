class GamesController < ApplicationController

    def options # the beginning four options DEBATE, RNMATE, RUN, GAGG
        @game = Game.last
        @gaff = ["I have a great relationship with the blacks.", "The beauty of me is that I'm very rich", "It's freezing and snowing in NY- we need global warming.", "I have never seen a thin person drinking Diet Coke.", "I'm not a schmuck. Even if the world is going to hell in a hand-basket, I won't lose a penny.", "I know nothing about the inter workings of Russia.","So please get your asses out tomorrow and vote."].sample
        @game.update(option_params)
        render :game        
    end

    def actions # one of the four moves
        @response = %w(It's\ super\ effective! It's\ Not\ very\ effective!).sample
        @game = Game.last
        @game.update(option_params)
        render :game       
    end

    private

    def option_params
        params.require(:options).permit(:option1, :option2, :option3, :option4, :moves, :turn)
    end
end
