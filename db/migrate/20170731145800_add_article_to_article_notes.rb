class AddArticleToArticleNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :article_notes, :article_id, :integer
  end
end
