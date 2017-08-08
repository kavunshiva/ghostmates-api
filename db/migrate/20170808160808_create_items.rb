class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.binary :image
      t.float :price

      t.timestamps
    end
  end
end
