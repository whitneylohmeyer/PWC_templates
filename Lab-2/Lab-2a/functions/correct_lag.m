function  [trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)
    % CORRECT_LAG Find the beginning of the transmitted signal in the received
    % data and trim the data to start at that point and end following the
    % number of bits in its length. This assumes the receiver already
    % knows the transmitter's pulse size, header size, and data size.
    % Arguments:
    % - pulse_size: The size of the pulse the data are multiplied by
    % - header_size: The number of known bits at the beginning of the
    %  signal
    % - data_size: The number of elements in the data, not including the
    % header. If unknown, can just be a large number
    % - received_data: The received data to trim
    % Returns: 
    % - trimmed_data: The section of the data including the signal

    known_data = ones(header_size.*pulse_size,1)';
    [xCorr,lags] = xcorr(received_data,known_data);    
    [~,I] = max(abs(xCorr));
    max_time = lags(I);
    trimmed_data = received_data(max_time:max_time + (data_size + header_size)*pulse_size); 
end
