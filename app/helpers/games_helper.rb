module GamesHelper

  def letters
    ("a".."j").to_a
  end

  def numbers
    (1..10).to_a
  end

  def set_shot_button_class(location)
    if location = @user.shots.find_by_location(location)
      if location.hit?
        "alert callout"
      else
        "callout"
      end
    else
      "primary callout"
    end
  end
end
