-- Testjoe B

-- Created by: Joe S
-- Created on July 18 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays a rectangle and shows its area

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
    
    
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
    
    -- local variables
    local widthOfRectangle = 200
    local heightOfRectangle = 100
    local area
    
    -- This sets a dark background color 
    background(31, 35, 214, 255)
    stroke(0, 255, 0, 255)

    -- The color of font
    fill(144, 249, 9, 255)
    fontSize(50)
    textMode(CORNER)
    font("AmericanTypewriter-Bold")
    pushStyle()
    
    rect(100, 100, widthOfRectangle, heightOfRectangle)
    area = widthOfRectangle * heightOfRectangle
    
    text("This rectangle's area is " .. area, 50, 35)
    
    popStyle()
    
end

