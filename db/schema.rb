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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151102013118) do

  create_table "aerolineas", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clases", force: true do |t|
    t.string   "t_clase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cliente_vuelos", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "vuelo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cliente_vuelos", ["cliente_id"], name: "index_cliente_vuelos_on_cliente_id"
  add_index "cliente_vuelos", ["vuelo_id"], name: "index_cliente_vuelos_on_vuelo_id"

  create_table "clientes", force: true do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinos", force: true do |t|
    t.string   "ciudad"
    t.string   "n_aeropuerto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itinerarios", force: true do |t|
    t.string   "codigo_it"
    t.integer  "destino_id"
    t.integer  "origen_id"
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itinerarios", ["destino_id"], name: "index_itinerarios_on_destino_id"
  add_index "itinerarios", ["origen_id"], name: "index_itinerarios_on_origen_id"

  create_table "origens", force: true do |t|
    t.string   "ciudad"
    t.string   "n_aeropuerto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pasajes", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "vuelo_id"
    t.integer  "clase_id"
    t.string   "asiento"
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pasajes", ["clase_id"], name: "index_pasajes_on_clase_id"
  add_index "pasajes", ["cliente_id"], name: "index_pasajes_on_cliente_id"
  add_index "pasajes", ["vuelo_id"], name: "index_pasajes_on_vuelo_id"

  create_table "usuarios", force: true do |t|
    t.integer  "cliente_id"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["cliente_id"], name: "index_usuarios_on_cliente_id"
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vuelos", force: true do |t|
    t.integer  "aerolinea_id"
    t.integer  "itinerario_id"
    t.integer  "capacidad"
    t.string   "modelo_avion"
    t.string   "num_vuelo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vuelos", ["aerolinea_id"], name: "index_vuelos_on_aerolinea_id"
  add_index "vuelos", ["itinerario_id"], name: "index_vuelos_on_itinerario_id"

end
