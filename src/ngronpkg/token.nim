type

  TokenKind* = enum
    LeftBrace,
    RightBrace,
    LeftBracket,
    RightBracket,
    Comma,
    Equal,
    Semicolon,
    Dot,
    Colon,
    String,
    Number,
    Boolean,
    Null,
    Identifier,
    Eof

  Token* = ref object
    kind*: TokenKind
    lexeme*: string
    start*: int

proc newToken*(kind: TokenKind, lexeme: string, start: int): Token =
  new(result)
  result.kind = kind
  result.lexeme = lexeme
  result.start = start

proc `$`*(self: Token): string =
  result &= "Token("
  result &= $self.kind
  result &= ", '"
  result &= self.lexeme
  result &= "')"
