//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage{
    uint public tokenCount;

    constructor() ERC721("Web3ladies NFT", "W3L"){}
       
    //functions that will allow us mint new nfts
    function mint(string memory _tokenURI) external returns(uint){
         tokenCount ++;
         _safeMint(msg.sender, tokenCount); //address we are minting for
         _setTokenURI(tokenCount, _tokenURI); //set metadata from the new minted NFT
         return(tokenCount); //return the ID of the token minted
     }
}
