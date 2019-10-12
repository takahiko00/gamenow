class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name,  null: false
      t.string :text,  null: false
      t.string :servername,  null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
