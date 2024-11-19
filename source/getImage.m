function myImage = getImage()
 h=webcam;
 myImage=snapshot(h);
 clear h;