abstract class Object{
  int pos_x;
  int pos_y;
  int longueur;
  int largeur;
  
  public Object(int x, int y, int lo, int la){
    pos_x = x;
    pos_y = y;
    longueur = lo;
    largeur = la;
  }
  
  abstract void drawObject();
  
  abstract void update(int x);
  
  abstract boolean isClicked();
  
  abstract void action(Wallet wallet);
}
