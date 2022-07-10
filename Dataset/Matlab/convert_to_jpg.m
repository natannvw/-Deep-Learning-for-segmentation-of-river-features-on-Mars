clear
close all

main_dir           = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Matlab';
destination_folder = 'Converted';   

original_dir       = fullfile(main_dir, 'Mask_Valleys');    % changing
% original_dir       = fullfile(main_dir, 'No_Valleys');    % changing
original_files     = dir([original_dir, '/*.png']);


for i = 1:length(original_files)
    file_name_png = original_files(i).name;
    file_name_jpg = strrep(file_name_png, '.png', '.jpg');
    
    file_dir      = [original_dir, '\', file_name_png];

    I             = imread(file_dir);

    New_file_dir  = fullfile(main_dir, destination_folder, file_name_jpg);
    imwrite(I, New_file_dir, 'Quality', 100);   % Quality of JPEG-compressed file

end


