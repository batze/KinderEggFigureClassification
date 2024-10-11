function features = getFeatures(img)
mask = ~((img(:,:,1)>250)&(img(:,:,2)>250)&(img(:,:,3)>250));

red = img(:,:,1);
maxRed= max(red(mask));
minRed = min(red(mask));
meanRed = mean(red(mask));

green = img(:,:,2);
maxGreen= max(green(mask));
minGreen = min(green(mask));
meanGreen = mean(green(mask));

blue = img(:,:,3);
maxBlue= max(blue(mask));
minBlue = min(blue(mask));
meanBlue = mean(blue(mask));

features = [maxRed minRed meanRed maxGreen minGreen meanGreen maxBlue minBlue meanBlue];