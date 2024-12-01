# cp-cpp-boilerplate
`2024. 11. 30 - 2024. 12. 01.` c++ 백준 코딩 테스트 샘플 파일

- `ONLINE_JUDGE` 이름으로 아래 기능 전처리 구문 작성
- input.txt, output.txt 파일 생성 및 cin, cout 각각 연결
- 코드 실행 시간 측정


### 환경
- macOS 15.1.1
- VSCode
- C++17
- clang++

### 사용 방법
- clang 설치 확인
    ```sh
    clang --version
    ```

    - 미설치 시 아래 명령어 실행
        ```sh
        xcode-select --install
        ```

- 깃 클론 후 setup-* 파일 권한 부여
    ```sh
    chmod +x setup-vscode.sh && chmod +x setup-problems.sh
    ```

- 프로젝트 셋팅
    ```
    ./setup-vscode.sh
    ```

- 문제 폴더 생성
    ```
    ./setup-problems.sh {문항번호}
    ```
    ```
    ./setup-problems.sh 1001
    ```
- input.txt 내 입력 내용 추가 후 main.cpp 내 코드 작성 

### 폴더 구조
```sh
.
├── .gitignore  // 깃에 올리지 않을 파일 명시
├── .vscode
│   ├── c_cpp_properties.json   // IntelliSense (코드 도움말) 기능 설정
│   ├── extensions.json // 확장팩 추천 목록
│   ├── settings.json   // 프로젝트 셋팅 - 구글 스타일 포맷팅
│   └── tasks.json  // 빌드 설정, '-std=c++17'와 '-stdlib=libc++' 명시
├── 1000    // 샘플 폴더
│   ├── input.txt   // 테스트 입력값
│   ├── main.cpp    // 실행 코드
│   └── output.txt  // 
├── README.md
├── setup-problems.sh   // 문항 폴더 및 파일 생성
└── setup-vscode.sh // 프로젝트 셋팅 파일
```
- 샘플 폴더 관련 문제 : [백준 1000번](https://www.acmicpc.net/problem/1000)

### `main.cpp`
```c
/*
 * Problem: 1000
 * URL: https://www.acmicpc.net/problem/1000
 */

#include <iostream>

using namespace std;

#ifndef ONLINE_JUDGE    
#include <chrono>
#include <cstdio>
#include <fstream>

using namespace chrono;

#endif

int main(void) {
/* === Local Execution Time Measurement and File I/O === */
#ifndef ONLINE_JUDGE    // 해당 전처리 이름이 존재할 경우, 코드를 실행하지 않음
  auto start = high_resolution_clock::now();    // 코드 실행 시간 측정 시작

  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  ifstream inputFile("input.txt");
  ofstream outputFile("output.txt");

  if (inputFile.is_open() && outputFile.is_open()) {    // 파일이 존재한다면 I/O와 연결
    cin.rdbuf(inputFile.rdbuf());
    cout.rdbuf(outputFile.rdbuf());
  } else {
    cerr << "Failed to open input/output files." << endl;
    return 1;
  }

#endif

  /* === Problem Solving Code ===
    Write the solution code for the problem here. */



/* === Local Execution Time Measurement === */
#ifndef ONLINE_JUDGE
  auto end = high_resolution_clock::now();
  auto duration = duration_cast<milliseconds>(end - start);

  clog << "Execution time: " << duration.count() << " ms" << endl;  // DEBUG COLSOLE에 실행 시간 출려
#endif

  return 0;
}

```