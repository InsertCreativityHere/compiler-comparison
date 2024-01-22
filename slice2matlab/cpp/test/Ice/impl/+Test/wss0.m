% wss0   Summary of wss0
%
% \'      single quote    byte 0x27 in ASCII encoding
% \"      double quote    byte 0x22 in ASCII encoding
% \?      question mark   byte 0x3f in ASCII encoding
% \\      backslash       byte 0x5c in ASCII encoding
% \a      audible bell    byte 0x07 in ASCII encoding
% \b      backspace       byte 0x08 in ASCII encoding
% \f      form feed - new page    byte 0x0c in ASCII encoding
% \n      line feed - new line    byte 0x0a in ASCII encoding
% \r      carriage return byte 0x0d in ASCII encoding
% \t      horizontal tab  byte 0x09 in ASCII encoding
% \v      vertical tab    byte 0x0b in ASCII encoding

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef wss0
    properties(Constant)
        value char = sprintf('''"?\\\a\b\f\n\r\t\v\006')
    end
end
