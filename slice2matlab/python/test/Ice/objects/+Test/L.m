classdef L < Ice.Value
    %L
    %
    %   Creation
    %     Syntax
    %       obj = Test.L()
    %       obj = Test.L(data)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   L Properties:
    %     data
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DATA
        %   character vector
        data (1, :) char
    end
    methods
        function obj = L(data)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.data = data;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::L', -1, true);
            os.writeString(obj.data);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.data = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::L';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::L'
    end
end
