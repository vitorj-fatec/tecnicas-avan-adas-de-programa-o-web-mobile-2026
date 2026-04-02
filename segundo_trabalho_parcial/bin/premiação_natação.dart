import 'dart:io';


void main(){
  print('Insira o valor da distancia percorrida?');
  String? distancia = stdin.readLineSync();

  if(distancia==null){
    print('O campo distância é obrigatorio');
    return;
  }

  double? valor = double.tryParse(distancia) ?? 0;/*?? e um else basicamente, então se o valor for nulo ele defini 0 */
  double premio = 0;

  if(valor < 800){
    premio = 5000;
  }else if(valor >= 800 && valor < 1500 ){
    premio = 10000;
  }
  else{
    premio = 15000;
  }

   print('Você percorreu $valor, e por isso recebeu o premio de $premio');
}