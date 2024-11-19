%Bild machen
h = webcam();
myimage = snapshot(h);
imshow(myimage);

%Model Training
% myDatastore = getImageDataStore();
% myTrainFeatures=[];
%     while myDatastore.hasdata
%         newimage=read(myDatastore);
%         myTrainFeatures=[myTrainFeatures;getFeatures(newimage)];
%     end    
% [myLabels,labelList] = grp2idx(myDatastore.Labels);
% Mdl = fitctree(double(myTrainFeatures), myLabels);
% save('./models/mdlDT.mat',"Mdl");
trainDecisionTree();

%Predict-Funktion
predLabel=classificationDecisionTrees(myimage);
