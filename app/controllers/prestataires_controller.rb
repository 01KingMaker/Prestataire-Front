class PrestatairesController < ApplicationController
  def getFirst
    @prestataires = Prestataire.find(3)
  end
end
