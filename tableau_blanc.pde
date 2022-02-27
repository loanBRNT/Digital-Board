public class Tableau extends Widget{
  
PFont police;
PImage pointer, gom, font, rempli;
int matriceTab[][]; 

public Tableau(){
  setupWidget();
}

void resetMatrice(){
  for (int i = 0 ; i < 1000 ; i++){
    for (int j = 0 ; j < 600 ; j++){
      matriceTab[i][j] = 0;
    }
  }
}

void setupWidget(){
  
  fill(WHITE);
  rect(500,20,1000,600);
  fill(GREY);
  rect(500,560,1000,60);
  
  matriceTab = new int[1000][600];
  resetMatrice();
  
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
  
  for (int i = 0 ; i < 1000 ; i++){
    for (int j = 0 ; j < 600 ; j++){
      if(matriceTab[i][j] == 1){
        point(500+i,20+j);
      }
    }
  }
}

void afficherDoc(PImage doc){
 image(doc,500,20,1000,540); 
}

void mouseDraggedTab(){
  if (!fenetreExo.drag.locked){
    if((500<pmouseX) && (pmouseX<1500) && (20<pmouseY) && (pmouseY<560) && (500<mouseX) && (mouseX<1500) && (20<mouseY) && (mouseY<560)){   
    matriceTab[mouseX-500][mouseY-20] = 1;
  }
  }
}

void mousePressedTab(){
  if((500<mouseX) && (mouseX<1500) && (20<mouseY) && (mouseY<560)){
    matriceTab[mouseX-500][mouseY-20] = 1;
  }
  if (570<mouseX && mouseX<610 && 572<mouseY && mouseY<612){
    fenetreExo.drag.affiche = false;
    resetMatrice();
  }
  
  
  /*
  //mode selection
  if(){
  
  }
  mode gomme
  if(){
  
  }
  //mode font
  if(){
  
  }
  //mode rempli
  
  
  */
}

}
