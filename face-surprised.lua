surprised = {}
function surprised._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function surprised._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[ 
	--default expression
	--surprised
	dofile('face-surprised.lua')
	surprised._default()

	--custom expression
	--surprised
	dofile('face-surprised.lua')
	local lw,lh,rw,rh = 38,42,38,42
	local x,y = SCREEN_WIDTH/2-lw,8
	surprised._draw(x,y,lw,lh,rw,rh)
]]--
function surprised._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,14,rw,rh,14, 2)
    surprised._left(lx,ly,lw,lh,lr)
    surprised._right(rx,ry,rw,rh,rr) 
end

function surprised._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 38,42,38,42
    local x,y = SCREEN_WIDTH/2-lw,8
    surprised._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end
return surprised