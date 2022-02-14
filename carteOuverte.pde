class CarteOuverte extends Carte{
  Carte carteOriginal;
  
  PImage imageCroix = loadImage("croix.png");
  PImage boutonAppel = loadImage("Data/boutonAppel.png");
  
  public CarteOuverte(Carte c){
     super(c);
     carteOriginal = c;
  }
  
  void drawObject(){
    fill(WHITE);
    rect(this.pos_x,this.pos_y,this.longueur,this.largeur);
    textFont(police,20);                 
    fill(0);                        
    text(profil.nom,this.pos_x+120,this.pos_y+30);
    text("Appreciation générale : " + profil.appreciation,this.pos_x+10,this.pos_y+160);
    text("Moyenne générale : " + profil.noteActuelle ,this.pos_x+10,this.pos_y+190);
    text("Age : " + profil.age,this.pos_x+120,this.pos_y+50);
    image(imageCroix,this.pos_x + 650,this.pos_y,50,50);
    image(profil.pdp,this.pos_x + 10, this.pos_y + 10);
    image(boutonAppel,this.pos_x + 580,this.pos_y + 160,120,40);
    smooth();
  }
  
  void update(int o){}
  
  boolean isClicked(){
     if (mouseX < pos_x + longueur && mouseX > pos_x && mouseY > this.pos_y && mouseY < this.pos_y + largeur){
       return true;
     } return false;
  }
  
  void action(Wallet wallet){
    if (mouseX < pos_x + longueur && mouseX > pos_x + longueur - 50 && mouseY > this.pos_y && mouseY < this.pos_y + 50){
       wallet.listeObject.remove(this);
       wallet.carteOuverte = false;
    } else if (mouseX < pos_x + longueur && mouseX > pos_x + longueur - 120 && mouseY > this.pos_y + largeur - 40 && mouseY < this.pos_y + largeur){
      carteOriginal.present = !carteOriginal.present;
    }    
  }
  
}
