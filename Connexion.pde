public class Connexion extends Widget{
  
  PImage empreinte;
  
  public Connexion(){
    setupWidget();
  }
  
  void setupWidget(){
  //load images
  empreinte = loadImage("empreinte.png");
   empreinte.resize(100,100);
   image(empreinte,1500,10); 
}

void draWidget(){
  image(empreinte,1800,10); 
}

void mousePressedEmpreinte(){
 if((mouseX>1800)&& (mouseY<100)) {
    etat=STATUS.ON;
  } 
}
  
}
