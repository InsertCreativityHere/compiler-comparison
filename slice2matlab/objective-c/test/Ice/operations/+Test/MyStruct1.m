% MyStruct1   Summary of MyStruct1
%
% MyStruct1 Properties:
%   tesT
%   myClass
%   myStruct1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.10

classdef MyStruct1
    properties
        tesT char
        myClass
        myStruct1 char
    end
    methods
        function obj = MyStruct1(tesT, myClass, myStruct1)
            if nargin == 0
                obj.tesT = '';
                obj.myClass = [];
                obj.myStruct1 = '';
            elseif ne(tesT, IceInternal.NoInit.Instance)
                obj.tesT = tesT;
                obj.myClass = myClass;
                obj.myStruct1 = myStruct1;
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
            r = Test.MyStruct1(IceInternal.NoInit.Instance);
            r.tesT = is.readString();
            r.myClass = Test.MyClassPrx.ice_read(is);
            r.myStruct1 = is.readString();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.MyStruct1.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.MyStruct1();
            end
            os.writeString(v.tesT);
            os.writeProxy(v.myClass);
            os.writeString(v.myStruct1);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.MyStruct1.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
