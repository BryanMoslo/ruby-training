require 'spec_helper'

describe Snake do
  it "returns the snake size" do
    snake = Snake.init_snake(100)
    snake.must_equal(10)
  end

  it "creates the run" do
    room = Snake.create_room(100)
    room.size.must_equal(100)
  end

  it "creates the run with the snake" do
    middle = 50

    room = Snake.create_room(100)
    room[middle][9].must_equal(3)
  end

  it "moves the snake if neither move is passed" do
    middle = 25
    room = Snake.create_room(50)
    move = Snake.move()
    room[middle][5].must_equal(3)
  end

  it "moves to up the snake if 'up' move is passed" do
    middle = 25
    room = Snake.create_room(50)
    move = Snake.move("up")

    room[middle - 1][4].must_equal(3)
  end

  it "moves to up the snake if 'down' move is passed" do
    middle = 25
    room = Snake.create_room(50)
    move = Snake.move("down")

    room[middle + 1][4].must_equal(3)
  end

  it "moves to up the snake if 'left' move is passed" do
    middle = 25
    room = Snake.create_room(50)
    move = Snake.move("left")

    room[middle][0].must_equal(3)
  end

  it "moves to up the snake if 'right' move is passed" do
    middle = 25
    room = Snake.create_room(50)
    move = Snake.move("right")

    room[middle][5].must_equal(3)
  end
end
