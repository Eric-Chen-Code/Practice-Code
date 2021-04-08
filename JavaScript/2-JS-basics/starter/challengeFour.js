var mark = {
    fullName: 'Mark Johnson',
    mass: 190,
    height: 2,
    calcBMI: function() {
        this.bmi = (this.mass)/(this.height * this.height);
        return this.bmi;
    }
};

var john = {
    fullName: 'John Appleseed',
    mass: 180,
    height: 2,
    calcBMI: function() {
        this.bmi = (this.mass)/(this.height * this.height);
        return this.bmi;
    }
};

if (john.calcBMI() > mark.calcBMI()) {
    console.log(john.bmi);
}
else {
    console.log(mark.bmi);
}