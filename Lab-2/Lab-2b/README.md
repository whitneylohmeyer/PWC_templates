# Lab 2B
Refer to the lab document for the instructions and rubric for this lab.

Implementations of the following function definitions are provided:
```
[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)

data = generate_bpsk_data(N)
```

For our solution we used the following function definitions:
```
[H, n0_var] = estimate_channel(x_train)

[x1, x2, x3, x4] = mmse_receiver(received_data, H, n0_var)
```

You are not required to use these function definitions, but it will allow you to compare your implementation to the solution.