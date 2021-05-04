# Lab 2A
Refer to the [lab document](https://github.com/whitneylohmeyer/PWC_templates/blob/main/Lab-2/Lab-2a/Reports/Assignment-2A.pdf) for the instructions and rubric for this lab.

Implementations of the following function definitions are provided:
```
[trimmed_data] = correct_lag(pulse_size, header_size, data_size, received_data)

err = compute_error(tx, rx)
```

For our solution we used the following constants definiton:
```
PREAMBLE_LENGTH = 20000
```

For our solution we used the following function definitions:
```
[y1, y2] = correct_lag_2(x1, x2, y1, y2)

H = estimate_channel(x1, x2, y1, y2, pulseWidth)

[x1_decoded, x2_decoded] = zero_forcing_receiver(y, H)

[x1_decoded, x2_decoded] = mmse_receiver(y, H)

[err, bits_x] = compute_error(decoded_signal, original_signal)
```

You are not required to use these function definitions, but it will allow you to compare your implementation to the solution.
