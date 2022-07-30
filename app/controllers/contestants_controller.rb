class ContestantsController < ApplicationController
   def index
   end
   
   def show
      @contestant = Contestant.find(params[:id])
   end

   def create
      @contestant = Contestant.find(params[:id])
   end
end