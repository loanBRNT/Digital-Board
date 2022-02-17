//Palette de couleur
color BLEU = color(40,115,212,247);
color VERT = color(0,174,17);
color ROUGE = color (179,0,0);
color GREY = color(220,220,220);
color WHITE = color(255,255,255);

Wallet wallet;
Tableau tab;
STATUS etat;
Connexion empreinte;
Bandeau bandeau;
//Explorateur explo;

//
PFont police;

//Etats de la MAE
final int VEILLE = 0;
final int DEMARRAGE = 1;

void setup(){
  //Initialisation générale
  
  //Taille pour ecran windows
  size(1900,1000);
  //Taille pour ecran mac 
  //size(1440,900);
  police = createFont("Arial",16,true);
  background(BLEU);
  
  //Création des widgets de notre table
  wallet = new Wallet();
  tab = new Tableau();
  empreinte = new Connexion();
  bandeau= new Bandeau();
  //Explorateaur explo = new Explorateur();
  //MISE EN OFF DE l'app
  etat=STATUS.OFF;
  


}

void draw(){
  switch(etat){
    case OFF:
      background(BLEU);
      empreinte.draWidget();
      break;
    
    case ON :
      background(BLEU);
      wallet.draWidget();
      tab.draWidget();
      bandeau.draWidget();
      break;
    
    default:
      break;
  } 
}

void mouseDragged(){
  tab.mouseDraggedTab();
  wallet.mouseDraggedWallet();
}

void mousePressed(){
  tab.mousePressedTab();
  wallet.mousePressedWallet();
  empreinte.mousePressedEmpreinte();
  bandeau.mousePressedBandeau();
}