//  To Check if MetaMask is available
if (typeof window.ethereum !== 'undefined') {
  const connectButton = document.getElementById('connectButton');

  // Event listener for the "Connect Wallet" button
  connectButton.addEventListener('click', async () => {
    try {
      // Request access to the user's accounts
      const accounts = await window.ethereum.request({ method: 'eth_requestAccounts' });

      // Print the connected account(s) to the console
      console.log('Connected Account:', accounts[0]);
    } catch (error) {
      console.error('Error connecting to MetaMask:', error);
    }
  });
} else {
  console.error('MetaMask not found. Please install MetaMask extension in your browser.');
}

// this code is only to detect and connect metamask wallet. 
