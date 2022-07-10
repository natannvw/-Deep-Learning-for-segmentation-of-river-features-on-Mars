clear
close all

% From:
imgs_original_dir = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Pytorch-UNet\data3\masks';
original_files = dir(imgs_original_dir);

% To:
destination_folder = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Pytorch-UNet\data with augmentation\masks';

letters = {'a_', 'b_', 'c_', 'd_', 'e_', 'f_', 'g_', 'h_'};

for i = 1:length(original_files) - 1
    if i == 1 || i == 2
        continue
    end
    
    file_name   = original_files(i).name;
    file_dir    = [imgs_original_dir, '\', file_name];
    
    I           = imread(file_dir);
    rot_angle   = 0;                % initialize
      
    for ang = 1:(360/45)
        augmented = imrotate(I, rot_angle, 'nearest', 'crop');  % uint8 !!!
        BW        = imbinarize(augmented);                              % convert to logical

%         imshowpair(I, BW, 'montage');  % visualize
        New_file_dir = fullfile(destination_folder, [letters{ang} , file_name]);
        imwrite(BW, New_file_dir);
        rot_angle = rot_angle + 45;
    end
end
