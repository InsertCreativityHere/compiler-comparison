% MyClass1   Summary of MyClass1
%
% MyClass1 Properties:
%   tesT
%   myClass
%   myClass1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.9

classdef MyClass1 < Ice.Value
    properties
        tesT char
        myClass
        myClass1 char
    end
    methods
        function obj = MyClass1(tesT, myClass, myClass1)
            if nargin == 0
                obj.tesT = '';
                obj.myClass = [];
                obj.myClass1 = '';
            elseif ne(tesT, IceInternal.NoInit.Instance)
                obj.tesT = tesT;
                obj.myClass = myClass;
                obj.myClass1 = myClass1;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MyClass1', -1, true);
            os.writeString(obj.tesT);
            os.writeProxy(obj.myClass);
            os.writeString(obj.myClass1);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.tesT = is.readString();
            obj.myClass = Test.MyClassPrx.ice_read(is);
            obj.myClass1 = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyClass1';
        end
    end
end
