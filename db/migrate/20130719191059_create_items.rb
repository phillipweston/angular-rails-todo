class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :text
      t.boolean :status, default: false
      t.references :list
      t.timestamps
    end
  end
end
