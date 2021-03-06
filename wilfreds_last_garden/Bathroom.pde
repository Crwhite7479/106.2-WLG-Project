void Bathroom(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
  
//Room & map
    image (bathroom,50,50);
    image (mapBathroom, 1499,770);
    
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
    
    prev_Room = 6;
    
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
        
  // SINK TEXT DESCRIPTION
        if ((mouseX >= 994) && (mouseX <= 1284))
      {
        if ((mouseY >= 66) && (mouseY <= 502))
        {         
          image(sink_Text,49.25,844.75);          
        }
      }

  // BATHTUB TEXT DESCRIPTION
        if ((mouseX >= 119) && (mouseX <= 574))
      {
        if ((mouseY >= 469) && (mouseY <= 767))
        {          
          image(bathtub_Text,49.25,844.75);          
        }
      }  
      
  // TOILET INTERACTION
        if ((mouseX >= 633) && (mouseX <= 849))
      {
        if ((mouseY >= 253) && (mouseY <= 618))
        { 
          if (has_cuttingtool == false){
            image(toiletmo_Text,49.25,844.75);
          }
          
          else if (has_cuttingtool == true){
            image(toilet1_Text,49.25,844.75);
          }

        }
      }      
      
}
