void Office(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map  
  if (has_fingerkey == false){
    image (office, 50,50);
  }
    
    else if (has_fingerkey == true){
      image (office_nohand,50,50);
    }
    
    image (mapOffice, 1499,770);

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
    
    prev_Room = 9;
    
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

  // HAND REMOVAL TEXT DESCRIPTION
        if ((mouseX >= 578) && (mouseX <= 623))
      {
        if ((mouseY >= 549) && (mouseY <= 632))
        {
          if(has_cuttingtool == false){
              image(handoff_Text,49.25,844.75);
          }
          
          if (has_cuttingtool == true && has_fingerkey == false){
              image(handy_Text,49.25,844.75);
          }
        }
      }              
      
  // DEAD MAN TEXT DESCRIPTION (area1)
        if ((mouseX >= 301) && (mouseX <= 567))
      {
        if ((mouseY >= 430) && (mouseY <= 753))
        {
          image(deadman_Text,49.25,844.75);
        }
      }  
 
  // DEAD MAN TEXT DESCRIPTION (area2)
        if ((mouseX >= 395) && (mouseX <= 710))
      {
        if ((mouseY >= 292) && (mouseY <= 430))
        {
          image(deadman_Text,49.25,844.75);
        }
      }      

  // DEAD MAN TEXT DESCRIPTION (area3)
        if ((mouseX >= 544) && (mouseX <= 784))
      {
        if ((mouseY >= 137) && (mouseY <= 292))
        {
          image(deadman_Text,49.25,844.75);
        }
      }      
      
  // NOTES BUTTON
        if ((mouseX >= 926) && (mouseX <= 999))
      {
        if ((mouseY >= 331) && (mouseY <= 394))
        {
          image(officenote_Text,49.25,844.75);
          if (mousePressed == true){
            image(office_note,50,50);
          }
        }
      }      

}
