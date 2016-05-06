module GamesHelper

  def letters
    ("a".."j").to_a
  end

  def numbers
    (1..10).to_a
  end

  def set_cube_class(location)
    puts "location: #{location}"
    if shot = @opponent.shots.find_by_location(location)
      if shot.hit?
        "alert callout"
      elsif @user.ships_locations.include?(location)
        "secondary callout"
      else
        "primary callout"
      end
    elsif @user.ships_locations.include?(location)
      "secondary callout"
    else
      "primary callout"
    end
  end

  def set_shot_button_class(location)
    if shot = @user.shots.find_by_location(location)
      if shot.hit?
        "alert callout"
      else
        "water callout"
      end
    else
      "primary callout"
    end
  end
end
