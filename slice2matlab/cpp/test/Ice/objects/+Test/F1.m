classdef F1 < Ice.Value
    %F1
    %
    %   Creation
    %     Syntax
    %       obj = Test.F1()
    %       obj = Test.F1(name)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   F1 Properties:
    %     name
    %
    %   Generated from Forward.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME
        %   character vector
        name (1, :) char
    end
    methods
        function obj = F1(name)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.name = name;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F1', -1, true);
            os.writeString(obj.name);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::F1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::F1'
    end
end
