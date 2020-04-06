class PagesController < ApplicationController
   skip_before_filter :verify_authenticity_token  
  # Method to receive the post
  def create
    raise
  end

  # Method to show the information sent
  def invoice
  end

  def home
  end
end