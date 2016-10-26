class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
    t.text    :description
    t.text     :steps
    t.string     :title
    t.integer     :time
    t.integer  :serving_size
    t.string     :allergies
    t.text     :ingredients

    t.timestamps
    end
  end
end
