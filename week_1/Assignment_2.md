# ERC20 토큰 발행 1단계 - 기본 기능 구현

## 학습 목표

* OpenZeppelin의 ERC20 컨트랙트를 활용하여 토큰 컨트랙트 인스턴스를 만들 수 있다.

## 사전 지식

* ERC20 컨트랙트가 어떻게 동작하는 지 살펴본다. 특히, approve 개념에 대해 설명할 수 있다.
* OpenZeppelin 라이브러리가 무엇인지 알아보고, 왜 필요한 지 설명할 수 있다.
* 스스로의 힘으로 Smart Contract 코드를 작성하고, 컴파일하여 Ethereum 테스트넷에 배포할 수 있다.
* 라이브러리 및 다른 컨트랙트를 import 하거나 상속받아 새로운 컨트랙트 클래스를 작성할 수 있다.

## 과제: 기능 요구사항

* 간단한 ERC20 토큰 컨트랙트를 작성하고, 컴파일한다.
  * OpenZeppelin 라이브러리를 활용하여 코드를 작성한다.
  * Ethereum Kovan, Rinkeby, Ropsten 및 Klaytn Baobab 테스트넷에 배포해본다.

* 토큰 컨트랙트를 작성하고, 다음의 요구사항을 만족하는 테스트 코드를 작성하여 통과시킨 후 스크린샷을 제출한다.
  * 스크린샷을 촬영할 때 테스트하는 네트워크는 어디인지 상관없다.
  * 배포한 이후에 발행량 전체의 토큰을 배포한 주소에 할당한다.
  * 여러 주소 간에 토큰을 전송할 수 있다.
  * 충분한 토큰의 갯수가 없으면 토큰을 보낼 수 없다.
  * 토큰 간의 전송이 오간 이후에 각자의 잔고에 변화가 생긴다.

## 과제 제출 방법

* [GitHub 저장소](https://github.com/Web3-Study-with-Sigrid-Jin/smiling-leo-dApp-Session)를 Fork해서 작업한 다음, week_1 폴더에 본인의 이름으로 새로운 폴더를 만든 뒤, 해당 폴더를 clone해서 local에서 작업하고, 이후 Pull Request를 날린다.
  * 제목 예시: [1주차 과제 1] 홍길동 제출합니다.

## 예상 결과 및 동작 예시

```shell
$ npx hardhat test

  Token contract
    ✓ Should assign the total supply of tokens to the owner
    ✓ Should transfer tokens between accounts
    ✓ Should fail if sender doesn’t have enough tokens
    ✓ Should update balances after transfers


  4 passing
```

## 학습 자료 및 관련 키워드

* AddChain: https://addchain.welldonestake.io/
* OpenZeppelin: https://docs.openzeppelin.com/contracts/2.x/api/token/erc20
* Hardhat Docs: https://hardhat.org/getting-started/
* AllThatNode Docs: https://docs.allthatnode.com/tutorials/a-simple-erc20-smart-contract#thats-it-whats-next