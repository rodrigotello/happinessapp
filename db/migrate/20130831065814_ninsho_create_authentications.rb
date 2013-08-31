class NinshoCreateAuthentications < ActiveRecord::Migration
  def change
    create_table(:authentications) do |t|
            ## Ninsho model fields
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :oauth_token

      
      t.timestamps
    end
    add_index :authentications, :user_id
  end
end
