class CreateUiProjectAproximateEndReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_project_aproximate_end_read_models, id: false do |t|
      t.uuid   :uuid, primary_key: true, null: false
      t.integer :estimation
      t.jsonb :working_hours, default: {}
      t.datetime :approximate_end
    end
  end
end
