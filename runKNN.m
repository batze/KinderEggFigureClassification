
h = webcam();
myimage = snapshot(h);

myfeatures = getFeatures(myimage);
myDatastore = getImageDataStore();
myTrainFeatures=[];
    while myDatastore.hasdata
        newimage=read(myDatastore);
        myTrainFeatures=[myTrainFeatures;getFeatures(newimage)];
    end    
myLabels = myDatastore.Labels;
Mdl = fitcknn(double(myTrainFeatures), myLabels);
save ("models/modelKNN.mat","Mdl");

predLabel=predict(Mdl,double(myfeatures));