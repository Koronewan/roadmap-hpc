#include <chrono>
#include <iostream>
#include <vector>

int main() {
    constexpr size_t N = 100000000;
    std::vector<int> data(N, 1);

    auto start = std::chrono::high_resolution_clock::now();

    long long sum = 0;
    for (size_t i = 0; i < N; ++i)
        sum += data[i];

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> diff = end - start;
    std::cout << "Sum: " << sum << "\n";
    std::cout << "Time: " << diff.count() << " s\n";
}
