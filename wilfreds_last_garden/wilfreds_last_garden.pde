import processing.sound.SoundFile;
// IMAGES TO LOAD:

// The main UI image:
PImage defaultScreen;

// The different maps:
PImage mapHallway1, mapHallway2, mapBedroom, mapKitchen, mapStorage, mapBathroom, mapLab1, mapCleanRoom, mapLab2, mapOffice, glitch1, glitch2, glitch3, mapBasementStairs;

// Menus:
PImage menuBackground, mainMenuImage, loadGameSlots, saveGameSlots, menuOptions, quitMenuImage;

// Rooms:
PImage shed, hallway1, hallway2, bedroom, kitchen, storage, bathroom, upper_lab, lower_lab, office, basement_stairs;

// Inventory items:
PImage handKeyIcon, keyIcon, blueKeyCardIcon, pinkKeyCardIcon, pliersIcon;

// Button images:
PImage exitroom_disabled, exitroom_norm, exitroom_mo, exitroom_clicked, menu_norm, menu_mo, menu_clicked, back_norm, back_mo, back_clicked, quitbutton_norm, quitbutton_mo, quitbutton_clicked;
PImage yesbutton_norm, yesbutton_mo, yesbutton_clicked, nobutton_norm, nobutton_mo, nobutton_clicked, options_norm, options_mo, options_clicked, loadbutton_norm, loadbutton_mo, loadbutton_clicked;
PImage savebutton_norm, savebutton_mo, savebutton_clicked, slot1_disabled, slot2_disabled, slot3_disabled, slot1_enabled, slot2_enabled, slot3_enabled, slot1_mo, slot2_mo, slot3_mo, slot1_clicked;
PImage slot2_clicked, slot3_clicked;

//Inventory images:
PImage blue_keycard, red_keycard, storage_key, cutting_tool, finger_key;

//Inventory variables:
boolean has_bluecard = false;
boolean has_redcard = false;
boolean has_storagekey = false;
boolean has_fingerkey = false;
boolean has_cuttingtool = false;

// Previous Room Memory
int prev_Room = 0;

// Interaction Selection
int selection = 0;

// Frames variable
int current_Frame = 0;

// GAME AUDIO IMPORT
import processing.sound.*;
SoundFile music;
String audioName = "ES_The Silent Killer.mp3";
String path;

// SET UP THE GAME:

