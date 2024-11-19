function predLabel=classificationDecisionTree(myimage)

load('./models/mdlDT.mat','Mdl');
myDatastore = getImageDataStore();
myfeatures = getFeatures(myimage);
[myLabels,labelList] = grp2idx(myDatastore.Labels);
predLabel=labelList{predict(Mdl,double(myfeatures))};