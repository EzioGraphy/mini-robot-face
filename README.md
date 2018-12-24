# **Mini Robot Face**

1. **face-neutral.lua**

   include  ***neutral, squint*** 

   ```lua
   --neutral 
   dofile('face-neutral.lua')
   local lw,lh,rw,rh = 20,24,20,24
   local x,y = 128/2-lw,20 --x is center
   neutral(x,y,lw,lh,rw,rh)
   ```
   ```lua
   --squint
   dofile('face-neutral.lua')
   local lw,lh,rw,rh = 20,4,20,4
   local x,y = 128/2-lw,20 --x is center
   neutral(x,y,lw,lh,rw,rh)
   ```

2. **face-blink.lua**

   include ***blink-high,blink-down***

   ```lua
   -- blink high
   dofile('face-blink.lua')
   local lw,lh,rw,rh = 48,2,48,2
   local x,y = 128/2-lw,16 --x is center
   blink(x,y,lw,lh,rw,rh)
   ```

   ```lua
   -- blink low
   dofile('face-blink.lua')
   local lw,lh,rw,rh = 48,2,48,2
   local x,y = 128/2-lw,48 --x is center
   blink(x,y,lw,lh,rw,rh)
   ```

3. face-happy.lua

   ```lua
   --happy
   dofile('face-happy.lua')
   local lw,lh,rw,rh = 20,8,20,8
   local x,y = 128/2-lw,20  --x is center
   happy(x,y,lw,lh,rw,rh)
   ```

4. **face-glee.lua**

   include ***glee***

   ```lua
   --glee
   dofile('face-glee.lua')
   local lw,lh,rw,rh = 20,8,20,8
   local x,y = 128/2-lw,10 --x is center
   glee(x,y,lw,lh,rw,rh)
   ```

5. **face-sad.lua** 

   include ***sadup,saddown***

   ```lua
   --up
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 20,18,20,18
   local x,y = 128/2-lw,4 --x is center
   glee(x,y,lw,lh,rw,rh)
   ```

   ```lua
   --down
   dofile('face-sad.lua')
   local lw,lh,rw,rh = 20,14,20,14
   local x,y = 128/2-lw,32 --x is center
   sad(x,y,lw,lh,rw,rh)
   ```

6. **face-worried.lua**

   include ***worried***

   ```lua
   --worried
   dofile('face-worried.lua')
   local lw,lh,rw,rh = 20,16,20,20
   local x,y = 128/2-lw,28 --x is center
   worried(x,y,lw,lh,rw,rh)
   ```

7. **face-focused.lua**

   include ***focused***

   ```lua
   --focused
   dofile('face-focused.lua')
   local lw,lh,rw,rh = 20,8,20,8
   local x,y = 128/2-lw,20 --x is center
   focused(x,y,lw,lh,rw,rh)
   ```

8. **face-anroyed.lua**

   include ***anroyed***

   ```lua
   --anroyed
   dofile('face-anroyed.lua')
   local lw,lh,rw,rh = 20,8,20,4
   local x,y = 128/2-lw,28 --x is center
   anroyed(x,y,lw,lh,rw,rh)
   ```

9. **face-surprised.lua**

   ```lua
   --surprised
   dofile('face-surprised.lua')
   local lw,lh,rw,rh = 28,32,28,32
   local x,y = 128/2-lw,20 --x is center
   surprised(x,y,lw,lh,rw,rh)
   ```

10. **face-skeptic.lua**

    include ***skeptic,suspicious***

    ```lua
    -- skeptic
    dofile('face-skeptic.lua')
    local lw,lh,lr,rw,rh,rr = 20,20,4,20,16,4
    local x,y = 128/2-lw,20 --x is center
    skeptic(x,y,lw,lh,lr,rw,rh,rr)
    ```

    ```lua
    -- suspicious
    dofile('face-skeptic.lua')
    local lw,lh,lr,rw,rh,rr = 20,20,2,20,16,2
    local x,y = 128/2-lw,20 --x is center
    skeptic(x,y,lw,lh,lr,rw,rh,rr)
    ```

11. **face-frustrated.lua**

    include ***frustrated,unimpressed***

    ```lua
    -- frustrated
    dofile('face-frustrated.lua')
    local lw,lh,rw,rh = 20,10,20,10
    local x,y = 128/2-lw,20 --x is center
    frustrated(x,y,lw,lh,rw,rh)
    ```

12. ***face-sleepyeyes.lua***

    include ***sleepyeyes***

13. ***face-surprised.lua***

    include ***surprised***

    ```lua
    --surprised
    dofile('face-surprised.lua')
    local lw,lh,rw,rh = 28,32,28,32
    local x,y = 128/2-lw,20 --x is center
    surprised(x,y,lw,lh,rw,rh)
    ```

    ```lua
    -- unimpressed
    dofile('face-frustrated.lua')
    local lw,lh,rw,rh = 20,10,20,12
    local x,y = 128/2-lw,20 --x is center
    frustrated(x,y,lw,lh,rw,rh)
    ```

14. ***face-angry.lua***

    include ***angry,furous***

    ```lua
    -- angry
    dofile('face-angry.lua')
    local lw,lh,lr,rw,rh,rr = 20,12,4,20,12,4
    local x,y = 128/2-lw,20 --x is center
    angry(x,y,lw,lh,lr,rw,rh,rr)    
    ```

    ```lua
    -- furous
    dofile('face-angry.lua')
    local lw,lh,lr,rw,rh,rr = 20,20,2,20,20,2
    local x,y = 128/2-lw,20 --x is center
    angry(x,y,lw,lh,lr,rw,rh,rr)
    ```

15. ***face-scared.lua***

    include ***scared***

    ```lua
    --scared
    dofile('face-scared.lua')
    local lw,lh,rw,rh = 20,24,20,24
    local x,y = 128/2-lw,4 --x is center
    scared(x,y,lw,lh,rw,rh)
    ```

16. ***face-awe.lua***

    include ***awe***

    ```lua
    --awe
    dofile('face-awe.lua')
    local lw,lh,rw,rh = 24,31,24,31
    local x,y = 128/2-lw,20 --x is center
    awe(x,y,lw,lh,rw,rh)
    ```
