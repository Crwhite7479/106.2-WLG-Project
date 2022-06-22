void Bedroom(){
  //refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
 
//Room & map

  if (has_bluecard == false){
    image (bedroom, 50,50);
  }
    
    else if (has_bluecard == true){
      image (bedroom_nocard,50,50);
    }
    
    image (mapBedroom, 1499,770);
    
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

    prev_Room = 3;
    
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
 
  // Found blue_key text description
        if ((mouseX >= 425) && (mouseX <= 465))
      {
        if ((mouseY >= 587) && (mouseY <= 613))
        { 
          if (has_bluecard == false){
          image(bluecard_Text,49.25,844.75);
          }
        }
      } 

  // Journals text description
        if ((mouseX >= 693) && (mouseX <= 856))
      {
        if ((mouseY >= 447) && (mouseY <= 650))
        {
          image(journals_Text,49.25,844.75);
        }
      }       
 
  // Backpack text description
        if ((mouseX >= 93) && (mouseX <= 286))
      {
        if ((mouseY >= 441) && (mouseY <= 608))
        {
          image(notefound_Text,49.25,844.75);
            if (mousePressed == true){
            image(bedroom_note,50,50);
          }
        }
      }  
 
  // Couch text description
        if ((mouseX >= 951) && (mouseX <= 1451))
      {
        if ((mouseY >= 150) && (mouseY <= 516))
        {
          image(couch_Text,49.25,844.75);
        }
      }
      
}
