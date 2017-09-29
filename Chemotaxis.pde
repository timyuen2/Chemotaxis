Bacteria [] bob;  
 void setup()   
 {     
 	size(600,600);
 	bob = new Bacteria[200];   
	for(int i = 0; i< bob.length;i++)
	bob[i] = new Bacteria(); 
 }   
 void mousePressed()
 {
 	for(int i = 0; i< bob.length;i++)
	bob[i] = new Bacteria(); 
 }
 void draw()   
 {  
 	
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
 		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void move ()
 	{
 		if(mouseX < myX)
 			myX = myX + (int)(Math.random()*5)-10;
 		else
 			myX = myX + (int)(Math.random()*10)+5;
 	if(mouseY < myY)
 		myY = myY + (int)(Math.random()*5)-10;
 	else
 		myY = myY +(int)(Math.random()*10)+5;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,30,30);
 	}
 }    
