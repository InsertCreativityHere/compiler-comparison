classdef Base < Ice.Value
    %BASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Base()
    %       obj = Test.Base(theS, str)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Base Properties:
    %     theS
    %     str
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THES
        %   Test.S scalar
        theS Test.S {mustBeScalarOrEmpty} = Test.S.empty
        
        % STR
        %   character vector
        str (1, :) char
    end
    methods
        function obj = Base(theS, str)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.theS = theS;
                obj.str = str;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            Test.S.ice_write(os, obj.theS);
            os.writeString(obj.str);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.theS = Test.S.ice_read(is);
            obj.str = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Base'
    end
end
