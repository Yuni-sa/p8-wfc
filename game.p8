pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
function _init()
 player_init()
 map_init()
 matrix=create_matrix(10,10,66)
end

function _update()
 move()
end

function _draw()
 cls(3)
 -- draw_matrix(matrix)
 spr(64,1,1,2,2)
 draw_player()
 mget(1,1)
end
-->8
-- player --
function player_init()
 player={x=5,y=5}
end

-- player movement --
function move()
 if btn(➡️) then player.x+=1 end
 if btn(⬅️) then player.x-=1 end
 if btn(⬆️) then player.y-=1 end
 if btn(⬇️) then player.y+=1 end
end


-- player draw --
function draw_player()
 spr(0,player.x,player.y)
end
-->8
-- tiles --
function map_init()
   -- + shape
 p={
   pos=64,size=2,
   flipx=false,flipy=false} 
   -- t shape
 t={ 
   pos=66,size=2,
   flipx=false,flipy=false} 
   -- l shape
 l={ 
   pos=96,size=2,
   flipx=false,flipy=false} 
   -- i shape
 i={ 
   pos=98,size=2,
   flipx=false,flipy=false} 
  -- m shape
 m={ 
   pos=98,size=2,
   flipx=true,flipy=false} 
end

function create_matrix(rows, cols, default_value)
  local matrix={}
  for i=0, rows-1 do
    matrix[i]={}
    for j=0, cols-1 do
      matrix[i][j]=default_value
    end
  end
  return matrix
end

function draw_matrix(m)
  for i = 0, #m-1 do
      for j = 0, #m[i]-1 do
          spr(m[i][j], j * 16, i * 16, 2, 2) -- Draw 2x2 sprite at 16x16 grid position
      end
  end
end
-->8
-- boss --

-- draw boss --
function draw_boss()
 spr(14,100,100,2,2)
end
-->8
-- wave function collapse --
function wfc()
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbb000000000080000800
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0bb00000000880000880
0001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000bbbb000000000880000880
00011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000333000000008888888888
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b333b00100108880880888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b0b000110108888888888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011108888008888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000880880880
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100088888800
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000880000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100008888000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000118888888000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000888000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000880000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008888000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000080
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000080
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008888880
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000031300088088088
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100088888888
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100088000088
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000008888880
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777ddddddddddddddddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777ddddddddddddddddddddd000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777ddddddddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
ddddd777777ddddddddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
ddddd777777ddddddddddddddddddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
7777777777777777777777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
ddddd777777dddddddddd777777ddddd00000000000000000000000000000000000000000000000000000000000000000000000000000000ddddd777777ddddd
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd777777dddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd77777777777ddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddddddddddddddddddd777777ddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 46424344

