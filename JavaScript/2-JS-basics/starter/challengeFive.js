var billing = {
    bills: [124, 48, 268, 180, 42],
    calcTips: function() {
        var tips = [];
        var pay = [];
        for (i = 0; i < bills.length; i++) {
            if (bills[i] < 50) {
                tips.push(bills[i] * 0.2);
                pay.push(bills[i] * 0.2 + bills[i]);
            }
            else if ((bills[i] >= 50) && (bills[i] <= 200)) {
                tips.push(bills[i] * 0.15);
                pay.push(bills[i] * 0.15 + bills[i]);
            }
            else {
                tips.push(bills[i] *0.1);
                pay.push(bills[i] *0.1 + bills[i]);
            }
        }
        }
    };