focused = {}
function focused._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:drawBox(lx,ly+(lh-lr),lw,lr)
end
function focused._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:drawBox(rx,ry+(rh-rr),rw,rr)
end
--[[
	--default expression
	--focused
	dofile('face-focused.lua')
	focused._default()

	--custom expression
	--focused
	dofile('face-focused.lua')
	local lw,lh,rw,rh = 36,16,36,16
	local x,y = SCREEN_WIDTH/2-lw,20
	focused._draw(x,y,lw,lh,rw,rh)
]]--
function focused._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,2,rw,rh,2, 4)
    focused._left(lx,ly,lw,lh,lr)
    focused._right(rx,ry,rw,rh,rr)
end

function focused._default(x,y,lw,lh,rw,rh)
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 36,16,36,16
    local x,y = SCREEN_WIDTH/2-lw,20
    focused._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return focused