class InitMigration < ActiveRecord::Migration[6.0]
  def change

    create_table :users do |t|
      t.string :nickname, null: false
      t.string :password, null: false
      t.timestamps
    end


    create_table :effects do |t|
      t.string :effect, null: false
      t.string :img
      t.timestamps
    end

    create_table :roles do |t|
      t.string :role, null: false
      t.timestamps
    end

    create_table :characters do |t|
      t.string :name, null: false
      t.integer :hp, null: false
      t.string :description
      t.timestamps
    end

    create_table :cards do |t|
      t.string :name, null: false
      t.string :description
      t.string :color
      t.references :effect
      t.integer :number, null: false
      t.string :suit, null: false
      t.integer :quantity
      t.string :range, null: false
      t.string :place, null: false
      t.timestamps
    end

    create_table :players do |t|
      t.references :role, null: false
      t.references :character, null: false
      t.string :card
      t.references :user, null: false
      t.integer :range
      t.integer :position, null: false
      t.integer :cur_hp, null: false
      t.boolean :is_active, null: false
      t.boolean :is_bang
      t.boolean :is_banged
      t.boolean :bomb
      t.timestamps
    end

    create_table :games do |t|
      t.integer :id_g
      t.references :player
      t.string :card
      t.string :status
      t.timestamps
    end
  end
end

