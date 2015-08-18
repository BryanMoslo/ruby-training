require 'matrix'

class Snake
  def self.init_snake(room_size)
    snake_size = (room_size *  0.10).to_i
  end

  def self.create_room(room_size)
    @room = Array.new(room_size){ Array.new(room_size, 0) }
    snake = init_snake(room_size)

    snake.times do |index|
      middle = (room_size / 2).to_i

      if index == 0
        @room[middle][index] = 1
      elsif index == ( snake - 1 )
        @room[middle][index] = 3
      else
        @room[middle][index] = 2
      end
    end

    @room
  end

  def self.move(move = nil)
    if move
      return up if move == "up"
      return down if move == "down"
      return left if move == "left"
      return right if move == "right"
    else
      head_row = @room.detect{|aa| aa.include?(3)}
      tail_row = @room.detect{|aa| aa.include?(1)}

      @room[@room.index(head_row)][head_row.index(3) + 1] = 3
      @room[@room.index(head_row)][head_row.index(3)] = 2

      @room[@room.index(tail_row)][tail_row.index(1) + 1] = 1
      @room[@room.index(tail_row)][tail_row.index(1)] = 0

      @room
    end
  end

  def self.up
    snake_head = find_snake
    head_row = @room[snake_head[0]]
    tail_row = @room[snake_head[0]]

    @room[@room.index(head_row) - 1][head_row.index(3)] = 3
    @room[@room.index(head_row)][head_row.index(3)] = 2

    @room[@room.index(tail_row)][tail_row.index(1) + 1] = 1
    @room[@room.index(tail_row)][tail_row.index(1)] = 0

    @room
  end

  def self.down
    snake_head = find_snake
    head_row = @room[snake_head[0]]
    tail_row = @room[snake_head[0]]

    @room[@room.index(head_row) + 1][head_row.index(3)] = 3
    @room[@room.index(head_row)][head_row.index(3)] = 2

    @room[@room.index(tail_row)][tail_row.index(1) + 1] = 1
    @room[@room.index(tail_row)][tail_row.index(1)] = 0

    @room
  end

  def self.left
    snake_head = find_snake
    head_row = @room[snake_head[0]]
    tail_row = @room[snake_head[0]]

    @room[@room.index(head_row)][head_row.index(3)] = 1
    @room[@room.index(tail_row)][tail_row.index(1)] = 3

    @room
  end

  def self.right
    head_row = @room.detect{|aa| aa.include?(3)}
    tail_row = @room.detect{|aa| aa.include?(1)}

    @room[@room.index(head_row)][head_row.index(3) + 1] = 3
    @room[@room.index(head_row)][head_row.index(3)] = 2

    @room[@room.index(tail_row)][tail_row.index(1) + 1] = 1
    @room[@room.index(tail_row)][tail_row.index(1)] = 0

    p @room
  end

  def self.find_snake
    head_row = @room.detect{|aa| aa.include?(3)}

    return [@room.index(head_row), head_row.index(3)]
  end
end
