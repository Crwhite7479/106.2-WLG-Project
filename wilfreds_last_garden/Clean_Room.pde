void Clean_Room(){

  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
  
//Room & map
    image (clean_room, 50,50);
    image (mapCleanRoom, 1499,770);
    
    //Inventory
    
    if (has_bluecard == true){
        image(blue_keycard,1573,336);
    }
    
    if (has_redcard == true){
        image(red_keycard,1706,336);
    }
    
    if (has_fingerkey == true){
        image(finger_key,1631,532);
    }
    
    if (has_storagekey == true){
        image(storage_key,1573,140);
    }
    
    if (has_cuttingtool == true){
        image(cutting_tool,1706,140);
    }
    
//Buttons
    image (exitroom_norm,576,775,365,65);
    image (menu_norm,1525,682,319,80);
    
    prev_Room = 11;
    
    
//Button animations
    //Menu button
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          image(menu_mo,1525,682,319,85);
          if (mousePressed){
              image(menu_clicked,1525,682,319,80);
          }
        }
      } 
      
  //Leave Room button
          if ((mouseX >= 581) && (mouseX <= 937))
        {
          if ((mouseY >= 777) && (mouseY <= 838))
          {
            image(exitroom_mo,576,775,365,78);
            if (mousePressed){
                image(exitroom_clicked,576,775,365,65);
            }
          }
        }
        
// First time basement entry Spray animator:        
if (been_Sprayed == false){ 
  
    if (current_Frame > 240) {
        current_Frame = 0;
      }
    
      else if ((current_Frame >= 60) && (current_Frame < 120)){
        image(spray1,50,50);
        image(spray_Text,49.25,844.75);
      }
    
      else if ((current_Frame >= 120) && (current_Frame < 180)){
        image(spray2,50,50);
        image(spray_Text,49.25,844.75);
      }
    
      else if (current_Frame >= 180){
        image(spray3,50,50);
        image(spray_Text,49.25,844.75);
      }    
    }     
 
      
// Alternating timers for being sprayed or not
if (been_Sprayed == false){      
    if (wait_Frames > 240) {
        wait_Frames = 0;        
        }

      if (wait_Frames == 240){
        selection = 8;
        Lower_Lab();
        spray_effect.stop();
      }
    }
    
if (been_Sprayed == true){      
    if (wait_Frames > 120) {
        wait_Frames = 0;        
        }

      if (wait_Frames == 120){
        selection = 8;
        Lower_Lab();        
      }
    }    
    
}
