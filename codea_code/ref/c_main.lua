-- Testjoe C

-- Created by: Joe S
-- Created on July 18 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays an image and moves it around the screen

-- global variables
bugPosition = vec2()

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
    
    bugPosition = vec2(WIDTH/2, HEIGHT/2)
    
    
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
    
    -- local variables
    
    bugPosition.x = bugPosition.x + (Gravity.x * 10)

    background(0, 0, 0, 255)
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite("SpaceCute:Beetle Ship", bugPosition.x, bugPosition.y)
    

    
end

