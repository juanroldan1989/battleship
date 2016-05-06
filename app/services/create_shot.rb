class CreateShot

  attr_reader :location
  attr_reader :params
  attr_reader :user_id

  def initialize(params)
    @params   = params
    @location = params[:location]
    @user_id  = params[:user_id]
  end

  def call
    Shot.create({
      user_id:  user_id,
      location: location,
      hit:      hit?
    })
  end

  private

  def hit?
    @hit = false

    opponent.ships.each do |ship|
      if ship.location.include?(location)
        ship.shots_received += [location]

        ship.save

        @hit = true
      end
    end

    @hit
  end

  def opponent
    case user_id
    when "1"
      User.find 2
    when "2"
      User.find 1
    end
  end
end
