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
  boolean affiche = false;
  float xOffset = 0.0; 
  float yOffset = 0.0;
  
  PImage logo = loadImage("Data/PDF_icon.png");
  PImage doc = loadImage("Data/capture.png");


public boolean onTab(){
  if (bx > 500 && bx < 1500 && 
        by > 20 && by < 620) {
          return true;
        }
  return false;
}

public boolean onCard(){
 
  return false;
}

void setupWidget(){
    bx = width + 50; //emplacement boite
    by = height/2.0;
    drag.setposition(width-80, 10);

}

void draWidget(){

   // Test if the cursor is over the box 
    if (mouseX > bx-boxSize && mouseX < bx+boxSize && mouseY > by-boxSize && mouseY < by+boxSize) {
      overBox = true;
    } else {
      overBox = false;
    }
    
    // Draw the box
    image(logo,bx,by,75,75);
    if (affiche) image(doc,500,20,1000,540);
    
    if (!onTab()){
      setposition(width-80, 10); 
    } else {
       affiche = true;
       bx = width + 50; //emplacement boite
       by = height/2.0;
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
