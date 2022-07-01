import processing.sound.SoundFile;

// SAVING & LOADING STUFF

// Global variable for the writer:
PrintWriter output;

// Global variable for the reader:
BufferedReader reader;

// Are the save slot files accessible? True by default. 
// Will be checked during reading.
boolean slot1FilePresent = true;
boolean slot2FilePresent = true;
boolean slot3FilePresent = true;

// Which slots are filled?
boolean slot1Filled;
boolean slot2Filled;
boolean slot3Filled;

// Create a class:
class Slots
{
  public
  // Attributes:
  boolean hasBlueCard;
  boolean hasRedCard;
  boolean hasStorageKey;
  boolean hasFingerKey;
  boolean hasCuttingTool;
  boolean isInfected;
  boolean beenSprayed;
  boolean lowerLabLocked;
  boolean storageRoomLocked;
  boolean officeLocked;
  boolean antidoteCabinetLocked;
  int Selection;
  int previousRoom;
  int slotNumber;
  
  // Two constructors, one default and one with parameters:
  Slots()
  {
    
  }
  
  Slots(boolean blue, boolean red, boolean storage, boolean finger, boolean tool,
  boolean infected, boolean sprayed, boolean lowerLab, boolean storageRoom,
  boolean office, boolean antidoteCabinet, int selectionRoom, int prevRoom,
  int slot)
  {
    hasBlueCard = blue;
    hasRedCard = red;
    hasStorageKey = storage;
    hasFingerKey = finger;
    hasCuttingTool = tool;
    isInfected = infected;
    beenSprayed = sprayed;
    lowerLabLocked = lowerLab;
    storageRoomLocked = storageRoom;
    officeLocked = office;
    antidoteCabinetLocked = antidoteCabinet;
    Selection = selectionRoom;
    previousRoom = prevRoom;
    slotNumber = slot;
  }
  

