class CreateUserSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :user_searches do |t|
      t.string :query
      t.string :ip
      t.timestamps
    end
  end
end
