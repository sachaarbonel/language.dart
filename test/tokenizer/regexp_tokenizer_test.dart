library language.test.tokenizer.regexp_tokenizer_test;

import 'package:language/src/tokenizer.dart';
import 'package:test/test.dart';

void main() {
  RegExpTokenizer tokenizer = new RegExpTokenizer(r'[A-Z]\w+');
  
  test('test RegExpTokenizer', () {

    expect(tokenizer.tokenize('Good muffins cost 3.88\nin New York.  Please buy me\ntwo of them.\n\nThanks.'),
               orderedEquals(['Good', 'New', 'York', 'Please', 'Thanks']));

  });
}
