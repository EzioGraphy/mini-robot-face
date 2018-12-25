# **Mini Robot Face**

MiniRobotFace like COZMO(https://www.anki.com/en-us/cozmo) facial expression, in ESP8266(NodeMCU) u8g2 ssd1306_128x64 display, use eLua draw（no u8g2.disp:drawXBM() is used）

default setting

```lua
SCREEN_WIDTH = 128
SCREEN_HALF_HEIGHT = 32
SCREEN_HEIGHT = SCREEN_HALF_HEIGHT * 2
DEF_EYES_SPACING = 4
```



1. **face-neutral.lua**

   includes  ***neutral, squint,blink_high,blink_low*** 

   ```lua
   --neutral
   dofile('face-neutral.lua')
   local lw,lh,lr,rw,rh,rr = 32,32,8,32,36,8
   local x,y = SCREEN_WIDTH/2-lw,12
   neutral(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
   
   -- blink high
   dofile('face-neutral.lua')
   local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
   local x,y = SCREEN_WIDTH/2-lw,24
   neutral(x,y,lw,lh,lr,rw,rh,rr,0)
   
   -- blink low
   dofile('face-neutral.lua')
   local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
   local x,y = SCREEN_WIDTH/2-lw,40
   neutral(x,y,lw,lh,lr,rw,rh,rr,0)
   
   --squint
   dofile('face-neutral.lua')
   local lw,lh,lr,rw,rh,rr = 36,8,2,36,8,2
   local x,y = SCREEN_WIDTH/2-lw,24
   neutral(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
   ```

2. **face-happy.lua**

   includes ***happy***

   ```lua
   --happy
   dofile('face-happy.lua')
   local lw,lh,rw,rh = 32,10,32,10
   local x,y = SCREEN_WIDTH/2-lw,16
   happy(x,y,lw,lh,rw,rh)
   ```

3. **face-glee.lua**

   includes ***glee***

   ```lua
   --glee
   dofile('face-glee.lua')
   local lw,lh,rw,rh = 32,10,32,10
   local x,y = SCREEN_WIDTH/2-lw,8
   glee(x,y,lw,lh,rw,rh)
   ```

4. **face-sad.lua** 

   includes ***sadup,saddown***

   ```lua
   --sad up
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 32,24,32,24
   local x,y = SCREEN_WIDTH/2-lw,4
   sad(x,y,lw,lh,rw,rh)
   
   --sad down
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 32,16,32,16
   local x,y = SCREEN_WIDTH/2-lw,36
   sad(x,y,lw,lh,rw,rh)
   ```

5. **face-worried.lua**

   includes ***worried***

   ```lua
   --worried
   dofile('face-worried.lua')
   local lw,lh,rw,rh = 36,32,36,36
   local x,y = SCREEN_WIDTH/2-lw,16
   worried(x,y,lw,lh,rw,rh)
   ```

6. **face-focused.lua**

   includes ***focused***

   ```lua
   --focused
   dofile('face-focused.lua')
   local lw,lh,rw,rh = 32,16,32,16
   local x,y = SCREEN_WIDTH/2-lw,20
   focused(x,y,lw,lh,rw,rh)
   ```

7. **face-anroyed.lua**

   includes ***anroyed***

   ```lua
   --anroyed
   dofile('face-anroyed.lua')
   local lw,lh,rw,rh = 36,12,36,8
   local x,y = SCREEN_WIDTH/2-lw,28
   anroyed(x,y,lw,lh,rw,rh)
   ```

8. **face-surprised.lua**

   includes ***surprised***
   ```lua
   --surprised
   dofile('face-surprised.lua')
   local lw,lh,rw,rh = 38,42,38,42
   local x,y = SCREEN_WIDTH/2-lw,8
   surprised(x,y,lw,lh,rw,rh)
   ```

9. **face-skeptic.lua**

   includes ***skeptic,suspicious***

   ```lua
   -- skeptic
   dofile('face-skeptic.lua')
   local lw,lh,lr,rw,rh,rr = 32,36,10,32,28,8
   local x,y = SCREEN_WIDTH/2-lw,20
   skeptic(x,y,lw,lh,lr,rw,rh,rr)
   
   -- suspicious
   dofile('face-skeptic.lua')
   local lw,lh,lr,rw,rh,rr = 32,16,4,32,12,4
   local x,y = SCREEN_WIDTH/2-lw,20
   skeptic(x,y,lw,lh,lr,rw,rh,rr)
   ```

10. **face-frustrated.lua**

    includes ***frustrated,unimpressed***

    ```lua
    -- frustrated
    dofile('face-frustrated.lua')
    local lw,lh,rw,rh = 32,12,32,12
    local x,y = SCREEN_WIDTH/2-lw,36
    frustrated(x,y,lw,lh,rw,rh)
    
    -- unimpressed
    dofile('face-frustrated.lua')
    local lw,lh,rw,rh = 32,12,32,14
    local x,y = SCREEN_WIDTH/2-lw,36
    frustrated(x,y,lw,lh,rw,rh)
    ```

11. ***face-sleepyeyes.lua***

    includes ***sleepyeyes***

12. ***face-surprised.lua***

    includes ***surprised***

    ```lua
    --surprised
    dofile('face-surprised.lua')
    local lw,lh,rw,rh = 40,42,40,42
    local x,y = SCREEN_WIDTH/2-lw,8
    surprised(x,y,lw,lh,rw,rh)
    ```

13. ***face-angry.lua***

    includes ***angry,furous***

    ```lua
    -- angry
    dofile('face-angry.lua')
    local lw,lh,lr,rw,rh,rr = 36,20,8,36,20,8
    local x,y = SCREEN_WIDTH/2-lw,32
    angry(x,y,lw,lh,lr,rw,rh,rr)
    
    -- furous
    dofile('face-angry.lua')
    local lw,lh,lr,rw,rh,rr = 36,30,8,36,30,8
    local x,y = 128/2-lw,20
    angry(x,y,lw,lh,lr,rw,rh,rr)
    ```

14. ***face-scared.lua***

    includes ***scared***

    ```lua
    --scared
    dofile('face-scared.lua')
    local lw,lh,rw,rh = 30,36,30,36
    local x,y = SCREEN_WIDTH/2-lw,4
    scared(x,y,lw,lh,rw,rh)
    ```

15. ***face-awe.lua***

    includes ***awe***

    ```lua
    --awe
    dofile('face-awe.lua')
    local lw,lh,rw,rh = 36,45,36,45
    local x,y = SCREEN_WIDTH/2-lw,4
    awe(x,y,lw,lh,rw,rh)
    ```
