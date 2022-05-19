# ERC20 토큰 발행 0단계 - Counter 기능 구현

## 학습 목표

* Hardhat 라이브러리의 활용법에 대해 살펴본다.
* Solidity 코드가 어떻게 동작하는 지 살펴본다.
* Web3 dApp 개발도구에는 어떤 것이 있는지 이해하고, 그 개발 흐름에 대해 설명할 수 있다.

## 과제: 글 작성하기

![image](https://user-images.githubusercontent.com/41055141/169196454-f5eec307-5d2f-4fb9-a14b-37ef347d55ce.png)

* 위의 장표를 보고, 스스로의 언어로 다음 키워드를 정리하는 글을 작성하고, 이를 본인만의 기술 블로그에 게시해보자.
  * Truffle, Hardhat
  * AllThatNode, Infura, Alchemy
  * ABI
  * Metamask, Web3.js, Ethers.js
  * RPC Node, Validator (DSRV, Orion Money)
  * Explorer (Etherscan)
* 정리할 때는 컨트랙트 코드 작성, 배포, 프론트엔드와의 통신 순으로 이루어져야 한다.

## 과제: Counter 테스트 코드 작성하기

* Counter.sol의 비즈니스 로직을 테스트한다.
  * 컨트랙트 인스턴스를 생성할 때 초기값을 5로 설정하여 파라미터를 넘긴다.
  * incrementCounter를 5번 실시하고, 값이 10이 되는 지 확인한다.
  * incrementCounter를 1번 더 실시하고, 값이 11이 되는 지 확인한다.
  * incrementCounter를 1번 더 실시하고, 값이 12가 되는 지 확인한다.
  * decrementCounter를 1번 더 실시하고, 값이 11이 되는 지 확인한다.
  * decrementCounter를 1번 더 실시하고, 값이 10이 되는 지 확인한다.
  

## 과제 제출 방법

* [GitHub 저장소](https://github.com/Web3-Study-with-Sigrid-Jin/smiling-leo-dApp-Session)를 Fork해서 작업한 다음, week_1 폴더에 본인의 이름으로 새로운 폴더를 만든 뒤, 해당 폴더를 clone해서 local에서 작업하고, 이후 Pull Request를 날린다.
  * 제목 예시: [1주차 과제 1] 홍길동 제출합니다.

## 참고할 테스트 코드

```javascript
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Conuter", function () {
  it("Test", async function () {
    const Counter = await ethers.getContractFactory("Counter");
    const counter = await Counter.deploy(5);
    await counter.deployed();

    await counter.incrementCounter();
    await counter.incrementCounter();
    await counter.incrementCounter();
    await counter.incrementCounter();
    await counter.incrementCounter();

    expect(await counter.getCount()).to.equal(10);

    await counter.incrementCounter();

    expect(await counter.getCount()).to.equal(11);

    await counter.incrementCounter();

    expect(await counter.getCount()).to.equal(12);

    await counter.decrementCounter();

    expect(await counter.getCount()).to.equal(11);

    await counter.decrementCounter();

    expect(await counter.getCount()).to.equal(10);
  });
});
```

## 학습 자료 및 관련 키워드

* ethers.js Docs: https://docs.ethers.io/v5/single-page/
* Mocha Docs: https://mochajs.org/api/mocha.js.html
* Hardhat Docs: https://hardhat.org/getting-started/
* AllThatNode Docs: https://docs.allthatnode.com/tutorials/a-simple-erc20-smart-contract#thats-it-whats-next