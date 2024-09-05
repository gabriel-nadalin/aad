import numpy as np

def leibniz(n):
    sum = 0
    for i in range(n):
        sum += (-1) ** i / (2 * i + 1)
    return sum * 4

print(leibniz(100000))