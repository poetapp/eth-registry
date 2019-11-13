pragma solidity ^0.5.0;

contract PoetRegistry {
  struct CID {
    string cid;
  }

  address public _owner;
  CID[] public cids;
  
  event CidAdded(string cid, uint index);

  constructor() public {
    _owner = msg.sender;
  }

  function addCid(string memory cid) public {
    uint length = cids.push(CID(cid));
    emit CidAdded(cid, length - 1);
  }

  function getCidCount() public view returns (uint) {
    return cids.length;
  }

}
