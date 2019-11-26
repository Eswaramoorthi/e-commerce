class AddValidityToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :validity, :string
  end
end
