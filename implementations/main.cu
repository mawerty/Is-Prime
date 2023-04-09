#include <curand_kernel.h>
#include "device_launch_parameters.h"
#include <stdio.h>
#include <cuda_runtime.h>

__global__ void is_prime(int* input, bool* output, int size) {
    int id = blockIdx.x * blockDim.x + threadIdx.x;
    if (id < size) {
        output[id] = false;
    }
}

int main() {
    const int size = 10;
    int input[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    bool output[size];

    int* d_input;
    bool* d_output;
    cudaMalloc(&d_input, size * sizeof(int));
    cudaMalloc(&d_output, size * sizeof(bool));
    cudaMemcpy(d_input, input, size * sizeof(int), cudaMemcpyHostToDevice);

    is_prime << <1000, 256>> > (d_input, d_output, size);

    cudaMemcpy(output, d_output, size * sizeof(bool), cudaMemcpyDeviceToHost);

    cudaFree(d_input);
    cudaFree(d_output);
    return 0;
}