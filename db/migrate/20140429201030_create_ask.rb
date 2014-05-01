class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
