sleepyeyes = {}
function sleepyeyes._left(lx,ly,lw,lh,lr)
    _left(lx,ly,lw,lh,lr)
end
function sleepyeyes._right(rx,ry,rw,rh,rr)
    _right(rx,ry,rw,rh,rr)
end
--[[ 
   dofile('face-sleepyeyes.lua')
   local lw,lh,rw,rh = 20,24,20,24
   local x,y = 128/2-lw,20
   sleepyeyes._draw(x,y,lw,lh,rw,rh)
]]--
function sleepyeyes._draw(x,y,lw,lh,rw,rh)
    local lx,ly,lw,lh,lr,rx,ry,rw,rh,rr = _face(x,y,lw,lh,2,rw,rh,1, 4)
    sleepyeyes._left(lx,ly,lw,lh,lr)
    sleepyeyes._right(rx,ry,rw,rh,rr)
end

function sleepyeyes._default()
    disp:clearBuffer()
    u8g2_prepare()
    
    local lw,lh,rw,rh = 20,24,20,24
    local x,y = 128/2-lw,20
    sleepyeyes._draw(x,y,lw,lh,rw,rh)
    
    disp:sendBuffer()
end

return sleepyeyes