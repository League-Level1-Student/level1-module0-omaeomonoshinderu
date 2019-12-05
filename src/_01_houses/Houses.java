package _01_houses;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	
	public void run() {
	Robot rob = new Robot("mini");
	rob.setSpeed(100);
	rob.move(-280);
	rob.turn(-90);
	rob.move(450);
	rob.turn(-180);
	rob.penDown();
	rob.setPenColor(3, 252, 28);
	rob.move(30);
	
	
	}
}
