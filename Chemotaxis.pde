Bacteria [] bob;  
 void setup()   
 {     
 	size(600,600);
 	bob = new Bacteria[100];   
	for(int i = 0; i< bob.length;i++)
	bob[i] = new Bacteria(); 
 }   
 void draw()   
 {  
 	background(0);
 	for( int i = 0; i<bob.length;i++)
 	{
 		bob[i].show();
 		bob[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*550);
 		myY = (int)(Math.random()*550);
 		myColor = color((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255+1));

 	}
 	void move ()
 	{
 		if(mouseX > myX)
 			myX = myX + (int)(Math.random()*3)-2;
 		else
 			myX = myX + (int)(Math.random()*3);
 	if(mouseY > myY)
 		myY = myY + (int)(Math.random()*3)-2;
 	else
 		myY = myY +(int)(Math.random()*3);
 	}
 	void show()
 	{
 		ellipse(myX,myY,10,10);
 	}
 	
 }    
