class CreateUiProjectDetailsReadModels < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_project_details_read_models, id: false do |t|
      t.uuid   :uuid, primary_key: true, null: false
      t.string :name
      t.integer :estimation_in_hours
      t.jsonb :developers, default: []
      t.datetime :deadline
    end
  end
end
