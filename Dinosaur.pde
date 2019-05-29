class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class

	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  
  Dinosaur(float x, float y){
    super(x, y);
    dinosaur = loadImage("img/dinpsaur.png");
  }
  
  void display(){
    super.display();
    pushMatrix();
    translate(x+w, y);
    scale(-1,1);
    image(dinosaur, 0, 0);
    popMatrix();
    
  }
  
  void update(){
    

    super.update();
    
  }
	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}
