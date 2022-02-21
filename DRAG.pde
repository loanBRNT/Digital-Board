/**
 * Mouse Functions. 
 * 
 * Click on the box and drag it across the screen. 
 */
public class Drag extends Widget{ 

/**
 * Mouse Functions. 
 * 
 * Click on the box and drag it across the screen. 
 */


  float bx;
  float by;
  int boxSize = 75;
  boolean overBox = false;
  boolean locked = false;
  float xOffset = 0.0; 
  float yOffset = 0.0; 
  PImage doc = loadImage("PDF_icon.png");


public boolean inbox(){
  if (mouseX > 500 && mouseX < 1500 && 
        mouseY > 20 && mouseY < 620) {
          return true;
        }
  return false;
}

void setupWidget(){
    bx = width + 50; //emplacement boite
    by = height/2.0;
    drag.setposition(width-80, 10);
}

void draWidget(){
  
   // Test if the cursor is over the box 
    if (mouseX > bx-boxSize && mouseX < bx+boxSize && 
        mouseY > by-boxSize && mouseY < by+boxSize) {
      overBox = true;  
      //if(!locked) { 
       //stroke(255); 
       //fill(153);
      //} 
    } else {
      stroke(153);
      fill(153);
      overBox = false;
    }
    
    // Draw the box
    rect(bx, by, boxSize, boxSize);
    
    if (inbox()){
      fill(0,0);
      rect(bx, by, boxSize, boxSize);
    }
    else{
      setposition(width-80, 10);
      
    }
}

void setposition(float x_pos, float y_pos){
  this.bx=x_pos;
  this.by=y_pos;
}

  
  void mousePressedDrag() {
    if(overBox) { 
      locked = true; 
      fill(255, 255, 255);
    } else {
      locked = false;
    }
    xOffset = mouseX-bx; 
    yOffset = mouseY-by; 
  
  }
  
  void mouseDraggedDrag() {
    if(locked) {
      bx = mouseX-xOffset; 
      by = mouseY-yOffset; 
    }
  }
  
  void mouseReleasedDrag() {
    locked = false;
  }
}
