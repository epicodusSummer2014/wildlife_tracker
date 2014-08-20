class Sightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.integer :latitude
      t.integer :longitude
      t.belongs_to :species
    end
  end
end
