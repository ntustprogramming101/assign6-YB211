class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
  PImage cabbageImg;
  float[] cabbageX, cabbageY;
    
  Cabbage(float x, float y){
    super(x, y);   
    cabbageImg = loadImage("img/cabbage.png");
    cabbageX = new float[6];
    cabbageY = new float[6];
  }
  
  void display(){
    super.display();
    for(int i = 0; i < cabbageX.length; i++){
      cabbageX[i] = SOIL_SIZE * floor(random(SOIL_COL_COUNT));
      cabbageY[i] = SOIL_SIZE * ( i * 4 + floor(random(4)));
      
      image(cabbageImg, cabbageX[i], cabbageY[i]);
    }    
  }
  
  void checkCollision(Player player){
    super.checkCollision(player);    
    for(int i = 0; i < cabbageX.length; i++){
      if(player.health < player.PLAYER_MAX_HEALTH
        && isHit(cabbageX[i], cabbageY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){
  
          player.health ++;
          isAlive = false;
      }
    }
  } 
}
	/*
	Code for Reference:

		for(int i = 0; i < cabbageX.length; i++){

			// Display Cabbage
			image(cabbage, cabbageX[i], cabbageY[i]);

			// Check collision with player
			if(player.health < player.PLAYER_MAX_HEALTH
			&& isHit(cabbageX[i], cabbageY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				player.health ++;
				cabbageX[i] = cabbageY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}

	*/
