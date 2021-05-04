# Lab 1
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-1/Reports/Assignment-1.pdf) for the instructions and rubric for this lab.

Implementations of the following function definitions are provided:
```
function write_tx_data_file(tx_fname, tx_data)
function rx = process_raw_data_file(rx_fname)
data = generate_bpsk_data(N)
```

For our solution we used the following function definitions:
```
function [trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)
function prepared_data = add_known_bits(header_size, transmit_data)
function err = compute_error(tx, rx)
function corr_data = costas_loop(data)
function rotated_data = rotate_data(header_size, received_data, pulse_size)
function processed_data = unpack_data(pulse_size, header_size, rotated_data)
```

You are not required to use these function definitions, but it will allow you to compare your implementation to the solution.
