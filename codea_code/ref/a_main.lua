-- Testjoe

-- Created by: Joe S
-- Created on July 18 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays Hello, World!

-- Use this function to perform your initial setup
function setup()
    
    -- setup dispaly and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    
    -- Housekeeping
    noFill()
    noSmooth()
    noStroke()
    
    -- Takes the above commands and pushes them on the stack for the styles to be useable
    pushStyle()
    
    
    print("Hello World!")
    print("Hi")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(31, 35, 214, 255)

    -- The color of font
    fill(144, 249, 9, 255)
    fontSize(50)
    font("AmericanTypewriter-Bold")
    


    -- Do your drawing here
    text("Hello, World!", 500, 400)
    
end

