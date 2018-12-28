skeptic = {}
function skeptic._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function skeptic._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx,ry, rx+rw,ry, rx,ry+rh*0.25)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	--skeptic
	dofile('face-skeptic.lua')
	skeptic._default()

	--custom expression
	--skeptic
	dofile('face-skeptic.lua')
	local lw,lh,lr,rw,rh,rr = 32,36,10,32,28,8
	local x,y = SCREEN_WIDTH/2-lw,20
	skeptic._draw(x,y,lw,lh,lr,rw,rh,rr)
]]--
function skeptic._draw(x,y,lw,lh,lr,rw,rh,rr)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, 4)
    skeptic._left(lx,ly,lw,lh,lr)
    skeptic._right(rx,ry,rw,rh,rr)
end

function skeptic._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 32,36,10,32,28,8
    local x,y = SCREEN_WIDTH/2-lw,20
    skeptic._draw(x,y,lw,lh,lr,rw,rh,rr)
    
    disp:sendBuffer()
end

return skeptic