void setup()
{
  size(1920, 1080);
  background(0);
  frameRate(60);
  
// GAME AUDIO
  path = sketchPath(audioName);
  music = new SoundFile(this, path);
  music.loop();
  
// LOAD THE IMAGES:
  
// The default screen:
  defaultScreen = loadImage("defaultScreen.PNG");
  
//Buttons:
    //Exit Room Button:
        exitroom_disabled = loadImage("exitroom_disabled.png");
        exitroom_norm = loadImage("exitroom_norm.png");
        exitroom_mo = loadImage("exitroom_mo.png");
        exitroom_clicked = loadImage("exitroom_clicked.png");
        
    //Back Button:
        back_norm = loadImage("back_norm.png");
        back_mo = loadImage("back_mo.png");
        back_clicked = loadImage("back_clicked.png");   
    
    //Menu Button:
        menu_norm = loadImage("menu_norm.png");
        menu_mo = loadImage("menu_mo.png");
        menu_clicked = loadImage("menu_clicked.png");    
        
    //Quit Button:
        quitbutton_norm = loadImage("quitbutton_norm.png");
        quitbutton_mo = loadImage("quitbutton_mo.png");
        quitbutton_clicked = loadImage("quitbutton_clicked.png");      
        
    //Yes button:
        yesbutton_norm = loadImage("yesbutton_norm.png");
        yesbutton_mo = loadImage("yesbutton_mo.png");
        yesbutton_clicked = loadImage("yesbutton_clicked.png");     
        
    //No button:
        nobutton_norm = loadImage("nobutton_norm.png");
        nobutton_mo = loadImage("nobutton_mo.png");
        nobutton_clicked = loadImage("nobutton_clicked.png");    
        
    //Slot1,2,3 buttons:
        slot1_disabled = loadImage("slot1_disabled_line.png");
        slot1_enabled = loadImage("slot1_enabled.png");
        slot1_mo = loadImage("slot1_mo.png");
        slot1_clicked = loadImage("slot1_clicked.png");
        
        slot2_disabled = loadImage("slot2_disabled_line.png");
        slot2_enabled = loadImage("slot2_enabled.png");
        slot2_mo = loadImage("slot2_mo.png");
        slot2_clicked = loadImage("slot2_clicked.png"); 
        
        slot3_disabled = loadImage("slot3_disabled_line.png");
        slot3_enabled = loadImage("slot3_enabled.png");
        slot3_mo = loadImage("slot3_mo.png");
        slot3_clicked = loadImage("slot3_clicked.png"); 
        
    //Save button:
        savebutton_norm = loadImage("savebutton_norm.png");
        savebutton_mo = loadImage("savebutton_mo.png");
        savebutton_clicked = loadImage("savebutton_clicked.png");    
        
    //Load button:
        loadbutton_norm = loadImage("load_norm.png");
        loadbutton_mo = loadImage("load_mo.png");
        loadbutton_clicked = loadImage("load_clicked.png");  
        
    //Options button:
        options_norm = loadImage("optionsbutton_norm.png");
        options_mo = loadImage("optionsbutton_mo.png");
        options_clicked = loadImage("optionsbutton_clicked.png");  
        
//Inventory Items:
  blue_keycard = loadImage("blueKeyCardIcon.png");
  red_keycard = loadImage("pinkKeyCardIcon.png");
  storage_key = loadImage("keyIcon.PNG");
  finger_key = loadImage("handKeyIcon.PNG");
  cutting_tool = loadImage("pliersIcon.PNG");
  
// Maps:
  mapHallway1 = loadImage("mapHallway1.png");
  mapHallway2 = loadImage("mapHallway2.png");
  mapBedroom = loadImage("mapBedroom.png");
  mapKitchen = loadImage("mapKitchen.png");
  mapStorage = loadImage("mapStorage.png");
  mapBathroom = loadImage("mapBathroom.png");
  mapLab1 = loadImage("mapLab1.png");
  mapCleanRoom = loadImage("mapCleanRoom.png");
  mapLab2 = loadImage("mapLab2.png");
  mapOffice = loadImage("mapOffice.png");
  mapBasementStairs = loadImage("mapBasementStairs.png");
  glitch1 = loadImage("glitch1.jpg");
  glitch2 = loadImage("glitch2.jpg");
  glitch3 = loadImage("glitch3.jpg");
  
// Menus:
  menuBackground = loadImage("vines.jpg");
  mainMenuImage = loadImage("mainMenuImage.PNG");
  loadGameSlots = loadImage("loadGameSlots.PNG");
  saveGameSlots = loadImage("saveGameSlots.PNG");
  menuOptions = loadImage("menuOptions.PNG");
  quitMenuImage = loadImage("quitMenuImage.PNG");
  
// Rooms:
  shed = loadImage("shed.png");
  hallway1 = loadImage("hallway1.png");
  hallway2 = loadImage("hallway2.png");
  bedroom = loadImage("bedroom.PNG");
  kitchen = loadImage("kitchen.png");
  storage = loadImage("storage.png");
  bathroom = loadImage("bathroom.png");
  upper_lab = loadImage("Lab1.png");
  lower_lab = loadImage("Lab2_Temp.png");
  office = loadImage("Office.png");
  basement_stairs = loadImage("BasementStairs.png");
  
// Inventory:
  handKeyIcon = loadImage("handKeyIcon.PNG");
  keyIcon = loadImage("keyIcon.PNG");
  blueKeyCardIcon = loadImage("blueKeyCardIcon.png");
  pinkKeyCardIcon = loadImage("pinkKeyCardIcon.png");
  pliersIcon = loadImage("pliersIcon.PNG");
  
// START WITH THE DEFAULT BACKGROUND:
  image(defaultScreen, 0, 0);
}

