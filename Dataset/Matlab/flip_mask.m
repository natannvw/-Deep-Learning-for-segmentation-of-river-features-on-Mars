clear
close all

% From:
original_dir       = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Pytorch-UNet\data2\masks';
original_files     = dir([original_dir, '/*.gif']);

% To:
destination_folder = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Pytorch-UNet\data3\masks';


for i = 1:length(original_files)
    file_name   = original_files(i).name;
    file_dir    = [original_dir, '\', file_name];
    
    I           = imread(file_dir);
    BW          = imbinarize(I);
    inverted    = not(BW);

    New_file_dir = fullfile(destination_folder, file_name);
    imwrite(inverted, New_file_dir);
end
