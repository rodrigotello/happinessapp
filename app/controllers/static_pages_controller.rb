class StaticPagesController < ApplicationController
  def home
  	@words = Word.all
  end

  def about
  end

  def help
  end

  def contact
  end
end
