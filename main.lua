local Map = require 'core/map'
local Util = require 'core/util'

function love.load()
  
  w0 = love.graphics.newImage('assets-1/dungeon/wall/catacombs_0.png')
  w1 = love.graphics.newImage('assets-1/dungeon/wall/catacombs_1.png')
  w2 = love.graphics.newImage('assets-1/dungeon/wall/catacombs_2.png')
  f1 = love.graphics.newImage('assets-1/dungeon/floor/cobble_blood_1.png')
  

  background = {
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1},
    {f1, f1, f1, f1, f1, f1, f1, f1, f1}}
  layer1 = {
    {w1, w1, w1, w1, w1, w1, w1, w1, w1},
    {w1, nil, nil, nil, nil, nil, nil, nil, w1},
    {w1, nil, w0, w0, nil, w0, w0,nil, w1},
    {w1, nil, w0, nil, nil, nil, w0, nil, w1},
    {w1, nil, w0, nil, nil, nil, w0, nil, w1},
    {nil, nil, w0, nil, w2, nil, w0, nil, w1},
    {nil, nil, w0, nil, w2, nil, w0, nil, w1},
    {w1, nil, w0, nil, nil, nil, w0, nil, w1},
    {w1, nil, w0, nil, nil, nil, w0, nil, w1},
    {w1, nil, w0, w0, nil, w0, w0, nil, w1},
    {w1, nil, nil, nil, nil, nil, nil, nil, w1},
    {w1, w1, w1, w1, w1, w1, w1, w1, w1}}
  
  x = 128
  y = 128
  w = 64
  h = 64
  hp = 100
  playerImg = love.graphics.newImage('assets-1/player/base/octopode_3.png')
end


function love.update(dt)
  
  
    if love.keyboard.isDown('up') then
      if layer1:cc(x, y, 64, 64) then
        y = y - 1
      end
    end
    if love.keyboard.isDown('down') then
      if layer1:cc(x, y, 64, 64) then
        y = y + 1
      end
    end
    if love.keyboard.isDown('right') then
      if layer1:cc(x, y, 64, 64) then
        x = x + 1
      end
    end
    if love.keyboard.isDown('left') then
      if layer1:cc(x, y, 64, 64) then
        x = x - 1
      end
    end
  
  
  

end


function love.draw()
  background:draw()
  love.graphics.draw(playerImg, x, y)
  layer1:draw()
 
end
