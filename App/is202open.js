//Is 202 open? Lets find out

//get list of classes in 202
//STORED AS - (Weekday, StartHour, StartMinute, EndHour, EndMinute, LastDay)

//store the classes
var last = new Date(2019, 5, 8);
var class1 = {weekday:1, startHour:10, startMinute:10, endHour:12, endMinute:45, lastDay:last};
var class2 = {weekday:1, startHour:13, startMinute:25, endHour:14, endMinute:15, lastDay:last};
var class3 = {weekday:3, startHour:10, startMinute:10, endHour:12, endMinute:45, lastDay:last};
var class4 = {weekday:3, startHour:13, startMinute:25, endHour:14, endMinute:15, lastDay:last};
var classes = new Array(class1, class2, class3, class4);

//store current DotW/Time
var today = new Date();
var currDotW = today.getDay();
var currHour = today.getHours();
var currMinute = today.getMinutes();
var printed = false;

//loop through the list of classes
for (var i = 0; i < classes.length; i++) {
    //if the current date is after the last day of classes
    if (today > classes[i].lastDay) {
        //remove the class from the list/continue
        continue;
    }
    //if the current DotW is the class DotW and the curr time in between the start and stop time
    if (currDotW == classes[i].weekday && currHour >= classes[i].startHour
        && currMinute >= classes[i].startMinute && currHour <= classes[i].endHour
        && currMinute <= classes[i].endMinute) {
        //there's a class, return "no"
        document.write("No");
        printed = true;
    }
}

//end of the loop, return "yes"
if (!printed) {
    document.write("Yes");
}
