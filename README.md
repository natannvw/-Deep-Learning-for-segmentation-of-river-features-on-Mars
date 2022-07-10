# Deep-Learning-for-segmentation-of-river-features-on-Mars
Segmentation for mapping of river features over the whole planet of Mars, using Deep Learning (PyTorch) training neural network.

Dataset:
  1. For the images: NASA's Mars Reconnaissance Orbiter (MRO) Context Camera (CTX) layer in ArcGIS Pro.
  2. For the true mask: used the layer of vector layer of "Global map of Martian fluvial systems" from https://zenodo.org/record/1051038
  3. Pre-processing to create datasets: ArcPy in ArcGIS Pro and Matlab.

Training:
  1. U-Net: Semantic segmentation with PyTorch from https://github.com/milesial/Pytorch-UNet
  2. Jupiter Colab Notebook: 'Project.ipynb'
