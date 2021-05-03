function data = generate_bpsk_data(N)
% GENERATE_BPSK_DATA Generate BPSK data vector of a given length
% Arguments:
% - N: The length of the data vector to generate.
% Returns:
% data; The generated BPSK data vector.
data = sign(randn(N,1))';
end