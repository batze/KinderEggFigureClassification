   files = dir(['.\imageData\' char(predictedClass) '\*.png']);
            imshow(imread(['.\imageData\' char(predictedClass) '\' files(1).name]),'Parent',app.UIAxes2);