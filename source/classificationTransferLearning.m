function predLabel=classificationTransferLearning(myimage)

load('./models/modelTransferLearning.mat','modelTransferLearning');
scores=predict(modelTransferLearning,single(imresize(myimage,[227 227])));

  storedImages = getImageDataStore();
    classNames = storedImages.Labels;
    [predLabel,score] = scores2label(scores,categories(classNames));
