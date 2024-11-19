function predLabel=classificationKNN(myimage);

load('./models/modelKNN.mat','Mdl');
myfeatures = getFeatures(myimage);
predLabel=predict(Mdl,double(myfeatures));