<img src="images/logo.png" align=mid />


# MedicalNet
This repository contains the customised implementation of MedicalNet pretrained models on the BRATS-2021 dataset. The readme will be updated on a frequent basis to reflect relevant changes made to the system.

- After successfully completing basic installation, you'll be ready to run the demo.
1. Clone the MedicalNet repository
```
git clone https://github.com/Tencent/MedicalNet
```
2. Download data & pre-trained models ([Google Drive](https://drive.google.com/file/d/13tnSvXY7oDIEloNFiGTsjUIYfS3g3BfG/view?usp=sharing) or [Tencent Weiyun](https://share.weiyun.com/55sZyIx))

    Unzip and move files
```
mv MedicalNet_pytorch_files.zip MedicalNet/.
cd MedicalNet
unzip MedicalNet_pytorch_files.zip
```
3. Run the training code (e.g. 3D-ResNet-50)
```
python train.py --gpu_id 0 1    # multi-gpu training on gpu 0,1
or
python train.py --gpu_id 0    # single-gpu training on gpu 0
```
4. Run the testing code (e.g. 3D-ResNet-50)
```
python test.py --gpu_id 0 --resume_path trails/models/resnet_50_epoch_110_batch_0.pth.tar --img_list data/val.txt
```

### Experiments
- Computational Cost 
```
GPU：NVIDIA RTX A5000 for POC
```


- Performance
<table class="dataintable">
<tr>
   <th>Network</th>
   <th>Pretrain</th>
   <th>BRATS (Dice)</th>
</tr>
<tr>
   <td rowspan="2">3D-ResNet10</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>87.16%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet18</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>87.26%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet34</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>89.31%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet50</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>93.31%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet101</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>92.79%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet152</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>92.33%</td>
</tr>
<tr>
   <td rowspan="2">3D-ResNet200</td>
</tr>
<tr>
    <td>MedicalNet</td>
    <td>92.06%</td>
</tr>
</table>

- Please refer to [Med3D: Transfer Learning for 3D Medical Image Analysis](https://arxiv.org/abs/1904.00625) for more details：

### TODO
- [x] 3D-ResNet series pre-trained models
- [x] Transfer learning training code
- [x] Training with multi-gpu
- [ ] 3D efficient pre-trained models（e.g., 3D-MobileNet, 3D-ShuffleNet）
- [ ] 2D medical pre-trained models
- [x] Pre-trained MedicalNet models based on more medical dataset

### Acknowledgement
We thank [3D-ResNets-PyTorch](https://github.com/kenshohara/3D-ResNets-PyTorch) and [MRBrainS18](https://mrbrains18.isi.uu.nl/) which we build MedicalNet refer to this releasing code and the dataset.

### Contribution
If you want to contribute to MedicalNet, be sure to review the [contribution guidelines](https://github.com/Tencent/MedicalNet/blob/master/CONTRIBUTING.md)
