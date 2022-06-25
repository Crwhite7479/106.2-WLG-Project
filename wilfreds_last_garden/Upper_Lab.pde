void Upper_Lab(){
  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    
//Room & map
    image (upper_lab, 50,50);
    image (mapLab1, 1499,770);

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
    
    prev_Room = 7;
    
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
              
  //  SECRET CABINET DOOR OPEN ANIMATION
        if ((mouseX >= 713) && (mouseX <= 903))
      {
        if ((mouseY >= 66) && (mouseY <= 479))
        {
          image(Lcupboard_Text,49.25,844.75);
           if (mousePressed == true){
             image(H2_cupboard_open,50,50);
           }
        }
      }
      
  // DOCUMENTS INTERACTIONS
        if ((mouseX >= 489) && (mouseX <= 614))
      {
        if ((mouseY >= 281) && (mouseY <= 349))
        {
          image(notefound_Text,49.25,844.75);
          if (mousePressed == true){
            image(upperlab_note,50,50);
          }
        }
      }      

  // POST-BOARD INTERACTIONS
        if ((mouseX >= 167) && (mouseX <= 313))
      {
        if ((mouseY >= 102) && (mouseY <= 206))
        {
          image(noticeboard_Text,49.25,844.75);
            if (mousePressed == true){
            image(lab_noticeboard,50,50);
          }
        }
      }         
 
  // LAB PC INTERACTIONS
        if ((mouseX >= 987) && (mouseX <= 1138))
      {
        if ((mouseY >= 367) && (mouseY <= 598))
        {
          image(labComp_Text,49.25,844.75);
        }
      }      

}
