-- Shady Grove Healthy Kids Day

-- April 19th, 2018

-- Use this function to perform your initial setup
    function setup()
        print("Hello World!")
        supportedOrientations(LANDSCAPE_ANY)
    end
    
    -- This function gets called once every frame
    function draw()
        -- This sets a dark background color 
        background(40, 180, 140)
        
        fill(150, 55, 255, 255)
        fontSize(60)
        font("AmericanTypewriter-Bold")
    
        -- Do your drawing here
        text("Hello Shady Grove,", 400, 500)
        text("Welcome to Healthy Kids Day!", 500, 360)
        
    end