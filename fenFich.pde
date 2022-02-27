
public class FenFich extends Widget{
  Drag drag;
  
  public FenFich(){
    drag = new Drag();
  }
  
  
 public void setupWidget(){
   drag.setposition(width-80, 10);
 }
  
 public void draWidget(){
    rect(1550,20,300,500);
    drag.draWidget();
    
  }
  
void mouseDraggedFen(){
 drag.mouseDraggedDrag();
}

void mousePressedFen(){
  drag.mousePressedDrag();
}

void mouseReleasedFen(){
  drag.mouseReleasedDrag();
}
  
  
  
  
  
  
  
  
  
  
}
