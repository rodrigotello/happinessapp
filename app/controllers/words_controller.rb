class WordsController < ApplicationController
	def new
		if !user_signed_in?
			redirect_to root_path
		end
		@word = Word.new
		@colors = Color.all
	end

	def create
		@word = current_user.words.build(params[:word])
		if @word.save
			redirect_to root_path
		else
			redirect_to new_word_path
		end
	end

end
