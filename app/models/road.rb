class Road < ApplicationRecord
  self.table_name = 'roads'
  # attr_accessor :idRoute, :nom, :formule

  # def initialize(idRoute, nom, formule)
  #   @idRoute = idRoute
  #   @nom = nom
  #   @formule = formule
  # end
  # def getAllRoads(connection)
  #   mine = true
  #   if(connection == nil)
  #     c = Connexion.new()
  #     connection = c.enterBdd()
  #     mine = false
  #   end
  #   sql = "Select idroute, nom, formule from roads"
  #   result = connection.exec(sql)
  #   routes = []
  #   result.each do |row|
  #     r = self.class.new(row['idroute'], row['nom'], row['formule'])
  #     routes.push(r)
  #   end
  #   if(mine == false)
  #     connection.close
  #   end
  #   return routes
  # end

  def fetchFormule(connection)
    #routes = self.getAllRoads(connection)
    routes = Road.all
    for r in routes
      if self.formule.include?(r.nom)
        # puts r.getNom()
        newf = self.formule.gsub(r.nom, r.formule)
        self.formule = newf
      end
    end
    return self.formule
  end

  def getTriedPrestator(connection)
    mine = true
    if(connection == nil)
      c = Connexion.new()
      connection = c.enterBdd()
      mine = false
    end
    formule = self.fetchFormule(connection)
   # formule = self.getFormule()
    sql = "Select idprestataire, nom, prix, vitesse, employes, anciennete ,("+formule+")/prix as score from v_prestataire order by ("+formule+")/prix desc"
    result = connection.exec(sql)
    prestataires = []
    result.each do |row|
      pr = row#Prestataire.new(row['idprestataire'], row['nom'], row['prix'], row['vitesse'], row['employes'], row['anciennete'])
      prestataires.push(pr)
    end
    if(mine == false)
      connection.close
    end
    return prestataires
  end

end
