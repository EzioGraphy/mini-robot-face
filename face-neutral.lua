neutral = {}
function neutral._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function neutral._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[ 
	--default expression
	--neutral
	dofile('face-neutral.lua')
	neutral._default()

	--custom expression
	--neutral
	dofile('face-neutral.lua')
	local lw,lh,lr,rw,rh,rr = 32,32,8,32,36,8
	local x,y = SCREEN_WIDTH/2-lw,12
	neutral._draw(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
]]--
function neutral._draw(x,y,lw,lh,lr,rw,rh,rr,eyes_spacing)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, eyes_spacing)
    neutral._left(lx,ly,lw,lh,lr)
    neutral._right(rx,ry,rw,rh,rr)
end

function neutral._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 32,36,8,32,32,8
    local x,y = SCREEN_WIDTH/2-lw,12
    neutral._draw(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
    
    disp:sendBuffer()
end
return neutral
