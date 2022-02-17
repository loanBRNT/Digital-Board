public class Wallet extends Widget{
  
  //Attributs
  String tabChar[] = {"HESTAR Joe","GUETTA David","AUFONDULAC Grégory","HAIS Karim","LINN Maeve","BRIDOU Justin","DEPECAN Benoît","LADE Vanessa","WATSON Emma"};
  String tabApp[] = {"A besoin de s'investir plus","Eleve investit","Eleve souvent absent","A besoin d'un accompagnement personnel","Est autonome",
"Eleve un peu perturbateur","A du mal dans les matières scientifiques","Fait des efforts pour améliorer ses résultats","A des résultats excellent"};
  String tabMoy[] = {"10","15","3","6","14","12","11","9","18"};
  String tabAge[] = {"22","21","17","22","22","23","21","21","19"};
  PImage tabPdp[] = {loadImage("Data/joe.jpg"),loadImage("Data/david.jpg"),loadImage("Data/greg.jpg"),loadImage("Data/karim.jpg"),loadImage("Data/OIP.jpg"),loadImage("Data/justin.jpg"),
  loadImage("Data/benoit.jpg"),loadImage("Data/vanessa.jpg"),loadImage("Data/emma.jpg")};
  
  ArrayList<Object> listeObject;
  int nbElev = 9;
  boolean carteOuverte;
  Carte carte;
  enumClic typeDeClic;
  
  PImage image;
  
  int old_mouseY = mouseY;
  
  
  public Wallet(){
    super();
    setupWidget();
  }
  
  void setupWidget(){
  
     carteOuverte = false;
     
     listeObject = new ArrayList<Object>();
     for (int i = 0; i < nbElev; i++){
        listeObject.add(new Carte(i*10 + i*100,tabChar[i],tabApp[i],tabAge[i],tabMoy[i],tabPdp[i]));
     }
     
  }
  
  void draWidget(){
      rect(30,0,430,1000);
      for (int i = 0; i < listeObject.size(); i++){
        listeObject.get(i).drawObject();
      }
  }
  
  void mouseDraggedWallet(){
    if(mouseX < 430 && mouseX > 30){
      for (int i = 0; i < listeObject.size(); i++){
        listeObject.get(i).update(old_mouseY);
      }
      old_mouseY = mouseY;
    }
  }
  
  void mousePressedWallet(){
     if(true){ //Remplir coordonnées de la zone de detection de la souris pour le wallet
        for (int i = 0 ; i < listeObject.size() ; i++){
          if(listeObject.get(i).isClicked()){
              listeObject.get(i).action(this);  
           }
        }
     }
  }
}
  
