class ContestantOutingsController < ApplicationController
  def create
    contestant = Contestant.find(params[:contestant_id])
    outing = Outing.find_by(id: params[:id])
    ContestantOuting.create(contestant_id: contestant.id, outing_id: outing.id)
    redirect_to contestant_path(contestant)
  end
end
