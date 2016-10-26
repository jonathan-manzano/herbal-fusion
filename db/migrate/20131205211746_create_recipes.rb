class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    t.text     :description
    t.text     :steps
    t.text     :title
    t.time     :time
    t.integer  :serving_size
    t.text     :allergies
    t.text     :ingredients

      t.timestamps
    end
  end
end
