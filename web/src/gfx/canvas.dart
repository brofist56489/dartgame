part of GAME;

class Screen {
	
	static bool get valid => _ctx != null;
	
	static int width;
	static int height;
	
	static CanvasElement _canvas;
	static CanvasRenderingContext2D _ctx;
	
	static void initialize(String id) {
		_canvas = querySelector("#" + id);
		
		if(_canvas != null) {
			_ctx = _canvas.getContext("2d");
		}
	}
	
	static void setSize(int w, int h) {
		_canvas.width = width = w;
		_canvas.height = height = h;
	}
	
	static void clear(String color) {
		if(!valid) return;
		
		_ctx.fillStyle = color;
		_ctx.fillRect(0, 0, width, height);
	}
	
	static void rectFill(num x, num y, num w, num h, String color) {
		if(!valid) return;
		
		_ctx.fillStyle = color;
		_ctx.fillRect(x, y, w, h);
	}
	
	static void rectOutline(num x, num y, num w, num h, String color, [int thickness = 1]) {
		if(!valid) return;
		
		_ctx.strokeStyle = color;
		_ctx.lineWidth = thickness;
		_ctx.strokeRect(x, y, w, h);
	}
	
	static void circleFill(num x, num y, num rad, String color) {
		if(!valid) return;
		
		_ctx.fillStyle = color;
		_ctx.beginPath();
		_ctx.arc(x, y, rad, 0, 2 * Math.PI);
		_ctx.closePath();
		_ctx.fill();
	}
	
	static void circleOutline(num x, num y, num rad, String color, [int thickness = 1]) {
		if(!valid) return;
		
		_ctx.strokeStyle = color;
		_ctx.lineWidth = thickness;
		_ctx.beginPath();
		_ctx.arc(x, y, rad, 0, 2 * Math.PI);
		_ctx.closePath();
		_ctx.stroke();
	}
}
