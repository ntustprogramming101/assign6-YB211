class Item {
	boolean isAlive;
	float x, y;
	float w = SOIL_SIZE;
	float h = SOIL_SIZE;
  Clock clock;
  Cabbage cabbage;

	void display(){
  clock.display();
  cabbage.display();
}
	void checkCollision(Player player){
  clock.checkCollision(player);
  cabbage.checkCollision(player);
}

	Item(float x, float y){
		isAlive = true;
		this.x = x;
		this.y = y;
	}
}
