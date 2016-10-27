class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
	  t.string :content
    t.references :user, dependent: :destroy
    t.references :recipe, dependent: :destroy
      t.timestamps
    end
  end
end