// START GAME:
void draw()
{
  if (selection == 0){
    Shed_Entrance();
  }

else if (selection == 1){
  Hallway1();
  }
  
else if (selection == 2){
  Hallway2();
  }

else if (selection == 3){
  Bedroom();
  }
  
else if (selection == 4){
  Kitchen();
  }
  
else if (selection == 5){
  Storage();
  }
  
else if (selection == 6){
  Bathroom();
  }
  
else if (selection == 7){
  Upper_Lab();
  }
  
else if (selection == 8){
  Lower_Lab();
  }
  
else if(selection == 9){
  Office();
  }
  
else if (selection == 10){
  Basement_Stairs();
  }
  
else if (selection == 73){
  Quit_Menu();
  }
  
else if (selection == 96){
  Options_Menu();
  }
  
else if (selection == 97){
  Load_Menu();
  }
  
else if (selection == 98){
  Save_Menu();
  }

else if (selection == 99){
  Pause_Menu();
  }
  
//  FRAME COUNTER
  current_Frame += 1;
}

void mouseClicked(){  
// INTRO SHED INTERACTIONS
  if (selection == 0){
  
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
  
  // SHED DOOR INTERACTION
      if ((mouseX >= 574) && (mouseX <= 835))
      {
        if ((mouseY >= 194) && (mouseY <= 658))
        {
          selection = 1;
          Hallway1();
        }
      }
  }
  
// HALLWAY 1 INTERACTIONS     
  else if(selection == 1){
// LEAVE ROOM BUTTON                                (disabled until endgame)
//        if ((mouseX >= 581) && (mouseX <= 937))
//        {
//        if ((mouseY >= 777) && (mouseY <= 838))
//        {
//          
//        }
//      }
  
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // STORAGE DOOR INTERACTION
      if ((mouseX >= 549) && (mouseX <= 658))
      {
        if ((mouseY >= 276) && (mouseY <= 497))
        {
          selection = 5;
          Storage();
        }
      }

  // KITCHEN DOOR INTERACTION
      if ((mouseX >= 359) && (mouseX <= 461))
      {
        if ((mouseY >= 236) && (mouseY <= 563))
        {
          selection = 4;
          Kitchen();
        }
      }

  // BEDROOM DOOR INTERACTION
      if ((mouseX >= 68) && (mouseX <= 291))
      {
        if ((mouseY >= 128) && (mouseY <= 749))
        {
          selection = 3;
          Bedroom();
        }
      }

  // HALLWAY 2 ENTRY
      if ((mouseX >= 684) && (mouseX <= 746))
      {
        if ((mouseY >= 211) && (mouseY <= 540))
        {
          selection = 2;
          Hallway2();
        }
      }
}

//  HALLWAY 2 INTERACTIONS
else if(selection == 2){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 1;
          Hallway1();
        }
      }
  
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // BATHROOM DOOR INTERACTION
      if ((mouseX >= 246) && (mouseX <= 465))
      {
        if ((mouseY >= 195) && (mouseY <= 738))
        {
          selection = 6;
          Bathroom();
        }
      }
      
  //  UPPER LAB DOOR INTERACTIONS
      if ((mouseX >= 1014) && (mouseX <= 1262))
      {
        if ((mouseY >= 79) && (mouseY <= 701))
        {
          selection = 7;
          Upper_Lab();
        }
      }

}

//  BEDROOM INTERACTIONS
else if(selection == 3){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 1;
          Hallway1();
        }
      }
  
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
     
  // Found blue_key interaction
        if ((mouseX >= 425) && (mouseX <= 465))
      {
        if ((mouseY >= 587) && (mouseY <= 613))
        {
          has_bluecard = true;
          //image(,,);
        }
      } 

  // Journals interaction
        if ((mouseX >= 693) && (mouseX <= 856))
      {
        if ((mouseY >= 447) && (mouseY <= 650))
        {
          // image(,,);
        }
      }       
 
  // Backpack interaction
        if ((mouseX >= 93) && (mouseX <= 286))
      {
        if ((mouseY >= 441) && (mouseY <= 608))
        {
          // image(,,);
        }
      }  
 
  // Couch interaction
        if ((mouseX >= 951) && (mouseX <= 1451))
      {
        if ((mouseY >= 150) && (mouseY <= 516))
        {
          // image(,,);
        }
      }        
      
}

