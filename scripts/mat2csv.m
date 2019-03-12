# function to export stuff to csv dataframe

function fid = mat2csv(vars,names,filename)

  cHeader = names; %dummy header
  commaHeader = [cHeader;repmat({','},1,numel(cHeader))]; %insert commaas
  commaHeader = commaHeader(:)';
  textHeader = cell2mat(commaHeader); %cHeader in text with commas

  %write header to file
  fid = fopen(filename,'w'); 
  fprintf(fid,'%s\n',textHeader);
  fclose(fid);

  %write data to end of file
  dlmwrite(filename,vars,'-append');

end