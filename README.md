# **Mini Robot Face**
MiniRobotFace like COZMO(https://www.anki.com/en-us/cozmo) facial expression, in ESP8266(nodemcu-firmware https://github.com/nodemcu/nodemcu-firmware) u8g2 ssd1306_128x64 display, use eLua draw（no u8g2.disp:drawXBM() is used）

------

![](https://raw.githubusercontent.com/soft-di/mini-robot-face/master/cozmo-face.jpg)

##  steps
1.  build nodemcu-firmware(https://nodemcu-build.com/)  master branch 15 modules: ***file*** ***gpio*** http ***i2c*** mqtt net ***node*** pwm sjson ***spi*** ***tmr u8g2*** uart websocket wifi

2. written nodemcu-firmware into esp8266 use NodeMCU-PyFlasher(https://github.com/marcelstoer/nodemcu-pyflasher)

3. ESPlorer(https://github.com/4refr0nt/ESPlorer) IDE connect esp8266

4. init.lua boot (***there are examples in init.lua***)

default setting

```lua
SCREEN_WIDTH = 128
SCREEN_HALF_HEIGHT = 32
SCREEN_HEIGHT = SCREEN_HALF_HEIGHT * 2
DEF_EYES_SPACING = 4
```



1. **face-neutral.lua**

   ```lua
   --default expression
   --neutral
   dofile('face-neutral.lua')
   neutral._default()
   
   --custom expression
   --neutral
   dofile('face-neutral.lua')
   local lw,lh,lr,rw,rh,rr = 32,32,8,32,36,8
   local x,y = SCREEN_WIDTH/2-lw,12
   neutral._draw(x,y,lw,lh,lr,rw,rh,rr,DEF_EYES_SPACING)
   ```

2. **face-blink.lua**

   includes ***blink high,blink low***

   ```lua
   --default expression
   --blink high
   dofile('face-blink.lua')
   blink._high()
   
   --blink low
   dofile('face-blink.lua')
   blink._low()
   
   --custom expression
   --blink high
   dofile('face-blink.lua')
   local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
   local x,y = SCREEN_WIDTH/2-lw,24
   blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
   --blink low
   dofile('face-blink.lua')
   local lw,lh,lr,rw,rh,rr = 56,4,0,56,4,0
   local x,y = SCREEN_WIDTH/2-lw,40
   blink._draw(x,y,lw,lh,lr,rw,rh,rr,0)
   ```

3. **face-happy.lua**

   ```lua
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
   ```

4. **face-glee.lua** 

   includes ***sadup,saddown***

   ```lua
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
   ```

5. **face-sad.lua**

   ```lua
   --default expression
   dofile('face-glee.lua')
   --sad up
   glee._up()
   
   --sad down
   dofile('face-glee.lua')
   glee._down()
   
   
   --custom expression
   --sad up
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 32,24,32,24
   local x,y = SCREEN_WIDTH/2-lw,4
   sad._draw(x,y,lw,lh,rw,rh)
   
   --sad down
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 32,16,32,16
   local x,y = SCREEN_WIDTH/2-lw,36
   sad._draw(x,y,lw,lh,rw,rh)
   ```

6. **face-worried.lua**

   ```lua
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
   ```

7. **face-focused.lua**

   ```lua
   --default expression
   --focused
   dofile('face-focused.lua')
   focused._default()
   
   --custom expression
   --focused
   dofile('face-focused.lua')
   local lw,lh,rw,rh = 36,16,36,16
   local x,y = SCREEN_WIDTH/2-lw,20
   focused._draw(x,y,lw,lh,rw,rh)
   ```

8. **face-anroyed.lua**

   ```lua
   --default expression
   --anroyed
   dofile('face-anroyed.lua')
   anroyed._default(x,y,lw,lh,rw,rh)
   
   --custom expression
   --anroyed
   dofile('face-anroyed.lua')
   local lw,lh,rw,rh = 36,12,36,8
   local x,y = SCREEN_WIDTH/2-lw,28
   anroyed._draw(x,y,lw,lh,rw,rh)
   ```

9. **face-surprised.lua**

   ```lua
   --default expression
   --surprised
   dofile('face-surprised.lua')
   surprised._default()
   
   --custom expression
   --surprised
   dofile('face-surprised.lua')
   local lw,lh,rw,rh = 38,42,38,42
   local x,y = SCREEN_WIDTH/2-lw,8
   surprised._draw(x,y,lw,lh,rw,rh)
   ```

10. **face-skeptic.lua**

    ```lua
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
    ```

11. ***face-frustrated.lua***

    ```lua
    --default expression
    --frustrated
    dofile('face-frustrated.lua')
    frustrated._default()
    
    --custom expression
    --frustrated
    dofile('face-frustrated.lua')
    local lw,lh,rw,rh = 32,12,32,12
    local x,y = SCREEN_WIDTH/2-lw,36
    frustrated._draw(x,y,lw,lh,rw,rh)
    ```

12. ***face-unimpressed.lua***

    ```lua
    --default expression
    --unimpressed
    dofile('face-unimpressed.lua')
    unimpressed._default()
    
    --custom expression
    --unimpressed
    dofile('face-unimpressed.lua')
    local lw,lh,rw,rh = 32,12,32,14
    local x,y = SCREEN_WIDTH/2-lw,36
    unimpressed._draw(x,y,lw,lh,rw,rh)
    ```

13. ***face-sleepyeyes.lua***

    ```lua
    --custom expression
    
    
    --default expression
    ```

14. ***face-suspicious.lua***

    ```lua
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
    ```

15. ***face-squint.lua***

    ```lua
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
    ```
16. ***face-angry.lua***

    ```lua
    --default expression
    --angry
    dofile('face-angry.lua')
    angry._default()
    
    --custom expression
    --angry
    dofile('face-angry.lua')
    local lw,lh,lr,rw,rh,rr = 36,20,8,36,20,8
    local x,y = SCREEN_WIDTH/2-lw,32
    angry._draw(x,y,lw,lh,lr,rw,rh,rr)
    ```
17. ***face-furous.lua***

    ```lua
    --default expression
    --furous
    dofile('face-furous.lua')
    furous._default()
    
    --custom expression
    --furous
    dofile('face-furous.lua')
    local lw,lh,lr,rw,rh,rr = 36,30,4,36,30,4
    local x,y = 128/2-lw,20
    furous._draw(x,y,lw,lh,lr,rw,rh,rr)
    ```
18. ***face-scared.lua***

    ```lua
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
    ```
19. ***face-.lua***

    ```lua
    --default expression
    --awe
    dofile('face-awe.lua')
    awe._default()
    
    --custom expression
    --awe
    dofile('face-awe.lua')
    local lw,lh,rw,rh = 36,45,36,45
    local x,y = SCREEN_WIDTH/2-lw,4
    awe._draw(x,y,lw,lh,rw,rh)
    ```
