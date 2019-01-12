class CreateUiProjectAproximateEndReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_project_aproximate_end_read_models do |t|
      t.integer :estimation
      t.jsonb :working_hours, default: {}
      t.datetime :approximate_end
    end
  end
end
