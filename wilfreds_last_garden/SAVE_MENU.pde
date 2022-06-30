void Save_Menu(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Screen & map glitch   
    image (menuBackground,50,50);
    image (saveGameSlots,429,190);
    image (glitch1,1499,770);

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
    image (back_norm,1525,682,319,80);
    

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
     //Back button
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          image(back_mo,1525,682,319,85);
          if (mousePressed){
              image(back_clicked,1525,682,319,80);
          }
        }
      } 
        
   // SLOT 1 BUTTON
        if ((mouseX >= 506) && (mouseX <= 978))
      {
        if ((mouseY >= 309) && (mouseY <= 375))
        {
            image(slot1_mo,506,299,472,101);
            if (mousePressed){
              image(slot1_clicked,506,299,472,90);
          }
          
        }
      }           
 
  // SLOT 2 BUTTON
        if ((mouseX >= 506) && (mouseX <= 978))
      {
        if ((mouseY >= 399) && (mouseY <= 475))
        {
            image(slot2_mo,506,399,472,101);
            if (mousePressed){
              image(slot2_clicked,506,399,472,90);
          }
          
        }
      }
      
  // SLOT 3 BUTTON
        if ((mouseX >= 506) && (mouseX <= 978))
      {
        if ((mouseY >= 499) && (mouseY <= 575))
        {
            image(slot3_mo,506,499,472,101);
            if (mousePressed){
              image(slot3_clicked,506,499,472,90);
          }
          
        }
      }      
                 
}
