private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  



public void setup() 
{   
	size(640,480);    
	noLoop(); 

} 
public void draw() 
{   
	background(0,221,207);   
	stroke(255,136,0);  
	line(320,480,320,380);  
	drawBranches(320,380,100, 3*Math.PI/2, .4);
} 


public void drawBranches(int x,int y, double branchLength, double angle, double bAngle) 
{   
	double angle1=angle+bAngle;
	double angle2=angle-bAngle;
	branchLength=branchLength*fractionLength;
	int endX1=(int)(branchLength*Math.cos(angle1)+x);
	int endY1=(int)(branchLength*Math.sin(angle1)+y); 
	int endX2=(int)(branchLength*Math.cos(angle2)+x);
	int endY2=(int)(branchLength*Math.sin(angle2)+y);
	stroke(255,136,0);
	line(x,y,endX1,endY1);
	stroke(255,136,0);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1,bAngle);
		drawBranches(endX2,endY2,branchLength,angle2,bAngle);
	}
} 