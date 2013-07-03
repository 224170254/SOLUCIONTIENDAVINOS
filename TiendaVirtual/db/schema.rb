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

ActiveRecord::Schema.define(:version => 20130703043804) do

  create_table "bodegas", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "correo"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "rut"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categoria", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "Rut"
    t.string   "NombreApellido"
    t.string   "RazonSocial"
    t.string   "Direccion"
    t.string   "Telefono"
    t.string   "Movil"
    t.date     "FechaNacimiento"
    t.string   "email"
    t.string   "Contrasena"
    t.integer  "estado"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "formatoventa", :force => true do |t|
    t.string   "descripcion"
    t.integer  "unidades"
    t.integer  "costoadicional"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mixproductos", :force => true do |t|
    t.integer  "idmaestro"
    t.integer  "stock"
    t.integer  "precio"
    t.integer  "idformato"
    t.integer  "idformatoventa"
    t.integer  "idbodega"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "productos", :force => true do |t|
    t.integer  "TipoProducto"
    t.string   "Descripcion"
    t.integer  "capacidad"
    t.text     "comentario"
    t.integer  "idCategoria"
    t.string   "Origen"
    t.string   "Gastronomia"
    t.string   "Cata"
    t.integer  "Temperatura"
    t.integer  "anada"
    t.string   "crianza"
    t.string   "uva"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
