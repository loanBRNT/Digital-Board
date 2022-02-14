public class Profil{
  
  String nom;
  String appreciation;
  String noteActuelle;
  String age;
  PImage pdp;
  
  public Profil(String n, String a,String age, String note, PImage p){
    this.nom = n;
    this.appreciation = a;
    this.noteActuelle = note;
    this.age = age;
    pdp = p;
    pdp.resize(100,120);
  }
  
  
  
  
}
