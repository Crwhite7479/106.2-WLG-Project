void Entry_Stairs(){ 
//Refresh and reload UI
    background(0);
    image(defaultScreen, 0, 0);

//Room & map
    image (entry_stairs, 50,50);
    image (glitch1, 1499,770);

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
    
    prev_Room = 12;
  
    //  MAP SCREEN GLITCH ANIMATOR
    if (current_Frame > 50) {
        current_Frame = 10;
      }
    
      if ((current_Frame >= 10) && (current_Frame < 20)){
        image(glitch1,1499,770);
      }
    
      else if ((current_Frame >= 20) && (current_Frame < 30)){
        image(glitch2,1499,770);
      }
    
      else if ((current_Frame >= 30) && (current_Frame < 40)){
        image(glitch3,1499,770);
      }
    
      else if ((current_Frame >= 40) && (current_Frame < 50)){
        image(glitch2,1499,770);
      }
     
//Button animations
    //Menu buttons
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


if (wait_Frames > 100) {
        wait_Frames = 0;
}

      if (wait_Frames == 100){
        selection = 1;
        Hallway1();
      }
    
    
    
}
