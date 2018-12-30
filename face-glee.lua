glee = {}
function glee._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:drawBox(lx,ly+(lh-lr),lw,lr)
    
    disp:setDrawColor(0)
    disp:drawBox(lx+2,ly+lh-2, lw-4, 2);
    disp:setDrawColor(1)
end
function glee._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:drawBox(rx,ry+(rh-rr),rw,rr)
    
    disp:setDrawColor(0)
    disp:drawBox(rx+2,ry+rh-2, rw-4, 2);
    disp:setDrawColor(1)
end
--[[
	--default expression
	--glee
	dofile('face-glee.lua')
	glee._default()

	--custom expression
	--glee
	dofile('face-glee.lua')
	local lw,lh,rw,rh = 32,10,32,10
	local x,y = SCREEN_WIDTH/2-lw,8
	glee._draw(x,y,lw,lh,rw,rh)
]]--
function glee._draw(x,y,lw,lh,rw,rh)
     local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,4, 8)
     glee._left(lx,ly,lw,lh,lr)
     glee._right(rx,ry,rw,rh,rr)
end

function glee._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,10,32,10
    local x,y = SCREEN_WIDTH/2-lw,8
    glee._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return glee
