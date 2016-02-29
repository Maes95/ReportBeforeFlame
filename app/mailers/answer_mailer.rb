class AnswerMailer < ApplicationMailer

  def answer_email(answer)
    @answer = answer
    @sender = Stakeholder.find(@answer.stakeholder_id)
    @report = Report.find(@answer.report_id)
    @user = Stakeholder.find(@report.stakeholder_id)

    head = @sender.name+' answer at your report!'
    mail(to: @user.email, subject: head)
  end
end
