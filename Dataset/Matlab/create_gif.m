clear
close all

% From:
imgs_dir    = 'C:\Users\natan\Desktop\All Data\data2_3772\imgs';
masks_dir   = 'C:\Users\natan\Desktop\All Data\data2_3772\masks';

% Get files list:
imgs_files  = dir([imgs_dir, '/*.jpg']);
% masks_files = dir([masks_dir, '/*.gif']);

% To:
gif_filename = 'C:\Users\natan\Desktop\Animated.gif'; % Specify the output file name

fig  = figure();
axes = axes(fig);

for i = 1:10
    i
    file_name_img  = imgs_files(i).name;

    file_name_mask = strrep(file_name_img, '.jpg', '_mask.gif');
       
    img_dir        = [imgs_dir, '\', file_name_img];
    mask_dir       = [masks_dir, '\', file_name_mask];
    
    I_img           = imread(img_dir);
    I_mask          = imread(mask_dir);
    I_mask_3(:,:,1) = I_mask;
    I_mask_3(:,:,2) = I_mask;
    I_mask_3(:,:,3) = I_mask;
    
    % Frame:
    if i == 1
        imshow = imshowpair(I_img, I_mask, 'montage');  % visualize
    else
        imshow.CData = cat(2, I_img ,I_mask_3);
    end
    
    frame       = getframe(axes);
    im          = frame2im(frame);
    [A, map]    = rgb2ind(im, 256);
    
    % Write to the GIF File:
    if i == 1
        imwrite(A, map, gif_filename, 'gif', 'LoopCount', Inf, 'DelayTime', 0);
    else
        imwrite(A, map, gif_filename, 'gif', 'WriteMode', 'append', 'DelayTime', 1);
    end
    pause
end







































