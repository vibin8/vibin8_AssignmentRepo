const crypto = require('crypto');

function findNonceForTransaction(transaction, prefix) {
    let nonce = 0;
    let hash = '';
    while (true) {
        let input = transaction + nonce.toString();
        hash = crypto.createHash('sha256').update(input).digest('hex');
        if (hash.startsWith(prefix)) {
            console.log(`Found nonce: ${nonce}`);
            console.log(`SHA-256 hash: ${hash}`);
            break;
        }
        nonce++;
    }
}

const transaction = `Dev => Karan | Rs 100\nKaran => Darsh | Rs 10`;
findNonceForTransaction(transaction, '00000');
