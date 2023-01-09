//string firstName = "Bo";
//string message = $"Hello {firstName}, you're a true gentleman!";

//if (firstName == "Bob") {
//    Console.WriteLine(message);
//}
//else
//{
//    Console.WriteLine("The val is something else.");
//}

string inputStr = "";

while (inputStr != ("exit") && inputStr !=("Exit")) {
    Console.WriteLine("Write something");
    inputStr = Console.ReadLine();
    Console.WriteLine($"You just entered {inputStr}");

}