package _01_houses;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	Robot rob = new Robot("mini");
	public void run() {

	rob.setSpeed(100);
	rob.move(-280); //moving to position
	rob.turn(-90);
	rob.move(450);
	rob.turn(-180);
	rob.penDown();//starts on grass
	rob.setPenColor(3, 252, 28); //color green
	rob.move(30);
//	rob.turn(-90);//big house
//	rob.move(180);
//	rob.turn(90);
//	rob.move(30);
//	rob.turn(90);
//	rob.move(180);
//	rob.setPenColor(3, 252, 28);//grass
//	rob.turn(-90);
//	rob.move(30);
//	rob.setPenColor(78, 38, 40);
	drawHouse("large");
	drawHouse("small");
	drawHouse("large");
	drawHouse("large");
	drawHouse("medium");
	drawHouse("small");

	}
	public void drawHouse(String height) {
		int size = 16;
		if(height.equals("large")) {
			size = 250;
		}
		if(height.equals("small")) {
			size = 60;
		}
		if(height.equals("medium")) {
			size = 120;
		}
		rob.setPenColor(3, 252, 28); //color green
		rob.move(30);
		rob.setPenColor(23, 87, 26);//brown
		rob.turn(-90);
		rob.move(size);
		rob.turn(45);
		rob.move(10);
		rob.turn(90);
		rob.move(10);
		rob.turn(45);
		rob.move(size);
		rob.turn(-90);
	}
}
