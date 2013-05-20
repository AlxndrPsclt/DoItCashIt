class CreateDefis < ActiveRecord::Migration
  def change
    create_table :defis do |t|
      t.string :titre
      t.string :description
      t.datetime :dateLimite
      t.datetime :dateLancement
      t.integer :defiDestineAUtilisateurUnique
      t.string :lienVersLaVideo
      t.string :modalites
      t.integer :miseDeDepart

      t.timestamps
    end
  end
end
