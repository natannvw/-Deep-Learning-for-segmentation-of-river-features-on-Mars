# Deep-Learning-for-segmentation-of-river-features-on-Mars
Segmentation for mapping of river features over the whole planet of Mars, using Deep Learning (PyTorch) training neural network.

Dataset:
  1. For the images: NASA's Mars Reconnaissance Orbiter (MRO) Context Camera (CTX) layer in ArcGIS Pro.
  2. For the true mask: used the layer of vector layer of "Global map of Martian fluvial systems" from https://zenodo.org/record/1051038
  3. Pre-processing to create datasets: ArcPy in ArcGIS Pro and Matlab.
  
  ![alt text](https://github.com/natannvw/Deep-Learning-for-segmentation-of-river-features-on-Mars/blob/main/Results%20and%20Demo/Screenshot%20Arc%20GIS%20Pro.png)
  
  4. You can download the ready and processed data from here: https://drive.google.com/file/d/14mle3rW7hNJK9a-kuSr5Wtk52_DHCW3z/view?usp=sharing

Training:
  1. U-Net: Semantic segmentation with PyTorch from https://github.com/milesial/Pytorch-UNet
  2. Jupiter Colab Notebook: 'Project.ipynb'
  
![alt text](https://github.com/natannvw/Deep-Learning-for-segmentation-of-river-features-on-Mars/blob/main/Results%20and%20Demo/Fluvial%20features%20in%20Valles%20Marineris%2C%20Mars.png)
