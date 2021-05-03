function err = compute_error(tx, rx)
    % CALCULATE_ERROR Takes in the bitstreams of the decoded received message
    % and the transmitted message (such that each sample is a unique pair
    % of bits in 4-QAM) and calculates the error.
    % Arguments:
    % - tx: Vector containing the complex numbers with I/Q bits to be sent
    % - rx: Vector containing the complex numbers with I/Q bits received
    % Returns:                      
    % - err: Percent error between transmitted/received message
    
    err = sum((rx ~= tx)) / length(tx);
    
end