# Lab 1
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-1/Reports/Assignment-1.pdf) for the instructions and rubric for this lab.
To realize the functionality associated with this lab assignment, you will need to write high-level code that writes the data you want to transmit across the channel using one of the USRP radios and code that parses and processes the received data file from the other USRP radio. We suggest you use a set of modular functions within your implementation. 

Implementations of the following function definitions are provided in the [functions folder](https://github.com/whitneylohmeyer/PWC_templates/tree/main/Lab-1/functions):
```
function write_tx_data_file(tx_fname, tx_data)
function rx = process_raw_data_file(rx_fname)
data = generate_bpsk_data(N)
```

In our solution, we used the following function definitions:
```
function [trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)
function prepared_data = add_known_bits(header_size, transmit_data)
function err = compute_error(tx, rx)
function corr_data = costas_loop(data)
function rotated_data = rotate_data(header_size, received_data, pulse_size)
function processed_data = unpack_data(pulse_size, header_size, rotated_data)
```

You are not required to use these function definitions, but doing so will allow you to compare your implementation to our solution.
