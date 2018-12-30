frustrated = {}
function frustrated._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawBox(lx,ly,lw,lr)
    disp:setDrawColor(1)
end
function frustrated._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawBox(rx,ry,rw,rr)
    disp:setDrawColor(1)
end
--[[
	--default expression
	--frustrated
	dofile('face-frustrated.lua')
	frustrated._default()

	--custom expression
	--frustrated
	dofile('face-frustrated.lua')
	local lw,lh,rw,rh = 32,12,32,12
	local x,y = SCREEN_WIDTH/2-lw,36
	frustrated._draw(x,y,lw,lh,rw,rh)
]]--
function frustrated._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,4, 8)
    frustrated._left(lx,ly,lw,lh,lr)
    frustrated._right(rx,ry,rw,rh,rr)
end 

function frustrated._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,12,32,12
    local x,y = SCREEN_WIDTH/2-lw,36
    frustrated._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return frustrated
