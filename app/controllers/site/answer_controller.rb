class Site::AnswerController < SiteController
  def question
    @answer = Answer.find(params[:answer_id])
    set_user_statistics(@answer)
  end

  private

  def set_user_statistics(answer)
    if user_signed_in?
      user_statisc = UserStatistic.find_or_create_by(user: current_user)
      @answer.correct? ? user_statisc.right_questions += 1 : user_statisc.wrong_questions += 1
      user_statisc.save
    end
  end
end
