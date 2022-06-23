# SoulBoundToken

## A SoulBound Token(SBT) or an AccountBound Token(ABT)  
Is a token which belongs to a specific address or attached to your specific address.  
You **cannot transfer or sell** it!  
You can only revoke this token, or give it back to the account who issued it.  

#### Concept of *soulbound* items, once picked up, cannot be transferred or sold.
#### Purpose of *soulbound* items, it keeps the interest and excitement. 
#### [POAP](https://poap.xyz/) is an excellent example of an NFT that works better if it could be soulbound.  
If someone is looking at your POAP, they are not interested in whether or not you paid someone who attended some event.  
They are interested in whether or not you personally attended that event.

### Uses:-
1. It acts as a verification which is done off-chain.  
for ex: Certification, i can certify you for an accomplishment and take it back if there's an issue.
2. A trophy, as transferability is not desired in everything.
3. Reputation, let's say there are some kind of rewards or access for accounts with certain reputation, so here it's good. As no-one wants to transfer reputation.  

### Implementation:-
1. An NFT which cannot be transferred and can just burnt in case.
    * Create an NFT only owner can mint and send it ot somebody else.
    * Only owner or holder can burn.
    * Holder cannot transfer token except burning it.
2. [EIP-4973: Account-bound Tokens](https://eips.ethereum.org/EIPS/eip-4973) still a draft.
    * **interface IERC4973**, two events(Attest, Revoke), two functions(ownerOf, burn)
    * Attest is emitted when a new token is created and bounded to ana ccount.
    * Revoke is emitted when a token is revoked/removed.
    * ownerOf returns the owner of a token with a specific token ID.
    * burn function revokes a specific token ID.  
And for the metadata, It is mentioned to refer to ERC721 metadata.  
And also there's a reference implementation.