// KITCHEN ROOM INTERACTIONS
else if (selection == 4){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 1;
          Hallway1();
        }
      }
 
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // FRIDGE INTERACTION
        if ((mouseX >= 641.21) && (mouseX <= 862.21))
      {
        if ((mouseY >= 83.13) && (mouseY <= 433.13))
        {
          has_storagekey = true;
          //image(,,);                    
        }
      }      

  // DINING TABLE INTERACTION
        if ((mouseX >= 983) && (mouseX <= 1476))
      {
        if ((mouseY >= 318) && (mouseY <= 619))
        {
          //image(,,);
        }
      }

  // STOVE INTERACTION
        if ((mouseX >= 94) && (mouseX <= 392))
      {
        if ((mouseY >= 256) && (mouseY <= 665))
        {
          //image(,,);
        }
      }      
      
}

// STORAGE ROOM INTERACTIONS
else if (selection == 5){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 1;
          Hallway1();
        }
      }

  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // RED KEYCARD INTERACTION
        if ((mouseX >= 928.57) && (mouseX <= 967.57))
      {
        if ((mouseY >= 609.3) && (mouseY <= 658.3))
        {
          has_redcard = true;
          //image(,,);
        }
      }

  // DUCT TAPE INTERACTION
        if ((mouseX >= 882) && (mouseX <= 962))
      {
        if ((mouseY >= 309) && (mouseY <= 361))
        {
          //image(,,);
        }
      }      
 
  // BOOKS INTERACTION
        if ((mouseX >= 1195) && (mouseX <= 1411))
      {
        if ((mouseY >= 291) && (mouseY <= 458))
        {
          //image(,,);
        }
      }       

  // SHOEBOX INTERACTION
        if ((mouseX >= 808) && (mouseX <= 939))
      {
        if ((mouseY >= 682) && (mouseY <= 761))
        {
          //image(,,);
        }
      }       

  // FURNITURE PILE INTERACTION
        if ((mouseX >= 55) && (mouseX <= 693))
      {
        if ((mouseY >= 55) && (mouseY <= 766))
        {
          //image(,,);
        }
      }      
      
}

// BATHROOM INTERACTIONS
else if (selection == 6){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 2;
          Hallway2();
        }
      }

  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // TOILET INTERACTION
        if ((mouseX >= 633) && (mouseX <= 849))
      {
        if ((mouseY >= 253) && (mouseY <= 618))
        {
          has_cuttingtool = true;
          //image(,,);
        }
      }
      
  // SINK INTERACTION
        if ((mouseX >= 994) && (mouseX <= 1284))
      {
        if ((mouseY >= 66) && (mouseY <= 502))
        {
          //image(,,);
        }
      }      
      
  // BATHTUB INTERACTION
        if ((mouseX >= 119) && (mouseX <= 574))
      {
        if ((mouseY >= 469) && (mouseY <= 767))
        {
          //image(,,);
        }
      }
      
}

// UPPER LAB INTERACTIONS
else if(selection == 7){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 2;
          Hallway2();
        }
      }
      
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  //  SECRET CABINET DOOR INTERACTION
        if ((mouseX >= 769) && (mouseX <= 945))
      {
        if ((mouseY >= 57) && (mouseY <= 452))
        {
           selection = 10;
           Basement_Stairs();
        }
      }

  // DOCUMENTS INTERACTIONS
        if ((mouseX >= 489) && (mouseX <= 614))
      {
        if ((mouseY >= 281) && (mouseY <= 349))
        {
          //image(,,);
        }
      }      

  // POST-BOARD INTERACTIONS
        if ((mouseX >= 167) && (mouseX <= 313))
      {
        if ((mouseY >= 102) && (mouseY <= 206))
        {
          //image(,,);
        }
      }         
 
  // LAB PC INTERACTIONS
        if ((mouseX >= 987) && (mouseX <= 1138))
      {
        if ((mouseY >= 367) && (mouseY <= 598))
        {
          //image(,,);
        }
      }      
      
}

