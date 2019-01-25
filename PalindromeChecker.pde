public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String a = "";
  String b = "";
  for (int i = 0; i<word.length();i++){
     if(Character.isLetter(word.charAt(i))==true){
      //a = a + word.charAt(i);
      a = a+ word.substring(i,i+1).toLowerCase();
     }
   }
   //System.out.println(a);
   for (int i = 0; i<word.length();i++){
    
     if(Character.isLetter(reverse(word).charAt(i))==true){
      //b = b+reverse(word).charAt(i);
      //b = b + reverse(word).charAt(i);
       b = b+reverse(word).substring(i,i+1).toLowerCase();
     }
   }
  if(a.equals(b)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
  for (int i =str.length()-1; i>=0;i--){
    sNew = sNew+str.substring(i,i+1);
  }
    return sNew;
}
