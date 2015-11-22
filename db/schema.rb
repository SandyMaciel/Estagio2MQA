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

ActiveRecord::Schema.define(version: 20151122154338) do

  create_table "doacao_captacaos", force: :cascade do |t|
    t.integer  "instuicao_id", limit: 4
    t.string   "titulo",       limit: 255
    t.string   "objetivo",     limit: 255
    t.text     "meta",         limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "doacao_financeiras", force: :cascade do |t|
    t.integer  "instuicao_id", limit: 4
    t.string   "nome",         limit: 255
    t.string   "banco",        limit: 255
    t.string   "titular",      limit: 255
    t.string   "agencia",      limit: 255
    t.string   "conta",        limit: 255
    t.string   "cnpj",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "doacao_ideia", force: :cascade do |t|
    t.integer  "instuicao_id", limit: 4
    t.text     "descricao",    limit: 65535
    t.string   "finalidade",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "doacao_materials", force: :cascade do |t|
    t.integer  "instuicao_id", limit: 4
    t.decimal  "quantidade",                 precision: 10
    t.text     "descricao",    limit: 65535
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "doacao_voluntarios", force: :cascade do |t|
    t.integer  "instuicao_id",    limit: 4
    t.string   "funcao",          limit: 255
    t.string   "descricao",       limit: 255
    t.boolean  "domingo"
    t.boolean  "segunda"
    t.boolean  "terca"
    t.boolean  "quarta"
    t.boolean  "quinta"
    t.boolean  "sexta"
    t.boolean  "sabado"
    t.time     "horario_inicial"
    t.time     "horario_final"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "instituicaos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "email",      limit: 255
    t.string   "senha",      limit: 255
    t.string   "cnpj",       limit: 255
    t.string   "endereco",   limit: 255
    t.string   "telefone",   limit: 255
    t.text     "descricao",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",         limit: 255
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
