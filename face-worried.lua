worried = {}
function worried._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:setDrawColor(0)
    disp:drawTriangle(lx,ly, lx+lw,ly, lx,ly+lh*0.4)
    disp:setDrawColor(1)
end
function worried._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx-1,ry, rx+rw,ry, rx+rw,ry+rh*0.4)
    disp:setDrawColor(1)
end
--[[ 
	--default expression
	--worried
	dofile('face-worried.lua')
	worried._default()

	--custom expression
	--worried
	dofile('face-worried.lua')
	local lw,lh,rw,rh = 36,32,36,36
	local x,y = SCREEN_WIDTH/2-lw,16
	worried._draw(x,y,lw,lh,rw,rh)
]]--
function worried._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,8,rw,rh,8, 4)
    worried._left(lx,ly,lw,lh,lr)
    worried._right(rx,ry,rw,rh,rr)
end

function worried._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 36,32,36,36
    local x,y = SCREEN_WIDTH/2-lw,16
    worried._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return worried
