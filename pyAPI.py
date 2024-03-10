from ultralytics import YOLO

results = YOLO().train(cfg='custom.yaml')
