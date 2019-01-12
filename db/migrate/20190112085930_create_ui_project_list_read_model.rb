class CreateUiProjectListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_project_list_read_models do |t|
      t.string :name
    end
  end
end
