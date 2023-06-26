/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const NFTS = []
// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_name, _ID, _eyeColor, _katana, _clothes) {
 const NFT = {
    "name": _name,
    "eyeColor": _eyeColor,
    "katana" :  _katana,
    "clothes": _clothes
 }
 NFTS.push(NFT);
 console.log("Minted: " + _name);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTS () {
for (let i = 0; i < NFTS.length; i++) {
    console.log("\nID: " + (i + 1));
    console.log("Name: " + NFTS[i].name);
    console.log("EyeColor: " + NFTS[i].eyeColor);
    console.log("Katana: " + NFTS[i].katana);
    console.log("Clothes: " + NFTS[i].clothes);
}
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("\n"+ NFTS.length);

}

// call your functions below this line
mintNFT("Aastha", "Brown", "Blade-1", "Katana-Girl");
mintNFT("Aditya", "Black", "Blade-2", "Katana-Boy");

listNFTS();
getTotalSupply();


