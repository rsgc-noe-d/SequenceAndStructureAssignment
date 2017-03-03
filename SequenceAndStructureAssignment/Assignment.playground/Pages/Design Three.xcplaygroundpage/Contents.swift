/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
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
        
    
    }
}

let z = random(from: 0, toButNotIncluding: 360)

canvas.lineColor = Color(hue: z, saturation: 100, brightness: 100, alpha: 100)

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Get some entropy (a random number, 0 or 1, but never 2)
        let value = random(from: 0, toButNotIncluding: 2)
        
        // Use the random value to decide on the direction of a line
        if value == 0 {
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x - 50, fromY: y - 50, toX: x + 50, toY: y + 50)
        } else {
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x + 50, fromY: y - 50, toX: x - 50, toY: y + 50)
            
        }
        
    }
}

for x in stride(from: 25, through: 475, by: 50){
    
   
    for y in stride(from: 25, through: 475, by: 50) {
        
      
        
        let q = random(from: 0, toButNotIncluding: 5)
        
        
     
        if q == 0{
            
canvas.drawRectangle(bottomLeftX: 0,
bottomLeftY: 0, width: 100, height: 100)
            
        } else {
            
            canvas.drawEllipse(centreX: 25, centreY: 25, width: 25, height: 25)
            
        }
        
    }
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
