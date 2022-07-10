clear
close all

main_dir                  = 'C:\Users\natan\Google Drive\Weizmann\first_year\Courses\second_semester\Deep_learning\Project\Matlab';
after_process_folder_name = 'after_process';
% destination_folder          = 'Mask';   % changing
destination_folder        = 'images';   % changing

% original_dir    = fullfile(main_dir, 'Mask_Valleys');    % changing
original_dir    = fullfile(main_dir, 'No_Valleys');    % changing
original_files  = dir([original_dir, '/*.png']);

targetSize      = [700, 700];

for i = 1:length(original_files)
    file_name   = original_files(i).name;
    file_dir    = [original_dir, '\', file_name];
    
    I           = imread(file_dir);
    r           = centerCropWindow2d(size(I), targetSize);
    Cropped     = imcrop(I, r);

%     % see the original against the cropped before saving:
%     subplot(1,2,1)
%     imshow(I)
%     title('Original Image')
%     subplot(1,2,2)
%     imshow(Cropped)
%     title('Cropped Image')

    New_file_dir = fullfile(main_dir, after_process_folder_name, destination_folder, file_name);
    imwrite(Cropped, New_file_dir);
end


