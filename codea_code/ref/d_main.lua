-- Testjoe D

-- Created by: Joe S
-- Created on July 18 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays an image and let the user move it with their finger

-- global variables
imageName = "SpaceCute:Beetle Ship"
imageSize = vec2()
imagePosition = vec2()

-- Use this function to perform your initial setup
-- Happens once, and only once
function setup()
    
    -- setup dispaly and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    -- get rid of right console, so only fullscreen shows
    displayMode(FULLSCREEN)
    
    -- Housekeeping, sets style to null
    noFill()
    noSmooth()
    noStroke()
    -- Takes the above commands and pushes them on the stack for the styles to be useable
    pushStyle()
    
    imagePosition = vec2(WIDTH/2, HEIGHT/2)
    imageSize = vec2(spriteSize(imageName))
end

-- This function gets called once every frame
-- Happens 60x/second
function touched(touch)
    
    -- local variables
    local currentTouchPosition = vec2(touch.x, touch.y)
    
    -- Three states to check for touch events:
    -- Start touching the screen
    if (touch.state == BEGAN) then
          
    end
    
    -- Continuously touching the screen
    if (touch.state == MOVING) then
        if( (imagePosition.x - imageSize.x/2) < currentTouchPosition.x and
            (imagePosition.x + imageSize.x/2) > currentTouchPosition.x and
            (imagePosition.y - imageSize.y/2) < currentTouchPosition.y and
            (imagePosition.y + imageSize.y/2) > currentTouchPosition.y ) then
        
            imagePosition = currentTouchPosition
        end
    end
    
    -- Stopped touching screen
    if (touch.state == ENDED) then
    
    end  
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
    
    -- local variables
    
    background(0, 0, 0, 255)
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite(imageName,imagePosition.x, imagePosition.y)
end