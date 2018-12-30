awe = {}
function awe._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    -- 10 / 24 ~ 0.42
    disp:drawFilledEllipse(lx+lr, ly+lh/2, lw*0.42 , lh/2, u8g2.DRAW_ALL);
end
function awe._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    -- rx+rw-rr-1 -1 is drawFilledEllipse one extra pixel
    disp:drawFilledEllipse(rx+rw-rr-1, ry+rh/2, rw*0.42 , rh/2, u8g2.DRAW_ALL);
end
--[[
	--default expression
	--awe
	dofile('face-awe.lua')
	awe._default()

	--custom expression
	--awe
	dofile('face-awe.lua')
	local lw,lh,rw,rh = 36,45,36,45
	local x,y = SCREEN_WIDTH/2-lw,4
	awe._draw(x,y,lw,lh,rw,rh)
]]--
function awe._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,12,rw,rh,12, 6)
    awe._left(lx,ly,lw,lh,lr)
    awe._right(rx,ry,rw,rh,rr)
end

function awe._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 36,45,36,45
    local x,y = SCREEN_WIDTH/2-lw,4
    awe._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return awe