  void readFile()
  {
    // Attempt to open the slot:
    if (slotNumber == 1)
    {
      reader = createReader("slot1.txt");
    }
    else if (slotNumber == 2)
    {
      reader = createReader("slot2.txt");
    }
    else if (slotNumber == 3)
    {
      reader = createReader("slot3.txt");
    }
    else
    {
      println("Error! slotNumber has been assigned an invalid value in the slots class.");
    }
    
    String line = null;
    try {
      while ((line = reader.readLine()) != null) {
        String[] pieces = split(line, TAB);
      
        // Reading data for the blue card:
        if (pieces[0].equals("true"))
        {
          
          has_bluecard = true;
        }
        else if (pieces[0].equals("false"))
        {
          
          has_bluecard = false;
        }
        else
        {
          println("Error! hasBlueCard is invalid.");
        }
      
        // Reading data for the red card:
        if (pieces[1].equals("true"))
        {
          
          has_redcard = true;
        }
        else if (pieces[1].equals("false"))
        {
          
          has_redcard = false;
        }
        else
        {
          println("Error! hasRedCard is invalid.");
        }
      
        // Reading data for storage key:
        if (pieces[2].equals("true"))
        {
          
          has_storagekey = true;
        }
        else if (pieces[2].equals("false"))
        {
          
          has_storagekey = false;
        }
        else
        {
          println("Error! hasStorageKey is invalid.");
        }
      
        // Reading data for finger key:
        if (pieces[3].equals("true"))
        {
          
          has_fingerkey = true;
        }
        else if (pieces[3].equals("false"))
        {
          
          has_fingerkey = false;
        }
        else
        {
          println("Error! hasFingerKey is invalid.");
        }
      
        // Checking data for cutting tool:
        if (pieces[4].equals("true"))
        {
          
          has_cuttingtool = true;
        }
        else if (pieces[4].equals("false"))
        {
          
          has_cuttingtool = false;
        }
        else
        {
          println("Error! hasCuttingTool is invalid.");
        }
      
        // Reading data for infection:
        if (pieces[5].equals("true"))
        {
          
          infected = true;
        }
        else if (pieces[5].equals("false"))
        {
          
          infected = false;
        }
        else
        {
          println("Error! isInfected is invalid.");
        }
      
        // Read data on whether the user has been sprayed:
        if (pieces[6].equals("true"))
        {
          
          been_Sprayed = true;
        }
        else if (pieces[6].equals("false"))
        {
          
          been_Sprayed = false;
        }
        else
        {
          println("Error! beenSprayed is invalid.");
        }
      
        // Checking data for the lower lab doors:
        if (pieces[7].equals("true"))
        {
          
          LowerLab_Locked = true;
        }
        else if (pieces[7].equals("false"))
        {
          
          LowerLab_Locked = false;
        }
        else
        {
          println("Error! lowerLabLocked is invalid.");
        }
      
        // Checking data for storage room door:
        if (pieces[8].equals("true"))
        {
          
          Storage_Locked = true;
        }
        else if (pieces[8].equals("false"))
        {
          
          Storage_Locked = false;
        }
        else
        {
          println("Error! storageRoomLocked is invalid.");
        }
      
        // Checking data for the office door:
        if (pieces[9].equals("true"))
        {
          
          Office_Locked = true;
        }
        else if (pieces[9].equals("false"))
        {
          
          Office_Locked = false;
        }
        else
        {
          println("Error! officeLocked is invalid.");
        }
      
        // Checking data on the antidote cabinet:
        if (pieces[10].equals("true"))
        {
          
          Antidote_cabLocked = true;
        }
        else if (pieces[10].equals("false"))
        {
          
          Antidote_cabLocked = false;
        }
        else
        {
          println("Error! antidoteCabinet is invalid.");
        }
      
        // Checking data for which room the user is currently in:
        switch(int(pieces[11]))
        {
          case 0:
          println("The user is at the shed door.");
          selection = 0;
          break;
        
          case 1:
          println("The user is in hallway 1.");
          selection = 1;
          break;
        
          case 2:
          println("The user is in hallway 2.");
          selection = 2;
          break;
        
          case 3:
          println("The user is in the bedroom.");
          selection = 3;
          break;
        
          case 4:
          println("The user is in the kitchen.");
          selection = 4;
          break;
        
          case 5:
          println("The user is in the storage room.");
          selection = 5;
          break;
        
          case 6:
          println("The user is in the bathroom.");
          selection = 6;
          break;
        
          case 7:
          println("The user is in the upstairs lab.");
          selection = 7;
          break;
        
          case 8:
          println("The user is in the downstairs lab.");
          selection = 8;
          break;
        
          case 9:
          println("The user is in the office.");
          selection = 9;
          break;
        
          case 10:
          println("The user is in the secret stairwell.");
          selection = 10;
          break;
        
          case 11:
          println("The user is in the cleaning room.");
          selection = 11;
          break;
        
          case 12:
          println("The user is on the entry stairs.");
          selection = 12;
          break;
        }
      
        // Checking data for what the previous room was (for menu usage):
        switch(int(pieces[12]))
        {
          case 0:
          println("The previous room was outside the shed door.");
          selection = 0;
          break;
        
          case 1:
          println("The previous room was hallway 1.");
          selection = 1;
          break;
        
          case 2:
          println("The previous room was hallway 2.");
          selection = 2;
          break;
        
          case 3:
          println("The previous room was the bedroom.");
          selection = 3;
          break;
        
          case 4:
          println("The previous room was the kitchen.");
          selection = 4;
          break;
        
          case 5:
          println("The previous room was the storage room.");
          selection = 5;
          break;
        
          case 6:
          println("The previous room was the bathroom.");
          selection = 6;
          break;
        
          case 7:
          println("The previous room was the upstairs lab.");
          selection = 7;
          break;
        
          case 8:
          println("The previous room was the downstairs lab.");
          selection = 8;
          break;
        
          case 9:
          println("The previous room was the office.");
          selection = 9;
          break;
        
          case 10:
          println("The previous room was the secret stairwell.");
          selection = 10;
          break;
        
          case 11:
          println("The previous room was the cleaning room.");
          selection = 11;
          break;
        
          case 12:
          println("The previous room was the entry stairs.");
          selection = 12;
          break;
        }
      }
      reader.close();
    } catch (IOException e) {
      slot1FilePresent = false;
      println("There is file for slot 1.");
      e.printStackTrace();
    }
  }
  
