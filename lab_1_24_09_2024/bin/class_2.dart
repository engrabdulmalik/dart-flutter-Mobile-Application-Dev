void main() {
//Condiational Statements

// Single Alternative

  var marks = "eighty";

//   if (marks <= 40) {
//     print("Pass");
//   } else if (marks == 20) {
//     print("fail");
//   } else if (marks >= 80) {
//     print("You passed with \n flying colors");
//   } else {
//     print("You failed");
//   }

// print(marks > 50 ? "pass" : "fail");

  switch (marks) {
    case "eighty" when marks.length <= 40:

      print("You passed with flying colors");
   
    case 0:
      print("You failed");
    default:
      print("Incomplete Grade");
  }
}
