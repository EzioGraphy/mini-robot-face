anroyed = {}
function anroyed._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawBox(lx,ly,lw,lr)
    disp:setDrawColor(1)
end
function anroyed._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[
	--default expression
	--anroyed
	dofile('face-anroyed.lua')
	anroyed._default(x,y,lw,lh,rw,rh)

	--custom expression
	--anroyed
	dofile('face-anroyed.lua')
	local lw,lh,rw,rh = 36,12,36,8
	local x,y = SCREEN_WIDTH/2-lw,28
	anroyed._draw(x,y,lw,lh,rw,rh)
]]--
function anroyed._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,1, 8)
    anroyed._left(lx,ly,lw,lh,lr)
    ry = ly+lr-1
    anroyed._right(rx,ry,rw,rh,rr)
end

function anroyed._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 36,12,36,8
    local x,y = SCREEN_WIDTH/2-lw,28
    anroyed._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return anroyed