  // For saving...
  void writeFile()
  {
    // Create or overwrite a save file:
    if (slotNumber == 1)
    {
      output = createWriter("slot1.txt");
    }
    else if (slotNumber == 2)
    {
      output = createWriter("slot2.txt");
    }
    else if (slotNumber == 3)
    {
      output = createWriter("slot3.txt");
    }
    else
    {
      println("Error! slotNumber has been assigned an invalid value in the slots class.");
    }
    
    // Fill this file with the game data, each item separated by a tab:
    output.println(hasBlueCard + "\t" + hasRedCard + "\t" + hasStorageKey + "\t" +
    hasFingerKey + "\t" + hasCuttingTool + "\t" + isInfected + "\t" + beenSprayed +
    "\t" + lowerLabLocked + "\t" + storageRoomLocked + "\t" + officeLocked + "\t" +
    antidoteCabinetLocked + "\t" + selection + "\t" + previousRoom);
  
    // Writes the remaining data to the file:
    output.flush();
  
    // Closes the file:
    output.close();
  }
}

// Declaring Objects Needed:
Slots slot1;
Slots slot2;
Slots slot3;


// IMAGES TO LOAD:

// The main UI image:
PImage defaultScreen;

// The different maps:
PImage mapHallway1, mapHallway2, mapBedroom, mapKitchen, mapStorage, mapBathroom, mapLab1, mapCleanRoom, mapLab2, mapOffice, glitch1, glitch2, glitch3, mapBasementStairs;

// Menus:
PImage menuBackground, mainMenuImage, loadGameSlots, saveGameSlots, menuOptions, quitMenuImage, checkbox_empty, checkbox_tick;

// Rooms:
PImage shed, hallway1, hallway2, bedroom, bedroom_nocard, kitchen, storage, storage_nocard, bathroom, upper_lab, lower_lab, office, office_nohand, basement_stairs, stairwell1, clean_room, entry_stairs, victory_screen;

// Rooms with doors open:
PImage H1_storage_open, H1_kitchen_open, H1_bedroom_open, H2_bathroom_open, H2_cupboard_open, lab2_office_open, basementstairs_door_open;

//Spray room screens:
PImage spray1, spray2, spray3;

// Readable Notes:
PImage upperlab_note, office_note, bedroom_note, lab_noticeboard;

// Inventory items:
PImage handKeyIcon, keyIcon, blueKeyCardIcon, pinkKeyCardIcon, pliersIcon;

// Button images:
PImage exitroom_disabled, exitroom_norm, exitroom_mo, exitroom_clicked, menu_norm, menu_mo, menu_clicked, back_norm, back_mo, back_clicked, quitbutton_norm, quitbutton_mo, quitbutton_clicked;
PImage yesbutton_norm, yesbutton_mo, yesbutton_clicked, nobutton_norm, nobutton_mo, nobutton_clicked, options_norm, options_mo, options_clicked, loadbutton_norm, loadbutton_mo, loadbutton_clicked;
PImage savebutton_norm, savebutton_mo, savebutton_clicked, slot1_disabled, slot2_disabled, slot3_disabled, slot1_enabled, slot2_enabled, slot3_enabled, slot1_mo, slot2_mo, slot3_mo, slot1_clicked;
PImage slot2_clicked, slot3_clicked;

// Description box text:
PImage intro_Text, doorLocked_Text, kitchenSpiders_Text, antidote_Text, labComp_Text, victory_Text, sink_Text, bathtub_Text, toilet1_Text, toilet2_Text, cardscanner_Text, cleaningdoorLocked_Text;
PImage lowerlab_blockeddoor_Text, handscanner_Text, brokenjars_Text, spray_Text, antidotecab_Text, notefound_Text, noticeboard_Text, redcard_Text, bluecard_Text, novels_Text, ducttape_Text, shoebox_Text;
PImage genfurniture_Text, journals_Text, couch_Text, fridgesmell_Text, fridgekey_Text, table_Text, officenote_Text, deadman_Text, handy_Text, handoff_Text, Lcupboard_Text, stove_Text, toiletmo_Text;

