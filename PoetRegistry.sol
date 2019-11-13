pragma solidity ^0.5.0;

contract PoetRegistry {
  struct CID {
    string cid;
  }

  address public _owner;
  CID[] public cids;

  constructor() public {
    _owner = msg.sender;
  }

  function addCid(string memory cid) public {
    cids.push(CID(cid));
  }

  function getCidCount() public view returns (uint) {
    return cids.length;
  }

}
