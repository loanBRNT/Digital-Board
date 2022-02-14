public class Bandeau extends Widget{
  
  PImage roue, lune , plus , marche;
  
  public Bandeau(){
    setupWidget();
  }
  
  void setupWidget(){
  //load images
  roue=loadImage("roueParametre.png");
  lune=loadImage("lune.png");
  plus=loadImage("plus.png");
 marche=loadImage("marche.png");
 
       roue.resize(50,50);
      lune.resize(50,50);
     plus.resize(50,50);
     marche.resize(50,50);
      image(roue,1200,400);
      image(lune,1200,500);
      image(plus,1200,600);
      image(marche,1200,700);
}

void draWidget(){
  image(roue,1800,750);
  image(lune,1800,810);
  image(plus,1800,870);
  image(marche,1800,930);

}

void mousePressedBandeau(){
   if((mouseX>1800)&& (mouseY>930)) {
    etat=STATUS.OFF;
  } 
}
  
}
