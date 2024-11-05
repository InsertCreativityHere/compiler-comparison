
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestToken
    properties
        expectedResult logical
        description char
        code Test.StateCode
        config int16
        caseIndex int16
        testReference char
    end
    methods
        function obj = TestToken(expectedResult, description, code, config, caseIndex, testReference)
            if nargin == 0
                obj.expectedResult = false;
                obj.description = '';
                obj.code = Test.StateCode.Initial;
                obj.config = 0;
                obj.caseIndex = 0;
                obj.testReference = '';
            elseif ne(expectedResult, IceInternal.NoInit.Instance)
                obj.expectedResult = expectedResult;
                obj.description = description;
                obj.code = code;
                obj.config = config;
                obj.caseIndex = caseIndex;
                obj.testReference = testReference;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.TestToken(IceInternal.NoInit.Instance);
            r.expectedResult = is.readBool();
            r.description = is.readString();
            r.code = Test.StateCode.ice_read(is);
            r.config = is.readShort();
            r.caseIndex = is.readShort();
            r.testReference = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.TestToken();
            end
            os.writeBool(v.expectedResult);
            os.writeString(v.description);
            Test.StateCode.ice_write(os, v.code);
            os.writeShort(v.config);
            os.writeShort(v.caseIndex);
            os.writeString(v.testReference);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.TestToken.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.TestToken.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
