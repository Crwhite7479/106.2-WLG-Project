void Lower_Lab(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map  
    image (lower_lab, 50,50);
    image (mapLab2, 1499,770);
    
        if (infected == false){
      image(antidote_Text,49.25,844.75);
    }
    
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
    
    prev_Room = 8;
    been_Sprayed = true;
    
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

  // OFFICE DOOR ANIMATOR
        if ((mouseX >= 863) && (mouseX <= 984))
        {
        if ((mouseY >= 135) && (mouseY <= 419))
        {

            if(Office_Locked == false && mousePressed == true){
              image(lab2_office_open,50,50);
            }
        }
      }              
              
  // OFFICE DOOR TEXT DESCRIPTION
        if ((mouseX >= 863) && (mouseX <= 984))
        {
        if ((mouseY >= 135) && (mouseY <= 419))
        {
          if (Office_Locked == true){
          image(doorLocked_Text,49.25,844.75);
          }
        }
      }   

  // OFFICE DOOR KEYPAD TEXT DESCRIPTION
        if ((mouseX >= 791) && (mouseX <= 840))
        {
        if ((mouseY >= 156) && (mouseY <= 215))
        {
          if (Office_Locked == true){
          image(cardscanner_Text,49.25,844.75);
          }
        }
      } 
      
  // BROKEN JARS TEXT DESCRIPTION
        if ((mouseX >= 714) && (mouseX <= 843) || (mouseX >= 913) && (mouseX <= 1102))
        {
        if ((mouseY >= 327) && (mouseY <= 676) || (mouseY >= 410) && (mouseY <= 703))
        {
          image(brokenjars_Text,49.25,844.75);
        }
      } 

  // BLOCKED DOOR TEXT DESCRIPTION
        if ((mouseX >= 1194) && (mouseX <= 1362))
        {
        if ((mouseY >= 158) && (mouseY <= 518))
        {
          image(lowerlab_blockeddoor_Text,49.25,844.75);          
        }
      }
      
  // ANTIDOTE CABINET TEXT DESCRIPTION
        if ((mouseX >= 251) && (mouseX <= 383))
        {
        if ((mouseY >= 110) && (mouseY <= 266))
        {
          if(infected == true){
          image(antidotecab_Text,49.25,844.75);    
          }
        }
      }      
 
  // HAND SCANNER TEXT DESCRIPTION
        if ((mouseX >= 430) && (mouseX <= 492))
        {
        if ((mouseY >= 136) && (mouseY <= 205))
        {         
          image(handscanner_Text,49.75,844.75);         
        }        
      }      

}
