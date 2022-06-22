void Victory(){

  //Refresh & reload UI
    background(0);
    image(defaultScreen, 0, 0);
    image(glitch1,1499,770);
    image(victory_screen,50,50);
    image(victory_Text,49.25,844.75);

selection = 69;

 if (wait_Frames > 120) {
   wait_Frames = 0;
   }

   if (wait_Frames == 120){
      exit();
   }
   
   
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
}
