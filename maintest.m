file_path='C:\Users\fengwang\Documents\小组资料\tx_000100000000\zebra\'
save_file_path='C:\Users\fengwang\Documents\小组资料\tx_save\zebra\'
img_path_list=dir(strcat(file_path,'*.jpg'))
img_num=length(img_path_list)
for j=1:img_num
    img_name=img_path_list(j).name
    pre_name=img_name(1:end-4)
    save_name=strcat(pre_name,'_gb.jpg')
%     fprintf('%s\n',strcat(file_path,img_name))
    I=imread(strcat(file_path,img_name))
    [gb_thin_CSG, gb_thin_CS, gb_CS, orC, edgeImage, edgeComponents] = Gb_CSG(I)
    gray=rgb2gray(edgeImage)
    imwrite(gray,strcat(save_file_path,save_name))
end
% I=imread('cat.jpg')
% [gb_thin_CSG, gb_thin_CS, gb_CS, orC, edgeImage, edgeComponents] = Gb_CSG(I)
% % set(gcf,'color',[1,1,1]) % 背景色设置为白色
% gray=rgb2gray(edgeImage)
% % image(gray)
% % f=getframe(gcf)
% imwrite(gray,'catedge.jpg')
% saveas(gcf,['','catedge.jpg'])