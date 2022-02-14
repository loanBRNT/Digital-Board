
class Carte extends Object{
  Profil profil;
  boolean present = false;
  
  
  public Carte(int posY,String n,String a,String age, String note,PImage p){
      super(100,posY,300,100);
      this.profil = new Profil(n,a,age,note,p);
  }
  
  public Carte(Carte c){
     super(600,700,700,200);
     this.profil = c.profil;
  }
  
  void drawObject(){
    if (present) fill(VERT);
    else fill(ROUGE);
    rect(this.pos_x,this.pos_y,this.longueur,this.largeur);
    textFont(police,15);                 
    fill(0);                        
    text(profil.nom,200,this.pos_y+60);
    image(profil.pdp,110,this.pos_y+10,70,80);
    smooth();
  }
  
  void update(int old_y){
      if (old_y < mouseY){  
        this.pos_y = this.pos_y + 5;
        if (this.pos_y > 1000){
          this.pos_y = this.pos_y-1000;
        }
      } else {
       this.pos_y = this.pos_y - 5;
       if (this.pos_y < 0){
         this.pos_y = this.pos_y + 1000;
        }
      }
  }
  
  boolean isClicked(){
    if (mouseX < 400 && mouseX > 100 && mouseY > this.pos_y && mouseY < this.pos_y + 100){
      return true;
    }
    return false;
}

void action(Wallet wallet){
  if (wallet.carteOuverte){
     wallet.listeObject.remove(wallet.carte);
  }
  wallet.carte = new CarteOuverte(this);
  wallet.listeObject.add(wallet.carte);
  wallet.carteOuverte = true;
}

}
