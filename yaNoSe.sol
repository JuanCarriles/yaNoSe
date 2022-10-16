pragma solidity ^0.5.0;

contract simplestorage {
   uint public storedData;
   uint public storedData2;

   event DataStored(uint data1, uint data2);

   constructor(uint initVal, uint initVal2) public {
      storedData = initVal;
      storedData2 = initVal2;
   }

   function set(uint x, uint y) public returns (uint value, uint value2) {
      storedData = x;
      storedData2 = y;
      emit DataStored(x, y);

      return (storedData, storedData2);
   }

   function get1() public view returns (uint retVal) {
      return storedData;
   }

   function query1() public view returns (uint retVal) {
      return storedData;
   }

   function get2() public view returns (uint retVal1) {
      return storedData2;
   }

   function query2() public view returns (uint retVal1) {
      return storedData2;
   }
}
