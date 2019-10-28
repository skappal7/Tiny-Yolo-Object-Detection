### Create and define the object detection model ###

yolo_tiny_voc <- image_darknet_model(type = 'detect', 
                                     model = "tiny-yolo-voc.cfg", 
                                     weights = system.file(package="image.darknet", "models", "tiny-yolo-voc.weights"), 
                                     labels = system.file(package="image.darknet", "include", "darknet", "data", "voc.names"))

### Once the model is defined, now we are ready to use the function to perform object detection routine ###

x <- image_darknet_detect(file = "c:/Users/sunil.kappal/Documents/R/CCD.png", 
                          object = yolo_tiny_voc,
                          threshold = 0.19)