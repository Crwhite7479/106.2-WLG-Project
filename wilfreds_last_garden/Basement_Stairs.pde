void Basement_Stairs(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
  
//Room & map
    image (basement_stairs, 50,50);
    image (mapBasementStairs, 1499,770);
    
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
    
    prev_Room = 10;
    
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

        
  // KEYPAD TEXT DESCRIPTION
        if ((mouseX >= 201) && (mouseX <= 260))
      {
        if ((mouseY >= 231) && (mouseY <= 429))
        {
            image(cardscanner_Text,49.25,844.75);
        }
      }      
 
  // LOWER LAB DOOR ANIMATOR
        if ((mouseX >= 328) && (mouseX <= 861))
      {
        if ((mouseY >= 52) && (mouseY <= 509))
        {
          if (LowerLab_Locked == false && mousePressed == true){
          image(basementstairs_door_open,50,50);
          }
          
          if (LowerLab_Locked == true){
          image(cleaningdoorLocked_Text,49.25,844.75);
          }         
        }
      }        
      
}
