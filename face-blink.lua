blink = {}
function blink._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function blink._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[ 
	--default expression
	--blink high
	dofile('face-blink.lua')
	blink._high()

	--blink low
	dofile('face-blink.lua')
	blink._low()

	--custom expression
	--blink high
	dofile('face-blink.lua')
	local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
	local x,y = SCREEN_WIDTH/2-lw,24
	blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
	--blink low
	dofile('face-blink.lua')
	local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
	local x,y = SCREEN_WIDTH/2-lw,40
	blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
]]--
function blink._draw(x,y,lw,lh,lr,rw,rh,rr,eyes_spacing)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, eyes_spacing)
    blink._left(lx,ly,lw,lh,lr)
    blink._right(rx,ry,rw,rh,rr)
end

function blink._high()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
    local x,y = SCREEN_WIDTH/2-lw,24
    blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
    
    disp:sendBuffer()
end
function blink._low()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
    local x,y = SCREEN_WIDTH/2-lw,40
    blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
    
    disp:sendBuffer()
end
return blink
