class CreateUiNotificationListReadModel < ActiveRecord::Migration[5.2]
  def change
    create_table :ui_notification_list_read_models do |t|
      t.text :message
    end
  end
end
