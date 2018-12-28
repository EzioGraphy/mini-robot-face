happy = {}
function happy._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
    disp:drawBox(lx,ly+(lh-lr),lw,lr)
end
function happy._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
    disp:drawBox(rx,ry+(rh-rr),rw,rr)
end
--[[ 
	--default expression
	--happy
	dofile('face-happy.lua')
	happy._default()

	--custom expression
	--happy
	dofile('face-happy.lua')
	local lw,lh,rw,rh = 32,10,32,10
	local x,y = SCREEN_WIDTH/2-lw,16
	happy._draw(x,y,lw,lh,rw,rh)
]]--
function happy._draw(x,y,lw,lh,rw,rh)
     local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,4,rw,rh,4, 8)
     happy._left(lx,ly,lw,lh,lr)
     happy._right(rx,ry,rw,rh,rr)
end

function happy._default(x,y,lw,lh,rw,rh)
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 32,10,32,10
    local x,y = SCREEN_WIDTH/2-lw,16
    happy._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end


return happy
