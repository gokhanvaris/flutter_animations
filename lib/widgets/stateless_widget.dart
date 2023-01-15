/*
StatelesWidget, durumu değişmeyecek ve ekranda bir kere çizildikten sonra değişime uğramayacak Widget’ların sınıfıdır. Örneğin en basit haliyle bir butonu ele alalım. Bir buton, kullanıcı deneyimi açısından bir defa ekrana basılır ve bir değişime uğramaz. 
İçerisindeki onPressed metotu ile birlikte başka widget’lar değişime uğrar. 
Bu durumda bir butonun StatelessWidget olarak yazılması uygundur.
*/

import 'package:flutter/material.dart';

class StatelessWidgetLearn
    extends StatelessWidget {
  const StatelessWidgetLearn({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
