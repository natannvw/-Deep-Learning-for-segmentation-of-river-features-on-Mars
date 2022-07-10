clear
close all

% From:
original_dir       = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Data Processing\Matlab';
original_files     = dir([original_dir, '/*.jpg']);

% To:
% destination_folder = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Pytorch-UNet\data3\masks';


for i = 1:length(original_files)
    file_name_jpg     = original_files(i).name;
    file_name_png = strrep(file_name_jpg, '.jpg', '.png');
    
    file_dir    = [original_dir, '\', file_name_jpg];
    
    I           = imread(file_dir);
    BW          = imbinarize(I);
    
    % flip:
    inverted    = not(BW);          

%     New_file_dir = original_dir;
    New_file_dir = fullfile(original_dir, file_name_png);
%     imwrite(inverted, New_file_dir);
%     imwrite(inverted, New_file_dir, 'Transparency', fileinfo.SimpleTransparencyData);
%     fileinfo = imfinfo('image.png');
    imwrite(inverted, New_file_dir, 'Transparency', 1);

end











