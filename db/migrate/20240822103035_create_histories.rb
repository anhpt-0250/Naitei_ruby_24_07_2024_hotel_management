class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.integer :status
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
