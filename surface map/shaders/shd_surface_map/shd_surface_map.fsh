varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	int combinedX = int(gl_FragCoord.x);
	float red = float(floor(float(combinedX) / 16.0))/255.0;
	int blueLeft = int(mod(float(combinedX),16.0));
	
	int combinedY = int(gl_FragCoord.y);
	float green = float(floor(float(combinedY) / 16.0))/255.0;
	int blueRight = int(mod(float(combinedY),16.0));
	
	float blue = float(blueLeft*16 + blueRight)/255.0;
	
    gl_FragColor = vec4(red,green,blue,1.0);
}
