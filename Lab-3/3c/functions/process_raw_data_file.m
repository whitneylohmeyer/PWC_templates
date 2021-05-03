function rx = process_raw_data_file(rx_fname)
    % PROCESS_RAW_DATA_FILE Convert the raw data file saved by the receiver
    % into an array of complex numbers.
    % Arguments:
    % - rx_fname: The name of the file to process.
    % Returns: 
    % - rx: The array of complex number read from the file.
    raw_data_file = fopen(rx_fname, 'r');
    raw_data_tmp = fread(raw_data_file,'float32');
    fclose(raw_data_file);
    rx = raw_data_tmp(1:2:end)+1i*raw_data_tmp(2:2:end);
end