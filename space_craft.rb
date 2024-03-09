class Spacecraft
  def initialize
    @x = 0
    @y = 0
    @z = 0
    @direction = 'N'
  end

  def move(command)
    case command
    when 'f'
      move_forward
    end
  end

  def coordinates
    return @x, @y, @z
  end

  private

  def move_forward
    case @direction
    when 'N'
      @y += 1
    when 'S'
      @y -= 1
    when 'E'
      @x += 1
    when 'W'
      @x -= 1
    when 'U'
      @z += 1
    when 'D'
      @z -= 1
    end
  end
end