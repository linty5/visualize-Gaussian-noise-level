% model noise on ILSVRC2012_val_256

gt_namelist = dir('C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256\*.JPEG');
sig = 30;
for ii = 1:length(gt_namelist)
im0 = imread(['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256\' gt_namelist(ii).name]);
im1 = imnoise(im0, 'gaussian', 0, (5/255) ^ 2);
im2 = imnoise(im0, 'gaussian', 0, (10/255) ^ 2);
im3 = imnoise(im0, 'gaussian', 0, (15/255) ^ 2);
im4 = imnoise(im0, 'gaussian', 0, (20/255) ^ 2);
im5 = imnoise(im0, 'gaussian', 0, (25/255) ^ 2);
im6 = imnoise(im0, 'gaussian', 0, (30/255) ^ 2);
im7 = imnoise(im0, 'gaussian', 0, (40/255) ^ 2);
im8 = imnoise(im0, 'gaussian', 0, (50/255) ^ 2);
im9 = imnoise(im0, 'gaussian', 0, (70/255) ^ 2);
imwrite(im1, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise5\' gt_namelist(ii).name]);
imwrite(im2, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise10\' gt_namelist(ii).name]);
imwrite(im3, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise15\' gt_namelist(ii).name]);
imwrite(im4, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise20\' gt_namelist(ii).name]);
imwrite(im5, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise25\' gt_namelist(ii).name]);
imwrite(im6, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise30\' gt_namelist(ii).name]);
imwrite(im7, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise40\' gt_namelist(ii).name]);
imwrite(im8, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise50\' gt_namelist(ii).name]);
imwrite(im9, ['C:\Users\yzzha\Desktop\dataset\ILSVRC2012_val_256_noise70\' gt_namelist(ii).name]);
end
