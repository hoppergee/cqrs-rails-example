class CreateUiNotificationListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_notification_list_read_models, id: false do |t|
      t.uuid   :uuid, primary_key: true, null: false
      t.text :message
    end
  end
end
