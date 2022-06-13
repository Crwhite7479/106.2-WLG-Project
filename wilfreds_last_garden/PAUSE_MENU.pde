void Pause_Menu(){    
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
  
//Screen & map glitch
    image (menuBackground,50,50);
    image (mainMenuImage,429,190);
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
      
     //Quit button
        if ((mouseX >= 506) && (mouseX <= 974))
      {
        if ((mouseY >= 506) && (mouseY <= 575))
        {
          image(quitbutton_mo,505,497,472,99);              
          if (mousePressed){
              image(quitbutton_clicked,505,500,472,89);      
          }
        }
      } 
        
     //Options button
        if ((mouseX >= 506) && (mouseX <= 974))
      {
        if ((mouseY >= 406) && (mouseY <= 475))
        {
          image(options_mo,505,398,472,98);              
          if (mousePressed){
              image(options_clicked,505,397,472,89);      
          }
        }
      } 
      
     //Save button
        if ((mouseX >= 506) && (mouseX <= 974))
      {
        if ((mouseY >= 306) && (mouseY <= 375))
        {
          image(savebutton_mo,505,300,472,98);              
          if (mousePressed){
              image(savebutton_clicked,505,300,472,89);      
          }
        }
      } 

     //Load button
        if ((mouseX >= 506) && (mouseX <= 974))
      {
        if ((mouseY >= 206) && (mouseY <= 275))
        {
          image(loadbutton_mo,505,202,472,98);              
          if (mousePressed){
              image(loadbutton_clicked,505,202,472,89);      
          }
        }
      }            
           
}