PImage text_PH1, text_PH2, text_PH3, text_PH4, text_PH5;          //textbox placeholders

//Inventory images:
PImage blue_keycard, red_keycard, storage_key, cutting_tool, finger_key;

//Inventory variables:
boolean has_bluecard = false;
boolean has_redcard = false;
boolean has_storagekey = false;
boolean has_fingerkey = false;
boolean has_cuttingtool = false;

//Door Locking variables:
boolean LowerLab_Locked = true;
boolean Storage_Locked = true;
boolean Office_Locked = true;
boolean Antidote_cabLocked = true;

//Victory conditon:
boolean infected = true;              

//Has Been Sprayed checker:
boolean been_Sprayed = false;

// Previous Room Memory:
int prev_Room = 0;

// Interaction Selection:
int selection = 0;

// Frame counting variables:
int current_Frame = 0;
int wait_Frames = 0;

// GAME AUDIO IMPORT
import processing.sound.*;

// Background music:
SoundFile music;

// Door sound effect:
SoundFile door_effect;

//Spray sound effect:
SoundFile spray_effect;

// Music playing variable:
boolean music_playing = true;

// SET UP THE GAME:

void setup()
{
  fullScreen();
  size(1920, 1080);
  background(0);
  frameRate(60);
  
  // Define slots:
  slot1 = new Slots();
  slot2 = new Slots();
  slot3 = new Slots();
 
// GAME AUDIO
  spray_effect = new SoundFile(this,"spray.mp3");
  door_effect = new SoundFile(this, "door_effect.wav");
  music = new SoundFile(this, "ES_The Silent Killer.mp3");
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
        
    //Checkbox:
        checkbox_empty = loadImage("Checkbox_empty.png");
        checkbox_tick = loadImage("Checkbox_tick.png");

//Text Descriptions:
  intro_Text = loadImage("Intro_text.png");
  doorLocked_Text = loadImage("DoorLocked_text.png");
  kitchenSpiders_Text = loadImage("kitchenSpiders_text.png");
  labComp_Text = loadImage("Labcomputer_Text.png");
  antidote_Text = loadImage("Antidote_Text.png");
  victory_Text = loadImage("Victory_Text.png");
  sink_Text = loadImage("Sink_Text.png");
  bathtub_Text = loadImage("Bathtub_Text.png");
  toiletmo_Text = loadImage("Toiletmo_Text.png");
  
      toilet1_Text = loadImage("Toilet1_Text.png");          //check for usage
      toilet2_Text = loadImage("Toilet2_Text.png");          //check for usage
  
  cardscanner_Text = loadImage("Scanner_Text.png");
  cleaningdoorLocked_Text = loadImage("CRdoorslocked_Text.png");
  lowerlab_blockeddoor_Text = loadImage("LowerLab_Blockeddoor_Text.png");
  handscanner_Text = loadImage("Handscanner_Text.png");
  brokenjars_Text = loadImage("Brokenjars_Text.png");
  spray_Text = loadImage("Spray_Text.png");
  antidotecab_Text = loadImage("Antidotecab_Text.png");
  notefound_Text = loadImage("Notefound_Text.png");
  noticeboard_Text = loadImage("Noticeboard_Text.png");
  redcard_Text = loadImage("Redcard_Text.png");
  bluecard_Text = loadImage("Bluecard_Text.png");
  novels_Text = loadImage("Novels_Text.png");
  shoebox_Text = loadImage("Shoebox_Text.png");
  genfurniture_Text = loadImage("GenFurniture_Text.png");
  ducttape_Text = loadImage("Ducttape_Text.png");
  journals_Text = loadImage("Journals_Text.png");
  couch_Text = loadImage("Couch_Text.png");
  fridgesmell_Text = loadImage("FridgeSmell_Text.png");
  table_Text = loadImage("Table_Text.png");
  fridgekey_Text = loadImage("Fridgekey_Text.png");
  officenote_Text = loadImage("OfficeNote_Text.png");
  deadman_Text = loadImage("Deadman_Text.png");
  handy_Text = loadImage("Handyhand_Text.png");
  handoff_Text = loadImage("Handoff_Text.png");
  Lcupboard_Text = loadImage("Largecupboard_Text.png");
  stove_Text = loadImage("Stove_Text.png");
  
  text_PH1 = loadImage("textholder1.png");            //check for usage
  text_PH2 = loadImage("textholder2.png");            //check for usage
  text_PH3 = loadImage("textholder3.png");            //check for usage
  text_PH4 = loadImage("textholder4.png");            //check for usage
  text_PH5 = loadImage("textholder5.png");            //check for usage
  
//Inventory Items:
  blue_keycard = loadImage("blueKeyCardIcon.png");
  red_keycard = loadImage("pinkKeyCardIcon.png");
  storage_key = loadImage("keyIcon.PNG");
  finger_key = loadImage("handKeyIcon.PNG");
  cutting_tool = loadImage("pliersIcon.PNG");

// Notes: 
  bedroom_note = loadImage("Bedroom_note.png");
  office_note = loadImage("Office_note.png");
  upperlab_note = loadImage("Upperlab_note.png");
  lab_noticeboard = loadImage("Lab_noticeboard.png");
  
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
  bedroom_nocard = loadImage("Bedroom_nocard.png");
  kitchen = loadImage("kitchen.png");
  storage = loadImage("storage.png");
  storage_nocard = loadImage("Storage_nocard.png");
  bathroom = loadImage("bathroom.png");
  upper_lab = loadImage("Lab1.png");
  lower_lab = loadImage("Lab2.png");
  office = loadImage("Office.png");
  office_nohand = loadImage("Office_nohand.png");
  basement_stairs = loadImage("BasementStairs.png");
  stairwell1 = loadImage("Stairwell1.jpg");
  clean_room = loadImage("cleaning_Room.png");
  spray1 = loadImage ("Spray1.png");
  spray2 = loadImage ("Spray2.png");
  spray3 = loadImage ("Spray3.png");
  entry_stairs = loadImage("Stairwell1.jpg");
  victory_screen = loadImage("VICTORY.png");
  
// Rooms with open doors:
  H1_storage_open = loadImage("H1_storagedoor_open.png");
  H1_kitchen_open = loadImage("H1_kitchendoor_open.png");
  H1_bedroom_open = loadImage("H1_bedroomdoor_open.png");
  H2_bathroom_open = loadImage("H2_bathroomdoor_open.png");
  H2_cupboard_open = loadImage("H2_labcupboard_open.png");
  lab2_office_open = loadImage("Lab2office_open.png");
  basementstairs_door_open = loadImage("BasementStairs_open.png");
  
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
  
else if (selection == 9){
  Office();
  }
  
else if (selection == 10){
  Basement_Stairs();
  }

else if (selection == 11){
  Clean_Room();
  }  

else if (selection == 12){
  Entry_Stairs();
  }

else if (selection == 69){
  Victory();
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
  
//  FRAME COUNTERS
  current_Frame += 1;
  wait_Frames += 1;
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
          wait_Frames = 0;
          selection = 12;
          Entry_Stairs();          
        }
      }
  }
  
