library GAME;

import 'dart:html';
import 'dart:math' as Math;

part "src/gfx/canvas.dart";

class Main {
    static void main() {
        Screen.initialize("GAME_CANVAS");
        Screen.setSize(800, 600);
        Screen.clear("blue");
        Screen.rectFill(100, 200, 50, 40, "red");
    }
}

class GameTimer {
	GameTimer() {

	}

	void start() {
		
	}

	void loop() {

	}
}

void main() => Main.main();
