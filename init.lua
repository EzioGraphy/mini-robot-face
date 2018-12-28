function init_spi_display()
    local cs  = 8 -- GPIO15, pull-down 10k to GND
    local dc  = 2 -- GPIO4
    local res = 0 -- GPIO16
    spi.setup(1, spi.MASTER, spi.CPOL_LOW, spi.CPHA_LOW, 8, 8)
    gpio.mode(8, gpio.INPUT, gpio.PULLUP)
    disp = u8g2.ssd1306_128x64_noname(1, cs, dc, res)
end

function u8g2_prepare()
    disp:setFont(u8g2.font_6x10_tf)
    disp:setFontRefHeightExtendedText()
    disp:setDrawColor(1)
    disp:setFontPosTop()
    disp:setFontDirection(0)
end

SCREEN_WIDTH = 128
SCREEN_HALF_HEIGHT = 32
SCREEN_HEIGHT = SCREEN_HALF_HEIGHT * 2
DEF_EYES_SPACING = 4


function _left(lx,ly,lw,lh,lr) disp:drawRBox(lx,ly,lw,lh,lr) end
function _right(rx,ry,rw,rh,rr) disp:drawRBox(rx,ry,rw,rh,rr) end
function _face(x,y,lew,leh,ler,rew,reh,rer,margin_left)
    if leh <= 0 then leh = 2 end
    if reh <= 0 then reh = 2 end
    local ly,ry = 0,0
    if leh >= reh then
        ly = y
        ry = y+(leh-reh)
    else
        ly = y+(reh-leh)
        ry = y
    end 
    
    local lx,lw,lh,lr = x,lew,leh,ler
    if leh <= lr then lr = 1 end
    
    local _margin_left,rw,rh,rr = margin_left,rew,reh,rer
    if reh <= rr then rr = 1 end
    local rx = lx + lw + _margin_left

    return lx,ly,lw,lh,lr,rx,ry,rw,rh,rr
end

dofile('anim-neutral.lua')
function draw()
    anim_neutral._start()
end


function loop()
   
  -- picture loop  
  --disp:clearBuffer()
  draw()
  --disp:sendBuffer()
  
  --loop_tmr:start()
end
draw_state = 0
init_spi_display()
loop()
print("--- Starting Graphics signle---")
--[[
loop_tmr = tmr.create()
loop_tmr:register(1000, tmr.ALARM_SEMI, loop)

init_spi_display()
print("--- Starting Graphics Test ---")
loop_tmr:start()
]]--
