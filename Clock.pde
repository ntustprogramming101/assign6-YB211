class Clock extends Item{
	// Requirement #2: Complete Clock Class
  PImage clockImg;
  float[] clockX, clockY;
  
  Clock(float x, float y){
    super(x, y);
    clockImg = loadImage("img/clock.png");
    clockX = new float[6];
    clockY = new float[6];
  }
  
  void display(){
    for(int i = 0; i < clockX.length; i++){
      clockX[i] = SOIL_SIZE * floor(random(SOIL_COL_COUNT));
      clockY[i] = SOIL_SIZE * ( i * 4 + floor(random(4)));
      
      while(clockX[i] == cabbage.x && clockY[i] == cabbage.y){
      clockX[i] = SOIL_SIZE * floor(random(SOIL_COL_COUNT));
      clockY[i] = SOIL_SIZE * ( i * 4 + floor(random(4)));
    }
      image(clockImg, clockX[i], clockY[i]);
      
    }
  }
  
  void checkCollision(Player player){
    for(int i = 0; i < clockX.length; i++){
      if(isHit(clockX[i], clockY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

        addTime(CLOCK_BONUS_SECONDS);
        isAlive = false;
      }
    }
  }
}
	/*
	Code for Reference:

		for(int i = 0; i < clockX.length; i++){

			// Display Clock
			image(clock, clockX[i], clockY[i]);

			// Check collision with player
		    if(isHit(clockX[i], clockY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				addTime(CLOCK_BONUS_SECONDS);
				clockX[i] = clockY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}
	*/
