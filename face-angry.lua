angry = {}
function angry._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawTriangle(lx,ly, lx+lw,ly, lx+lw,ly+lh/2)
    disp:setDrawColor(1)
end
function angry._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx,ry, rx+rw,ry, rx,ry+rh/2)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	--angry
	dofile('face-angry.lua')
	angry._default()

	--custom expression
	--angry
	dofile('face-angry.lua')
	local lw,lh,lr,rw,rh,rr = 36,20,8,36,20,8
	local x,y = SCREEN_WIDTH/2-lw,32
	angry._draw(x,y,lw,lh,lr,rw,rh,rr)
]]--
function angry._draw(x,y,lw,lh,lr,rw,rh,rr)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, 4)
    angry._left(lx,ly,lw,lh,lr)
    angry._right(rx,ry,rw,rh,rr)
end

function angry._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 36,20,8,36,20,8
    local x,y = SCREEN_WIDTH/2-lw,32
    angry._draw(x,y,lw,lh,lr,rw,rh,rr)
    
    disp:sendBuffer()
end

return angry
