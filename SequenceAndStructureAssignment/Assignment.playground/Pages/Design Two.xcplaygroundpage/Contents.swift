/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.lineColor = Color(hue: x+y, saturation: 100, brightness: 100, alpha: 100)
        //canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
        canvas.drawLine(fromX: x   , fromY: y, toX: x, toY: 5*y)
        canvas.drawLine(fromX: x, fromY: y, toX: 5*x, toY: y)
    }
    
}

for x in stride(from: 25, through: 475, by: 50){
    //assigns y a value from 25 to 50 with increments of 5
    for y in stride(from: 25, through: 475, by: 50) {
        //assigns z a value from 25 to 50 with increments of 5
        for z in stride(from: 25, through: 50, by: 5){
            
            //randomly generates a colour for the circles
            canvas.borderColor = Color(hue: x/z*y, saturation: 100, brightness: 100, alpha: 70)
            //makes circles
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        }
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
