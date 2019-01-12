class CreateUiProjectListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_project_list_read_models, id: false do |t|
      t.uuid   :uuid, primary_key: true, null: false
      t.string :name
    end
  end
end
