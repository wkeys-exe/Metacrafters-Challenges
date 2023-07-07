## JS Assessment

Create a variable that can hold a number of NFT's. What type of variable might this be?
A variable of type array is created to hold the NFTs.

```javascript
const NFTS = []
```
Create an object inside your mintNFT function that will hold the metadata for your NFTs. The metadata values will be passed to the function as parameters. When the NFT is ready, you will store it in the variable created above.

```javascript
function mintNFT (_name, _eyeColor, _katana, _clothes) {
    const NFT = {
        "name": _name,
        "eyeColor": _eyeColor,
        "katana" :  _katana,
        "clothes": _clothes
    }
    NFTS.push(NFT);
    console.log("Minted: " + _name);
}
```

Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))

```javascript
function listNFTS () {
    for (let i = 0; i < NFTS.length; i++) {
        console.log("\nID: " + (i + 1));
        console.log("Name: " + NFTS[i].name);
        console.log("EyeColor: " + NFTS[i].eyeColor);
        console.log("Katana: " + NFTS[i].katana);
        console.log("Clothes: " + NFTS[i].clothes);
    }
}
```

For good measure, getTotalSupply() should return the number of NFT's you have created

```javascript
function getTotalSupply() {
    console.log("\n"+ NFTS.length);
}

```
In the code, we have called the functions below the code block that define them.

```javascript
mintNFT("Wkeys", "Blue", "Katana-1", "Samurai-clothes");
mintNFT("Aditya", "Red", "Katana-2", "Ninja-clothes");
mintNFT("Titan", "Orange", "Katana-3", "Titan-clothes");
listNFTS();
getTotalSupply();
```
## To Test the code

This code can be tested at https://www.gitpod.io/cde

## Created By

Aditya Padwal - Discord - adityx.a #3994
