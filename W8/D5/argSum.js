function multiSum() {
    let allArgs = Array.from(arguments);
    let sum = 0;

    for (let i = 0; i < allArgs.length; i++) {
        sum += allArgs[i];
    }

    return sum;
} 

function multiSumRest(...args) {
    let allArgs = [...args];
    let sum = 0;

    for (let i = 0; i < allArgs.length; i++) {
        sum += allArgs[i];
    }

    return sum;

}

console.log(multiSumRest(3,4,5));