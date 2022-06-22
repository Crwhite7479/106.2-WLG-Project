void Storage(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map  
  if (has_redcard == false){
    image (storage, 50,50);
  }
    
    else if (has_redcard == true ){
       image (storage_nocard,50,50);
    }
    
    image (mapStorage, 1499,770);

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

    prev_Room = 5;
    
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

  // RED KEYCARD INTERACTION
        if ((mouseX >= 928.57) && (mouseX <= 967.57))
      {
        if ((mouseY >= 609.3) && (mouseY <= 658.3))
        {
          if (has_redcard == false){
          image(redcard_Text,49.25,844.75);
          }
        }
      }

  // DUCT TAPE INTERACTION
        if ((mouseX >= 882) && (mouseX <= 962))
      {
        if ((mouseY >= 309) && (mouseY <= 361))
        {
          image(ducttape_Text,49.25,844.75);
        }
      }      
 
  // BOOKS INTERACTION
        if ((mouseX >= 1195) && (mouseX <= 1411))
      {
        if ((mouseY >= 291) && (mouseY <= 458))
        {
          image(novels_Text,49.25,844.75);
        }
      }       

  // SHOEBOX INTERACTION
        if ((mouseX >= 808) && (mouseX <= 939))
      {
        if ((mouseY >= 682) && (mouseY <= 761))
        {
          image(shoebox_Text,49.25,844.75);
        }
      }       

  // FURNITURE PILE INTERACTION
        if ((mouseX >= 55) && (mouseX <= 693))
      {
        if ((mouseY >= 55) && (mouseY <= 766))
        {
          image(genfurniture_Text,49.25,844.75);
        }
      }              
      
}
