class CreateUiDeveloperListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_developer_list_read_models, id: false do |t|
      t.uuid   :uuid, primary_key: true, null: false
      t.string 'fullname'
      t.string 'email'

      t.index :email
    end
  end
end
