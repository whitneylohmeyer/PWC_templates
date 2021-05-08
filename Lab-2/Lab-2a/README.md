# Lab 2A
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-2/Lab-2a/Reports/Assignment-2A.pdf) for the instructions and rubric for this lab. To realize the functionality associated with this lab assignment, you will need to write high-level code that decodes and processes the received signal given in the attached [dataset](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-2/Lab-2a/data/2User2AntennaBS.mat). We suggest you use a set of modular functions within your implementation.

Implementations of the following function definitions are provided in the [functions folder](https://github.com/whitneylohmeyer/PWC_templates/tree/main/Lab-1/functions):
```
[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)
```

In our solution, we used the following constant definiton:
```
PREAMBLE_LENGTH = 20000
```

We also used the following function definitions in our solution:
```
[y1, y2] = correct_lag_2(x1, x2, y1, y2)

H = estimate_channel(x1, x2, y1, y2, pulseWidth)

[x1_decoded, x2_decoded] = zero_forcing_receiver(y, H)

[x1_decoded, x2_decoded] = mmse_receiver(y, H)

[err, bits_x] = compute_error(decoded_signal, original_signal)
```

You are not required to use these function definitions, but doing so will allow you to compare your implementation to our solution.
