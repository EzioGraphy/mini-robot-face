sad = {}
function sad._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawTriangle(lx,ly, lx+lw,ly, lx,ly+lh/2)
    disp:setDrawColor(1)
end
function sad._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx-1,ry, rx+rw,ry, rx+rw,ry+rh/2)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	dofile('face-glee.lua')
	--sad up
	glee._up()

	--sad down
	dofile('face-glee.lua')
	glee._down()


	--custom expression
	--sad up
	dofile('face-sad.lua')
	local lw,lh,rw,rh = 32,24,32,24
	local x,y = SCREEN_WIDTH/2-lw,4
	sad._draw(x,y,lw,lh,rw,rh)

	--sad down
	dofile('face-sad.lua')
	local lw,lh,rw,rh = 32,16,32,16
	local x,y = SCREEN_WIDTH/2-lw,36
	sad._draw(x,y,lw,lh,rw,rh)
]]--
function sad._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,4, 8)
    sad._left(lx,ly,lw,lh,lr)
    sad._right(rx,ry,rw,rh,rr)
end

function sad._up()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,24,32,24
    local x,y = SCREEN_WIDTH/2-lw,4
    sad._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

function sad._down()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,16,32,16
    local x,y = SCREEN_WIDTH/2-lw,36
    sad._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return sad