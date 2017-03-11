class CreateAlermInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :alerm_infos do |t|
      t.string :user_name
      t.string :kaisha_mail
      t.time :alerm_time
      t.text :iiwake

      t.timestamps
    end
  end
end