//  LOWER LAB INTERACTIONS
else if(selection == 8){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 7;
          Upper_Lab();
        }
      }
      
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }   
      
  // OFFICE DOOR INTERACTION
        if ((mouseX >= 863) && (mouseX <= 984))
        {
        if ((mouseY >= 135) && (mouseY <= 419))
        {
          selection = 9;
          Office();
        }
      }   
      
      
}

//  OFFICE INTERACTIONS
else if(selection == 9){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 8;
          Lower_Lab();
        }
      }
      
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }   
      
  // HAND REMOVAL FOR KEY
        if ((mouseX >= 578) && (mouseX <= 1778))
      {
        if ((mouseY >= 549) && (mouseY <= 630))
        {
          if (has_cuttingtool == true){
          has_fingerkey = true;
          }
          
     //     else {
          
          
     //     }
   
        }
      }
      
  // DEAD MAN INTERACTIONS
        if ((mouseX >= 292) && (mouseX <= 560) || (mouseX >= 514) && (mouseX <= 775) )
      {
        if ((mouseY >= 410) && (mouseY <= 744) || (mouseY >= 128) && (mouseY <= 471))
        {
          //image(,,);
        }
      }  
      
  // NOTES BUTTON
        if ((mouseX >= 926) && (mouseX <= 999))
      {
        if ((mouseY >= 331) && (mouseY <= 394))
        {
          //image(,,);
        }
      }      
  
}

// BASEMENT STAIRS INTERACTIONS
else if (selection == 10){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          selection = 7;
          Upper_Lab();
        }
      }
      
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }  
      
  // KEYPAD INTERATION
        if ((mouseX >= 201) && (mouseX <= 260))
      {
        if ((mouseY >= 231) && (mouseY <= 429))
        {
                if(has_bluecard == true){
          selection = 8;
          Lower_Lab();
          }
          
          else {
          //image(,,);
          }
        }
      }      
      
}

//  QUIT GAME MENU INTERACTIONS
else if (selection == 73){
  //  GO BACK BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
  // YES BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 350) && (mouseY <= 428))
        {
          exit();
        }
      }
      
  // NO BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 459) && (mouseY <= 537))
        {
          selection = 99;
          Pause_Menu();
        }
      }   
}

//  OPTIONS MENU INTERACTIONS
else if (selection == 96){
  //  GO BACK BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }

}

// LOAD MENU INTERACTIONS
else if (selection == 97){
  //  GO BACK BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }

}

//  SAVE MENU INTERACTIONS
else if (selection == 98){
  //  GO BACK BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
        }
      }
      
}

// PAUSE MENU INTERACTIONS
else if (selection == 99){
  // GO BACK BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          // RETURN TO PREVIOUS ROOM PROCESS
          if (prev_Room == 0){
          selection = 0;
          Shed_Entrance();
          }
          
          else if (prev_Room == 1){
          selection = 1;
          Hallway1();
          }

          else if (prev_Room == 2){
          selection = 2;
          Hallway2();
          }  
          
          else if (prev_Room == 3){
          selection = 3;
          Bedroom();
          }
          
          else if (prev_Room == 4){
          selection = 4;
          Kitchen();
          }
          
          else if (prev_Room == 5){
          selection = 5;
          Storage();
          }  
          
          else if (prev_Room == 6){
          selection = 6;
          Bathroom();
          } 
          
          else if (prev_Room == 7){
          selection = 7;
          Upper_Lab();
          } 
          
          else if (prev_Room == 8){
          selection = 8;
          Lower_Lab();
          }
          
          else if (prev_Room == 9){
          selection = 9;
          Office();
          } 
          
          else if (prev_Room == 10){
          selection = 10;
          Basement_Stairs();
          } 
        }
      }
      
  // QUIT BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 536) && (mouseY <= 614))
        {
          selection = 73;
          Quit_Menu();
        }
      }
      
  // OPTIONS BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 426) && (mouseY <= 504))
        {
          selection = 96;
          Options_Menu();
        }
      }
      
  // SAVE GAME BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 321) && (mouseY <= 399))
        {
          selection = 98;
          Save_Menu();
        }
      }

  // LOAD GAME BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 214) && (mouseY <= 292))
        {
          selection = 97;
          Load_Menu();
        }
      }
}

};
