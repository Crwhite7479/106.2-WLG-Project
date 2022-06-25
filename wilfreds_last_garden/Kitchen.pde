void Kitchen(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map
    image (kitchen, 50,50);
    image (mapKitchen, 1499,770);
    image (kitchenSpiders_Text,49.25,844.75);
    

    
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

    prev_Room = 4;
    
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

  // FRIDGE TEXT DESCRIPTION
        if ((mouseX >= 641.21) && (mouseX <= 862.21))
      {
        if ((mouseY >= 83.13) && (mouseY <= 433.13))
        { 
          if (has_storagekey == false){
          image(fridgekey_Text,49.25,844.75);  
          }
          
          else if (has_storagekey == true){
          image(fridgesmell_Text,49.25,844.75);
          }
        }
      }      

  // DINING TABLE TEXT DESCRIPTION
        if ((mouseX >= 983) && (mouseX <= 1476))
      {
        if ((mouseY >= 318) && (mouseY <= 619))
        {
          image(table_Text,49.25,844.75);
        }
      }

  // STOVE TEXT DESCRIPTION
        if ((mouseX >= 94) && (mouseX <= 392))
      {
        if ((mouseY >= 256) && (mouseY <= 665))
        {
          image(stove_Text,49.25,844.75);
        }
      }        
      
}
