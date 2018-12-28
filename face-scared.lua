scared = {}
function scared._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:drawBox(lx,ly+(lh-lr),lw,lr)
    disp:setDrawColor(0)
    disp:drawTriangle(lx,ly, lx+lw,ly, lx, ly+lr)
    disp:setDrawColor(1)
end
function scared._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:drawBox(rx,ry+(rh-rr),rw,rr)
    disp:setDrawColor(0)
    disp:drawTriangle(rx,ry, rx+rw,ry, rx+rw,ry+rr)
    disp:setDrawColor(1)
end
--[[
	--default expression
	--scared
	dofile('face-scared.lua')
	scared._default()

	--custom expression
	--scared
	dofile('face-scared.lua')
	local lw,lh,rw,rh = 30,36,30,36
	local x,y = SCREEN_WIDTH/2-lw,4
	scared._draw(x,y,lw,lh,rw,rh)
]]--
function scared._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,12,rw,rh,12, 4)
    scared._left(lx,ly,lw,lh,lr)
    scared._right(rx,ry,rw,rh,rr)
end

function scared._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 30,36,30,36
    local x,y = SCREEN_WIDTH/2-lw,4
    scared._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return scared