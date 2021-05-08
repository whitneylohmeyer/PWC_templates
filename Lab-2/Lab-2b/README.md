# Lab 2B
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-2/Lab-2b/Reports/Assignment-2B.pdf) for the instructions and rubric for this lab. To realize the functionality associated with this lab assignment, you will need to write high-level code that simulates preparing data for transmission, sending the data across the channel (using the provided [MIMO 4X4 Channel Function](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-2/Lab-2b/functions/MIMOChannel4x4.m)), and decoding and processing the received data.

Implementations of the following function definitions are provided:
```
[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)

data = generate_bpsk_data(N)

function Y = MIMOChannel4x4(X)
```

In our solution, we used the following function definitions:
```
[H, n0_var] = estimate_channel(x_train)

[x1, x2, x3, x4] = mmse_receiver(received_data, H, n0_var)
```

You are not required to use these function definitions, but doing so will allow you to compare your implementation to our solution.
