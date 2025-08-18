classdef MyClass1 < Ice.Value
    %MYCLASS1
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyClass1()
    %       obj = Test.MyClass1(tesT, myClass, myClass1)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyClass1 Properties:
    %     tesT
    %     myClass
    %     myClass1
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % TEST
        %   character vector
        tesT (1, :) char
        
        % MYCLASS
        %   Test.MyClassPrx scalar | empty array of Test.MyClassPrx
        myClass Test.MyClassPrx {mustBeScalarOrEmpty} = Test.MyClassPrx.empty
        
        % MYCLASS1
        %   character vector
        myClass1 (1, :) char
    end
    methods
        function obj = MyClass1(tesT, myClass, myClass1)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.tesT = tesT;
                obj.myClass = myClass;
                obj.myClass1 = myClass1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MyClass1'
    end
end
