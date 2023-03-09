require 'pg'

  class Connexion
    def enterBdd()
      c = PG::Connection.new(
        host: "localhost",
        port: 5432,
        dbname: "prestataire2",
        user: "fabien",
        password: "fabien"
      )
      return c
    end
  end


