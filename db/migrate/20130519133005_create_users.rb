class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :jetons
      t.integer :jetonsTotalDepuisInscription
      t.datetime :dateDerniereConnection

      t.timestamps
    end
  end
end
