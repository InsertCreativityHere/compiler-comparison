% ShortEnum   Summary of ShortEnum
%
% ShortEnum Properties:
%   senum1
%   senum2
%   senum3
%   senum4
%   senum5
%   senum6
%   senum7
%   senum8
%   senum9
%   senum10
%   senum11

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ShortEnum < int32
    enumeration
        senum1 (3)
        senum2 (4)
        senum3 (10)
        senum4 (11)
        senum5 (20)
        senum6 (21)
        senum7 (30)
        senum8 (31)
        senum9 (40)
        senum10 (41)
        senum11 (32766)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.ShortEnum.senum1), 32766);
            else
                os.writeEnum(int32(v), 32766);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.ShortEnum.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(32766);
            r = Test.ShortEnum.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.ShortEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 3
                    r = Test.ShortEnum.senum1;
                case 4
                    r = Test.ShortEnum.senum2;
                case 10
                    r = Test.ShortEnum.senum3;
                case 11
                    r = Test.ShortEnum.senum4;
                case 20
                    r = Test.ShortEnum.senum5;
                case 21
                    r = Test.ShortEnum.senum6;
                case 30
                    r = Test.ShortEnum.senum7;
                case 31
                    r = Test.ShortEnum.senum8;
                case 40
                    r = Test.ShortEnum.senum9;
                case 41
                    r = Test.ShortEnum.senum10;
                case 32766
                    r = Test.ShortEnum.senum11;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
