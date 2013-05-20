# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130520120830) do

  create_table "defis", :force => true do |t|
    t.string   "titre"
    t.string   "description"
    t.datetime "dateLimite"
    t.datetime "dateLancement"
    t.integer  "defiDestineAUtilisateurUnique"
    t.string   "lienVersLaVideo"
    t.string   "modalites"
    t.integer  "miseDeDepart"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "idComment"
    t.integer  "idAuteur"
    t.integer  "idDefi"
    t.datetime "date"
    t.datetime "heure",     :null => false
    t.string   "contenu",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "jetons"
    t.integer  "jetonsTotalDepuisInscription"
    t.string   "password_digest"
    t.datetime "dateDerniereConnection"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
