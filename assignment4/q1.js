const crypto = require('crypto');

function findHashWithPrefix(prefix) {
    let i = 0;
    let hash = '';
    while (true) {
        let input = i.toString();
        hash = crypto.createHash('sha256').update(input).digest('hex');
        if (hash.startsWith(prefix)) {
            console.log(`Found input: ${input}`);
            console.log(`SHA-256 hash: ${hash}`);
            break;
        }
        i++;
    }
}

findHashWithPrefix('00000');
