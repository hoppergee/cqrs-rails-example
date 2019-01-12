class CreateUiDeveloperListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_developer_list_read_models do |t|
      t.string 'fullname'
      t.string 'email'

      t.index :email
    end
  end
end
