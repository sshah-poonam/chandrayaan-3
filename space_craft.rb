class Spacecraft

  attr_reader :direction

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
    when 'b'
      move_backward
    when 'l'
      turn_left
    when 'r'
      turn_right
    when 'u'
      turn_up
    when 'd'
      turn_down
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

  def move_backward
    case @direction
    when 'N'
      @y -= 1
    when 'S'
      @y += 1
    when 'E'
      @x -= 1
    when 'W'
      @x += 1
    when 'U'
      @z -= 1
    when 'D'
      @z += 1
    end
  end

  def turn_left
    @direction = case @direction
                 when 'N' then 'W'
                 when 'W' then 'S'
                 when 'S' then 'E'
                 when 'E' then 'N'
                 when 'U' then 'N'
                 when 'D' then 'S'
                 else @direction
                 end
  end

  def turn_right
    @direction = case @direction
                 when 'N' then 'E'
                 when 'E' then 'S'
                 when 'S' then 'W'
                 when 'W' then 'N'
                 when 'U' then 'S'
                 when 'D' then 'N'
                 else @direction
                 end
  end

  def turn_up
    @direction = 'U'
  end

  def turn_down
    @direction = 'D'
  end
end