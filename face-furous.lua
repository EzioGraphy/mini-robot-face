furous = {}
function furous._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawTriangle(lx,ly, lx+lw,ly, lx+lw,ly+lh/2)
    disp:setDrawColor(1)
end
function furous._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx,ry, rx+rw,ry, rx,ry+rh/2)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	--furous
	dofile('face-furous.lua')
	furous._default()

	--custom expression
	--furous
	dofile('face-furous.lua')
	local lw,lh,lr,rw,rh,rr = 36,30,4,36,30,4
	local x,y = 128/2-lw,20
	furous._draw(x,y,lw,lh,lr,rw,rh,rr)
]]--
function furous._draw(x,y,lw,lh,lr,rw,rh,rr)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, 4)
    furous._left(lx,ly,lw,lh,lr)
    furous._right(rx,ry,rw,rh,rr)
end

function furous._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 36,30,4,36,30,4
    local x,y = 128/2-lw,20
    furous._draw(x,y,lw,lh,lr,rw,rh,rr)
    
    disp:sendBuffer()
end

return furous
