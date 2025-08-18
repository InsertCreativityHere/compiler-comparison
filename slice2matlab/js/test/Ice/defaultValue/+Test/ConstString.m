classdef ConstString
    %CONSTSTRING
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties (Constant)
        value char = sprintf('foo \\ "bar\n \r\n\t\v\f\a\b?')
    end
end
