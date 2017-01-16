class SneakersController < ApplicationController

  def index
    @sneakers = Sneaker.all
    render :json => @sneakers
  end

 def create
  @sneakers = Sneaker.new(params)
  @sneaker.save
  redirect to( "sneakers")
  render :json => @sneakers
end

def show
  @sneakers = Sneaker.find(params['id'])
  render :json => @sneakers
end

def delete
  @sneakers = Sneaker.new(params)
  @sneaker.destroy()
  redirect to("/sneakers")
  render :json => @sneakers
end







end