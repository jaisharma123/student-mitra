require 'test_helper'

class ArticleNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_note = article_notes(:one)
  end

  test "should get index" do
    get article_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_article_note_url
    assert_response :success
  end

  test "should create article_note" do
    assert_difference('ArticleNote.count') do
      post article_notes_url, params: { article_note: { answer: @article_note.answer, question: @article_note.question } }
    end

    assert_redirected_to article_note_url(ArticleNote.last)
  end

  test "should show article_note" do
    get article_note_url(@article_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_note_url(@article_note)
    assert_response :success
  end

  test "should update article_note" do
    patch article_note_url(@article_note), params: { article_note: { answer: @article_note.answer, question: @article_note.question } }
    assert_redirected_to article_note_url(@article_note)
  end

  test "should destroy article_note" do
    assert_difference('ArticleNote.count', -1) do
      delete article_note_url(@article_note)
    end

    assert_redirected_to article_notes_url
  end
end
