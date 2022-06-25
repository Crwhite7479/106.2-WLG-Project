void Hallway1(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map    
    image (hallway1, 50,50);
    image (mapHallway1, 1499,770);

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
    image (exitroom_disabled,576,775,365,65);
    image (menu_norm,1525,682,319,80);
  
    prev_Room = 1;
    
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
      
if (infected == false){
  //Leave Room button reactivates to allow game victory
  image(exitroom_clicked,576,775,365,65);
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
}

  // STORAGE DOOR OPEN ANIMATION:
      if ((mouseX >= 549) && (mouseX <= 658))
      {
        if ((mouseY >= 276) && (mouseY <= 497))
        {
          if (has_storagekey == true && mousePressed == true){
          image(H1_storage_open,50,50);
          }
          
          if (has_storagekey == false){
          image(doorLocked_Text,49.25,844.75);
          }
        }        
      }
      
  // KITCHEN DOOR OPEN ANIMATION:
      if ((mouseX >= 359) && (mouseX <= 461))
      {
        if ((mouseY >= 236) && (mouseY <= 563))
        {
          if (mousePressed == true){
            image(H1_kitchen_open,50,50);
          }
        }
      } 
      
  // BEDROOM DOOR OPEN ANIMATION:
      if ((mouseX >= 68) && (mouseX <= 291))
      {
        if ((mouseY >= 128) && (mouseY <= 749))
        {
            if (mousePressed == true){
            image(H1_bedroom_open,50,50);
          }
        }
      }      
      
}
