#include <iostream>

using namespace std;

// Function to check if a number is prime or not
bool isPrime(int n)
{
    // 0 and 1 are not prime
    if (n <= 1)
    {
        return false;
    }
    // 2 is the only even prime number
    if (n == 2)
    {
        return true;
    }
    if (n % 2 == 0)
        return false;

    // Check if the number is divisible by any odd number up to the square root of n
    for (int i = 3; i * i <= n; i += 2)
    {
        if (n % i == 0)
        {
            return false;
        }
    }
    return true;
}

// Function to print prime numbers in an array
void printPrimes(int arr[], int size)
{
    cout << "Prime numbers in the array: ";
    for (int i = 0; i < size; i++)
    {
        if (isPrime(arr[i]))
        {
            cout << arr[i] << " ";
        }
    }
    cout << endl;
}

int main()
{
    int arr[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    int size = sizeof(arr) / sizeof(arr[0]);
    printPrimes(arr, size);
    return 0;
}
