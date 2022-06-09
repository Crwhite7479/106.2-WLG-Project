// IMAGES TO LOAD:

// The main UI image:
PImage defaultScreen;

// The different maps:
PImage mapHallway1, mapHallway2, mapBedroom, mapKitchen, mapStorage, mapBathroom, mapLab1, mapCleanRoom, mapLab2, mapOffice, glitch;

// Menus:
PImage mainMenuImage, loadGameSlots, saveGameSlots, menuOptions, quitMenuImage;

// Rooms:
PImage shed, hallway1, hallway2, bedroom, kitchen, storage, bathroom;

// Inventory items:
PImage handKeyIcon, keyIcon, blueKeyCardIcon, pinkKeyCardIcon, pliersIcon;

// Button Text:

// SET UP THE GAME:

void setup()
{
  size(1920, 1080);
  background(0);
  frameRate(60);
  
  // LOAD THE IMAGES:
  
  // The default screen:
  defaultScreen = loadImage("defaultScreen.PNG");
  
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
  glitch = loadImage("glitch.jpg");
  
  // Menus:
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
  image (shed, 50,50);
  image (glitch, 1500,772);
  
}
