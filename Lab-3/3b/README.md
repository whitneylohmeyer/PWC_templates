# Lab 3B
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/tree/main/Lab-3/3b/Reports) for the instructions and rubric for this lab. To realize the functionality associated with this lab assignment, you will need to write high-level code that simulates preparing data for transmission, sending the data across the channel (using the provided [Nonflat Channel Function](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-3/3b/functions/nonflat_channel_timing_error.m)), and decoding and processing the received data.


Implementations of the following function definitions are provided:
```
data = generate_bpsk_data(N)

[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)

function [ y ] = nonflat_channel_timing_error( x )
```

For our solution we used the following constants definiton:
```
N_CARRIERS = 64; % individual subcarriers are described as symbols
CP_LEN = 16; % samples (cyclic prefix length)
N_OFDM_SYMB_TX = 100; % symbols (to transmit)
TR_LEN = 16; % symbols (number of symbols used for training signal)

% inferred
OFDM_SYMB_LEN = N_CARRIERS + CP_LEN;
N_DATA_OFDM_SYMBS = N_OFDM_SYMB_TX - TR_LEN;
Y_FREQ_PREAMB_LEN = N_CARRIERS * 3;
```

In our solution, we used the following function definitions:
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

You are not required to use these function definitions, but doing so will allow you to compare your implementation to our solution.
