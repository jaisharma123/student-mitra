class Admins::ArticleNotesController < ApplicationController
   before_action :set_article_note, only: [:create, :destroy]

  def create
    @article_note = @article.article_notes.create(article_note_params)
    redirect_to admins_article_path(@article)
  end

  def destroy
    @article_note = ArticleNote.find(params[:id])
    @article_note.destroy
    redirect_to admins_article_path(@article)
  end

  private

    def set_article_note
      @article = Article.find(params[:article_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_note_params
      params.require(:article_note).permit(:question, :answer)
    end
end
