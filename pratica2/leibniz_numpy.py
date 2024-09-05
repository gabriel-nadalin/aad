import numpy as np
import sys

total = int(sys.argv[1])

array = np.array([(-1) ** i / (2 * i + 1) for i in range(total)])

pi = np.sum(array) * 4

print(pi)