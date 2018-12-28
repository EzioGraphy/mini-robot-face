squint = {}
function squint._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function squint._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[ 
	--default expression
	--squint
	dofile('face-squint.lua')
	squint._default()

	--custom expression
	--squint
	dofile('face-squint.lua')
	local lw,lh,lr,rw,rh,rr = 36,8,2,36,8,2
	local x,y = SCREEN_WIDTH/2-lw,24
	squint._draw(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
]]--
function squint._draw(x,y,lw,lh,lr,rw,rh,rr,eyes_spacing)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, eyes_spacing)
    _left(lx,ly,lw,lh,lr)
    _right(rx,ry,rw,rh,rr)
end

function squint._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 36,8,2,36,8,2
    local x,y = SCREEN_WIDTH/2-lw,24
    squint._draw(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
    
    disp:sendBuffer()
end
return squint
