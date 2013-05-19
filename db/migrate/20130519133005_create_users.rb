class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :jetons
      t.integer :jetonsTotalDepuisInscription
      t.string :password_digest
      t.datetime :dateDerniereConnection

      t.timestamps
    end
  end
end
