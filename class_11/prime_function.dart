bool isPrime(int num){
  bool flag = false;
  for(int i=2; i<num; i++){
    if(num%i == 0){
      return false;
    } else {
      flag = true;
    }
  }
  return flag;
}


List filterPrime(List numbers){
  List primes = [];
  List nonPrimes = [];
  for(int i=0; i<numbers.length; i++){
    if(isPrime(numbers[i]) == true){
      primes.add(numbers[i]);
    } else {
      nonPrimes.add(numbers[i]);
    }
  }
  return [primes, nonPrimes];
}


void main(){
  
  List myNums = [1, 3, 5, 7, 12, 17, 20, 23, 25, 26];
  print(filterPrime(myNums));
  //print(isPrime(11));
    
}
