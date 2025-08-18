classdef ClassNoDefaultsBase < Ice.Value
    %CLASSNODEFAULTSBASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.ClassNoDefaultsBase()
    %       obj = Test.ClassNoDefaultsBase(str, c1, bs)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ClassNoDefaultsBase Properties:
    %     str
    %     c1
    %     bs
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % STR
        %   character vector
        str (1, :) char
        
        % C1
        %   Test.Color scalar
        c1 (1, 1) Test.Color
        
        % BS
        %   uint8 vector
        bs (1, :) uint8
    end
    methods
        function obj = ClassNoDefaultsBase(str, c1, bs)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.str = str;
                obj.c1 = c1;
                obj.bs = bs;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassNoDefaultsBase', -1, true);
            os.writeString(obj.str);
            Test.Color.ice_write(os, obj.c1);
            os.writeByteSeq(obj.bs);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.c1 = Test.Color.ice_read(is);
            obj.bs = is.readByteSeq();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ClassNoDefaultsBase';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ClassNoDefaultsBase'
    end
end
