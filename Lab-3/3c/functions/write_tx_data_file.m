function write_tx_data_file(tx_fname, tx_data)
    % WRITE_TX_DATA_FILE Write the raw data vector to an interleaved data
    % file compatible with the USRP.
    % Arguments:
    % - tx_fname: The name of the file to save the data to.
    % - tx_data: The data to write to the file.
    % Returns: 
    % Nothing but writes data to tx_fname in this directory.

    tmp = zeros(length(tx_data)*2, 1);
    tmp(1:2:end) = real(tx_data);
    tmp(2:2:end) = imag(tx_data);
        
    % Save the data to a file.
    f = fopen(tx_fname, 'wb');
    fwrite(f, tmp, 'float32');
    fclose(f);
end