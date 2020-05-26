var bills = [124, 48, 268];
var tips = [];
var pay = [];

for (i = 0; i < bills.length; i++) {
    if (bills[i] < 50) {
        tips[i] = bills[i] * 0.2;
        pay[i] = tips[i] + bills[i];
    }
    else if ((bills[i] >= 50) && (bills[i] <= 200)) {
        tips[i] = bills[i] * 0.15;
        pay[i] = tips[i] + bills[i];
    }
    else {
        tips[i] = bills[i] *0.1;
        pay[i] = tips[i] + bills[i];
    }
}

console.log(bills, tips, pay);
