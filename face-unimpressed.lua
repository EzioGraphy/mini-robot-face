unimpressed = {}
function unimpressed._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawBox(lx,ly,lw,lr)
    disp:setDrawColor(1)
end
function unimpressed._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawBox(rx,ry,rw,rr)
    disp:setDrawColor(1)
end
--[[
	--default expression
	--unimpressed
	dofile('face-unimpressed.lua')
	unimpressed._default()

	--custom expression
	--unimpressed
	dofile('face-unimpressed.lua')
	local lw,lh,rw,rh = 32,12,32,14
	local x,y = SCREEN_WIDTH/2-lw,36
	unimpressed._draw(x,y,lw,lh,rw,rh)
]]--
function unimpressed._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,4, 8)
    unimpressed._left(lx,ly,lw,lh,lr)
    unimpressed._right(rx,ry,rw,rh,rr)
end 

function unimpressed._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,12,32,14
    local x,y = SCREEN_WIDTH/2-lw,36
    unimpressed._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return unimpressed
