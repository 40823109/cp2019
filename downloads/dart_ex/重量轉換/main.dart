kgtolb(num kg){
return kg* 2.204;
}

lbtokg(num lb){
return lb* 0.454;
}


main() {
  int len;
  var type;
  var number;
  List temp = ["25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];
  for (var data in temp) {
    len = data.length;
    type = data[len-2];
    number = data.substring(0, len-2);
    number = int.parse(number);
    
    if (type == "k"){
       print(" $number 磅 =  ${lbtokg(number)} 公斤");
    }else{
      print(" $number 公斤 =  ${kgtolb(number)} 磅");
    }
      
  } 
} 