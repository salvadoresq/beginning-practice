// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

contract conditions {
    uint public num;

    function set(uint _num) public {
        num = _num;
    }

    function get() public view returns (uint) {
        return num;
    }

    function foo(uint x) public returns (uint) {
        if (x < 20) {
            return 0;
        } else if (x < 30) {
            return 4;
        } else {
            return 8
        }
    }

    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i ==5) {
                break;
            }
        }
    }
}