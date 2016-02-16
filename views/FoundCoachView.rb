class FoundCoachView
  def render(coach)
    found_coach=Coach.all.find do |coach_info|
      coach_info.name==coach
    end
    puts "#{found_coach.name} is the coach for #{found_coach.team.name}."
  end
end