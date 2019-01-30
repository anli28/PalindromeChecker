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
  String cool = reverse(onlyLetters(noSpaces(noCapitals(word))));
  String sucks = onlyLetters(noSpaces(noCapitals(word)));
  if(sucks.equals(cool) == true){
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String s = "";
    for(int i = str.length()-1; i >= 0; i--){
    s = s + str.substring(i,i+1);
  }
    return s;
}


public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  if(sWord.equals("")){
    return "";
  }
  String s = "";
  for(int i = 0; i < sWord.length(); i++){
    if(Character.isLetter(sWord.charAt(i)) == true){
      s = s + sWord.charAt(i);
      }
  }
  return s;
  
}


public String onlyLetters(String sString){
  String s = new String();
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      s = s + sString.substring(i,i+1);
    }
  }
  return s;
}


