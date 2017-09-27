class CommentMailer < ApplicationMailer

  def comment_notification_email_articles(author, commenter)
    @author = author
    @commenter = commenter
    @url = 'https://student-mitra-nsds.herokuapp.com'
    mail(to: @author.email, subject: 'Comment Notification Email')
  end

  def comment_notification_email_techwords(author, commenter)
    @author = author
    @commenter = commenter
    @url = 'https://student-mitra-nsds.herokuapp.com'
    mail(to: @author.email, subject: 'Comment Notification Email')
  end
end



