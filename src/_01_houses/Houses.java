package _01_houses;

import java.awt.Color;

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
	drawHouse("large", new Color(120,35,55));
	drawHouse("small",Color.cyan);
	drawHouse("large", Color.orange);
	drawHouse("large",Color.yellow);
	drawHouse("medium", Color.magenta);
	drawHouse("small", Color.red);

	}
	public void drawHouse(String height, Color color ) {
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
		rob.setPenColor(color);
		rob.turn(-90);
		rob.move(size);
		if(height.equals("large")) {
			drawFlatRoof();
		}
		else {
			drawPointyRoof();
		}
		rob.move(size);
		rob.turn(-90);
	}
	public void drawPointyRoof() {
		rob.turn(45);
		rob.move(10);
		rob.turn(90);
		rob.move(10);
		rob.turn(45);
	}
	public void drawFlatRoof() {
		rob.turn(90);
		rob.move(20);
		rob.turn(90);
	}
}
