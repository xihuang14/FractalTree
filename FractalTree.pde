private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
size(640,480);
	//size(1000,1000);    
	noLoop(); 

} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);  
  drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double angle3 = angle;
  branchLength = branchLength/ fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1)+x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2)+x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y);
  int midX1 = (int)(branchLength*Math.cos(angle)+x);
  int midY1 = (int)(branchLength*Math.sin(angle)+y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  //stroke(255);
  line(x,y,midX1,midY1);
  
 if(branchLength>smallestBranch/10){
   drawBranches(endX1,endY1,branchLength/2,angle1);
   drawBranches(endX2,endY2,branchLength/2,angle2);
   //stroke(255);
   drawBranches(midX1,midY1,branchLength/2,angle3);
 }
 
} 