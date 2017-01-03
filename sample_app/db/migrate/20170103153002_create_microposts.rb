class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :microposts do |t|
      t.text :context
      t.references :user, foreign_key: true

      t.timestamps
    end
    # 特定のuserのmicropostをcreated_atでソートして取り出すため
    add_index :microposts, [:user_id, :created_at]
  end
end
