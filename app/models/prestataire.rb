class Prestataire < ActiveRecord::Base
  self.table_name = 'prestataire'
  def initialize(idPrestataire, nom, prix, vitesse, employes, anciennete)
    @idPrestataire = idPrestataire
    @nom = nom
    @prix = prix
    @vitesse = vitesse
    @employes = employees
    @anciennete = anciennete
  end
  #attr_accessor :idPrestataire, :nom, :vitesse, :prix, :employes, :anciennete, :score
end
