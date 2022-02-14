public class Tableau extends Widget{
  
PFont police;
PImage pointer, gom, font, rempli;

public Tableau(){
  setupWidget();
}

void setupWidget(){
  
  fill(WHITE);
  rect(500,20,1000,600);
  fill(GREY);
  rect(500,560,1000,60);
  
  //load images
  pointer = loadImage("pointer.png");
    pointer.resize(40,40);
  gom = loadImage("gomme.png");
    gom.resize(40,40);
  font = loadImage("font.png");
    font.resize(40,40);
  rempli = loadImage("rempli.png");
    rempli.resize(40,40);
  
  //Image barre tableau
  image(pointer,515,572);
  image(gom,570,572);
  image(font,635,572);
  image(rempli,695,572);

}

void draWidget(){
  
  fill(WHITE);
  rect(500,20,1000,600);
  fill(GREY);
  rect(500,560,1000,60);
  //Image barre tableau
  image(pointer,515,572);
  image(gom,570,572);
  image(font,635,572);
  image(rempli,695,572);
}

void mouseDraggedTab(){
  if((500<pmouseX) && (pmouseX<1500) && (20<pmouseY) && (pmouseY<560) && (500<mouseX) && (mouseX<1500) && (20<mouseY) && (mouseY<560)){
  line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  // ajouter sauvegarde de mouseX et mouseY pour tout dessiner au fur et a mesure pov je sais pas faire
}

void mousePressedTab(){
  if((500<mouseX) && (mouseX<1500) && (20<mouseY) && (mouseY<560)){
    point(mouseX,mouseY);
  }
  /*
  //mode selection
  if(){
  
  }
  //mode gomme
  if(){
  
  }
  //mode font
  if(){
  
  }
  //mode rempli
  
  
  */
}

}
