/*
 * Problem: 1000
 * URL: https://www.acmicpc.net/problem/1000
 */

// Add include files and namespaces.
#include <bits/stdc++.h>

using namespace std;

#ifndef ONLINE_JUDGE
#include <chrono>
#include <fstream>
using namespace chrono;

#endif

int main() {
// === File I/O and Timing ===
#ifndef ONLINE_JUDGE
  auto start = high_resolution_clock::now();

  ifstream inputFile("input.txt");
  ofstream outputFile("output.txt");

  if (inputFile && outputFile) {
    cin.rdbuf(inputFile.rdbuf());
    cout.rdbuf(outputFile.rdbuf());
  } else {
    cerr << "Error: Could not open files." << endl;
    return 1;
  }
#endif

  // Add your code.
  int a, b;
  cin >> a >> b;
  int sum;
  sum = a + b;
  cout << sum << endl;

// === Timing ===
#ifndef ONLINE_JUDGE
  auto end = high_resolution_clock::now();
  clog << "Time: " << duration_cast<milliseconds>(end - start).count() << "ms "
       << endl;
#endif

  return 0;
}
