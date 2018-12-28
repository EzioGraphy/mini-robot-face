suspicious = {}
function suspicious._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function suspicious._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx,ry, rx+rw,ry, rx,ry+rh*0.25)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	--suspicious
	dofile('face-suspicious.lua')
	suspicious._default()

	--custom expression
	--suspicious
	dofile('face-suspicious.lua')
	local lw,lh,lr,rw,rh,rr = 32,16,4,32,12,4
	local x,y = SCREEN_WIDTH/2-lw,20
	suspicious._draw(x,y,lw,lh,lr,rw,rh,rr)
]]--
function suspicious._draw(x,y,lw,lh,lr,rw,rh,rr)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,lr,rw,rh,rr, 4)
    suspicious._left(lx,ly,lw,lh,lr)
    suspicious._right(rx,ry,rw,rh,rr)
end

function suspicious._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,lr,rw,rh,rr = 32,16,4,32,12,4
    local x,y = SCREEN_WIDTH/2-lw,20
    suspicious._draw(x,y,lw,lh,lr,rw,rh,rr)
    
    disp:sendBuffer()
end

return suspicious