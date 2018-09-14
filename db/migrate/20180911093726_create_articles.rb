class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string      :user_id
      t.text        :title
      t.text        :text
      t.text        :image
      t.timestamps
    end
  end
end
