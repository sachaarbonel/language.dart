part of language.tokenizer;

/// A RegExpTokenizer splits a string into substrings using a regular expression.
// For example, the following tokenizer forms tokens out of alphabetic sequences,
// money expressions, and any other non-whitespace sequences

///
///     RegExpTokenizer tokenizer = new RegExpTokenizer(r'[A-Z]\w+');
///     tokenizer.tokenize('Good muffins cost 3.88\nin New York.  Please buy me\ntwo of them.\n\nThanks.');
///
class RegExpTokenizer implements Tokenizer {
  String source;
  bool multiLine;
  bool caseSensitive;
  RegExpTokenizer(this.source,
      {this.multiLine: false, this.caseSensitive: true});

  List<String> tokenize(String text) {
    return RegExp(source, multiLine: multiLine,caseSensitive: caseSensitive).allMatches(text).map((m)=> m.group(0)).toList();
  }
}
