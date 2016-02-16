class CoachController
  def see
    found_coach=FindCoachView.new.render
    FoundCoachView.new.render(found_coach)
  end
end