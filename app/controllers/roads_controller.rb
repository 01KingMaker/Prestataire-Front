class RoadsController < ApplicationController
  def index
    @roads = Road.all
  end
  def changerFormule
    id = params[:id]
    @roads = Road.find(id)
  end
  def changerFormuleExecute
    id = params[:idroute]
    formule = params[:nformule]
    Road.where(idroute: id).update_all(formule: formule)
    #$changerFormule(id: id)
    redirect_to root_path
  end
end
