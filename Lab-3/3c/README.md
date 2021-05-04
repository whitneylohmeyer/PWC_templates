# Lab 3C
Refer to the lab document for the instructions and rubric for this lab.

Implementations of the following function definitions are provided:
```
write_tx_data_file(tx_fname, tx_data)

rx = process_raw_data_file(rx_fname)

data = generate_bpsk_data(N)

[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)
```

For our solution we used the following constants definiton:
```
N_CARRIERS = 64; % individual subcarriers are described as symbols
CP_LEN = 16; % samples (cyclic prefix length)
N_OFDM_SYMB_TX = 100; % symbols (to transmit)
TR_LEN = 16; % symbols (number of symbols used for training signal)
PILOT_LOCS = [7, 21, 44, 58];  % subcarrier indices before fftshift
PILOT_VAL = 1;
UNUSED_CARRIERS = [28, 38];  % before fftshift

% inferred 
OFDM_SYMB_LEN = N_CARRIERS + CP_LEN;
N_DATA_OFDM_SYMBS = N_OFDM_SYMB_TX - TR_LEN;
Y_FREQ_PREAMB_LEN = N_CARRIERS * 3;
N_PILOTS = length(PILOT_LOCS);
DATA_PER_SYMB = N_CARRIERS - N_PILOTS - UNUSED_CARRIERS(2) + UNUSED_CARRIERS(1) - 1;
```

For our solution we used the following function definitions:
```
[fDelta] = estfreqoffset(yFreqCorrectPreamb)

x = encodeofdm(data, cpLen, pilotLocs, pilotVal, unusedCarriers)

data = decodeofdm(x, nCarriers, hEst, cpLen, nOFDMSymbols, pilotLocs, pilotVal, unusedCarriers)
```

Here are some MATLAB functions you might find helpful to look into:
- pammod
- repmat
- zeros
- cat
- reshape
- sum
- ones
- nnz

You are not required to use these function definitions or functions , but it will allow you to compare your implementation to the solution.