public class Drag extends Widget{ 

/**
 * Mouse Functions. 
 * 
 * Click on the box and drag it across the screen. 
 */
  int tick=400;
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
  if (mouseX > 500 && mouseX < 1500 && 
        mouseY > 20 && mouseY < 620) {
          return true;
        }
  return false;
}

public boolean onCard(){
  if (wallet.carteOuverte){
    if (mouseX > 600 && mouseX < 1300 && 
        mouseY > 700 && mouseY < 900) 
          return true;
        }
  return false;
}

void setupWidget(){
    this.setposition(1600,100);

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
    if (tick < 300){ 
      textFont(police,30);
      fill(0);
      text("Document envoyé",900,680);
      tick++;
    }
    
    setposition(1600, 100); 
}

void setposition(float x_pos, float y_pos){
  this.bx=x_pos;
  this.by=y_pos;
}

  
  void mousePressedDrag() {
    if(overBox) { 
      locked = true;
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
    if (locked){  
      if (onTab()){
         affiche = true;
      } else if (onCard()){
        startTexteEnvoie();
      }
    }
    locked = false;
  }
  
  void startTexteEnvoie(){
     tick = 0;
  }
}
