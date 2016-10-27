class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
	  t.string :content
      t.references :user, dependent: :destroy
      t.references :recipe, dependent: :destroy, foreign_key: true

      t.timestamps
    end
  end
end
