public void setup () {
size(1000,1000);	
//reverseFractal(250,250,300);
background(179, 196, 224);
fill(73, 123, 204);
golden(500,500,800,HALF_PI);
}

public void draw () {

}

/*public void fractal (int x,int y,float length) {
	if (length<10) {
		ellipse(x,y,length,length); 
	}
	else {
		ellipse(x,y,1000/length,1000/length);
		//fractal(x,y-7,length/1.1);
		fractal(x+6,y-7,length/1.1);

	}	

}

public void reverseFractal (int x,int y,float length) {
	if (length<10) {
		ellipse(x,y,length,length); 
	}
	else {
		ellipse(x,y,length,length);
		reverseFractal(x,y-5,length/1.1);

	}
}
*/
public void golden(float x, float y, float length,float angle) {
	if (length <= 1) {
		arc(x,y , length, length, angle, angle+HALF_PI);
	}
	else {
		arc(x,y,length, length, angle, angle+HALF_PI);
		//arc(x,y, length, length, angle, angle+HALF_PI);
		golden(x-(float)Math.sin(angle)*length/(3.24*1.6180339),y+(float)Math.cos(angle)*length/(3.24*1.6180339),length/1.6180339,angle+HALF_PI);

	}
	

}
