void Options_Menu(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);

//Screen & map glitch
    image (menuBackground,50,50);
    image (menuOptions,429,190);
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
        
//Mute checkbox states:

  if (music_playing == true){
      image(checkbox_empty,979,316);
  }
  
  else if (music_playing == false){
      image(checkbox_tick,979,316);
  }

                 
}