// HALLWAY 1 INTERACTIONS     
  else if(selection == 1){
// LEAVE ROOM BUTTON                                (disabled until victory condition met)
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          if (infected == false){
          door_effect.play();
          wait_Frames = 0;          
          Victory();
          }
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
      
  // STORAGE DOOR INTERACTION
      if ((mouseX >= 549) && (mouseX <= 658))
      {
        if ((mouseY >= 276) && (mouseY <= 497))
        {
          wait_Frames = 0;
          
          if (has_storagekey == true){    
            door_effect.play();
            
            while (door_effect.isPlaying() == true){
              
              wait_Frames += 1;
              
                if (wait_Frames == 80){
                  selection = 5;
                  Storage();
                }            
            }            
          }
        }        
        
      }

  // KITCHEN DOOR INTERACTION
      if ((mouseX >= 359) && (mouseX <= 461))
      {
        if ((mouseY >= 236) && (mouseY <= 563))
        {          
          wait_Frames = 0;
          door_effect.play();
          
          while (door_effect.isPlaying() == true){
              wait_Frames += 1;
                if (wait_Frames == 80){
                  selection = 4;
                  Kitchen();
                }          
            }
        }
      }

  // BEDROOM DOOR INTERACTION
      if ((mouseX >= 68) && (mouseX <= 291))
      {
        if ((mouseY >= 128) && (mouseY <= 749))
        {          
          wait_Frames = 0;
          door_effect.play();
          
          while (door_effect.isPlaying() == true){
              wait_Frames += 1;
                if (door_effect.isPlaying() == false || wait_Frames == 80){
                  selection = 3;
                  Bedroom();
                }          
            }
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
          current_Frame = 0;
          wait_Frames = 0;
          door_effect.play();
          
          while (door_effect.isPlaying() == true){
              wait_Frames += 1;
                if (door_effect.isPlaying() == false || wait_Frames == 80){
                  selection = 6;
                  Bathroom();
                }          
            }
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
          door_effect.play();
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
          door_effect.play();
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
          door_effect.play();
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
          door_effect.play();
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
        if ((mouseX >= 713) && (mouseX <= 903))
      {
        if ((mouseY >= 66) && (mouseY <= 479))
        {
          wait_Frames = 0;
          door_effect.play();
          
          while (door_effect.isPlaying() == true){
              wait_Frames += 1;
                if (door_effect.isPlaying() == false || wait_Frames == 80){
                  selection = 10;
                  Basement_Stairs();
                }          
            }
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
          door_effect.play();
          selection = 10;
          Basement_Stairs();
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
          if (Office_Locked == false){
          door_effect.play();
          wait_Frames = 0;
          while (door_effect.isPlaying() == true){
              wait_Frames += 1;
                if (door_effect.isPlaying() == false || wait_Frames == 80){
                  selection = 9;
                  Office();
                }          
            }
          }
        }
      }   

  // OFFICE DOOR KEYPAD INTERACTION
        if ((mouseX >= 791) && (mouseX <= 840))
        {
        if ((mouseY >= 156) && (mouseY <= 215))
        {
          if(has_redcard == true){
          Office_Locked = false;
          }
        }
      } 
      
      
  // ANTIDOTE CABINET INTERACTION
        if ((mouseX >= 251) && (mouseX <= 383))
        {
        if ((mouseY >= 110) && (mouseY <= 266))
        {
          if (Antidote_cabLocked == false){
              infected = false;         
          }
          

        }
      }      
 
  // HAND SCANNER INTERACTION
        if ((mouseX >= 430) && (mouseX <= 492))
        {
        if ((mouseY >= 136) && (mouseY <= 205))
        {
          if (has_fingerkey == true){
            Antidote_cabLocked = false;
          }
         
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
          door_effect.play();
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
        if ((mouseX >= 578) && (mouseX <= 623))
      {
        if ((mouseY >= 549) && (mouseY <= 632))
        {
          if (has_cuttingtool == true){
          has_fingerkey = true;
          }
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
          door_effect.play();
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
      
  // KEYPAD INTERACTION
        if ((mouseX >= 201) && (mouseX <= 260))
      {
        if ((mouseY >= 231) && (mouseY <= 429))
        {
            if(has_bluecard == true){
            LowerLab_Locked = false;          
          }
        }
      }      
 
  // LOWER LAB DOOR INTERACTION
        if ((mouseX >= 328) && (mouseX <= 861))
      {
        if ((mouseY >= 52) && (mouseY <= 509))
        {
          wait_Frames = 0;
            if (LowerLab_Locked == false && been_Sprayed == false){
              spray_effect.play();
              door_effect.play();              
              selection = 11;
              Clean_Room();
            }
            
            else if (LowerLab_Locked == false && been_Sprayed == true){
              door_effect.play();              
              selection = 11;
              Clean_Room();
            
            }          
        }
      }      
      
}

// CLEAN ROOM INTERACTIONS
else if (selection == 11){
  // LEAVE ROOM BUTTON
        if ((mouseX >= 581) && (mouseX <= 937))
        {
        if ((mouseY >= 777) && (mouseY <= 838))
        {
          door_effect.play();
          selection = 10;
          Basement_Stairs();
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
      
}

// ENTRY STAIRS INTERACTIONS
else if (selection == 12){      
  // MENU BUTTON
        if ((mouseX >= 1530) && (mouseX <= 1838))
      {
        if ((mouseY >= 692) && (mouseY <= 756))
        {
          selection = 99;
          Pause_Menu();
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
      
  //  MUTE BUTTON
        if ((mouseX >= 979) && (mouseX <= 1022))
      {
        if ((mouseY >= 316) && (mouseY <= 365))
        {
          if (music_playing == true){
            music.stop();
            music_playing = false;
          }
          
          else if (music_playing == false){
            music.loop();
            music_playing = true;
          }
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
      
  // SLOT 1 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 321) && (mouseY <= 399))
        {
              slot1.slotNumber = 1;
              slot1.readFile();
          
        }
      }       

  // SLOT 2 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 421) && (mouseY <= 499))
        {
            slot2.slotNumber = 2;
            slot2.readFile();
          
        }
      }      

  // SLOT 3 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 521) && (mouseY <= 599))
        {
           slot3.slotNumber = 3;
           slot3.readFile();
          
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
 
  // SLOT 1 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 321) && (mouseY <= 399))
        {
            
  slot1.hasBlueCard = has_bluecard;
  slot1.hasRedCard = has_redcard;
  slot1.hasStorageKey = has_storagekey;
  slot1.hasFingerKey = has_fingerkey;
  slot1.hasCuttingTool = has_cuttingtool;
  slot1.isInfected = infected;
  slot1.beenSprayed = been_Sprayed;
  slot1.lowerLabLocked = LowerLab_Locked;
  slot1.storageRoomLocked = Storage_Locked;
  slot1.officeLocked = Office_Locked;
  slot1.antidoteCabinetLocked = Antidote_cabLocked;
  slot1.Selection = selection;
  slot1.previousRoom = prev_Room;
  slot1.slotNumber = 1;
  
            slot1.writeFile();
          
        }
      }     

  // SLOT 2 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 421) && (mouseY <= 499))
        {

  slot2.hasBlueCard = false;
  slot2.hasRedCard = has_redcard;
  slot2.hasStorageKey = has_storagekey;
  slot2.hasFingerKey = has_fingerkey;
  slot2.hasCuttingTool = has_cuttingtool;
  slot2.isInfected = infected;
  slot2.beenSprayed = been_Sprayed;
  slot2.lowerLabLocked = LowerLab_Locked;
  slot2.storageRoomLocked = Storage_Locked;
  slot2.officeLocked = Office_Locked;
  slot2.antidoteCabinetLocked = Antidote_cabLocked;
  slot2.Selection = selection;
  slot2.previousRoom = prev_Room;
  slot2.slotNumber = 2;
  
            slot2.writeFile();
         
        }
      }      

  // SLOT 3 BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 521) && (mouseY <= 599))
        {
            
  slot3.hasBlueCard = has_bluecard;
  slot3.hasRedCard = has_redcard;
  slot3.hasStorageKey = has_storagekey;
  slot3.hasFingerKey = has_fingerkey;
  slot3.hasCuttingTool = has_cuttingtool;
  slot3.isInfected = infected;
  slot3.beenSprayed = been_Sprayed;
  slot3.lowerLabLocked = LowerLab_Locked;
  slot3.storageRoomLocked = Storage_Locked;
  slot3.officeLocked = Office_Locked;
  slot3.antidoteCabinetLocked = Antidote_cabLocked;
  slot3.Selection = selection;
  slot3.previousRoom = prev_Room;
  slot3.slotNumber = 3;  
  
            slot3.writeFile();
          
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
          
          else if (prev_Room == 11){
          selection = 11;
          Clean_Room();
          }          

          else if (prev_Room == 12){
          selection = 12;
          Entry_Stairs();
          }          
          
        }
      }
      
  // QUIT BUTTON
        if ((mouseX >= 531) && (mouseX <= 1010))
      {
        if ((mouseY >= 526) && (mouseY <= 614))
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
