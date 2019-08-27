class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.datetime :date
      t.string :book
      t.string :minutes

      t.timestamps
    end
  end
end
