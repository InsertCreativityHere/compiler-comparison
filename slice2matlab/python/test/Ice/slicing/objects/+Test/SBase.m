classdef SBase < Ice.Value
    %SBASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.SBase()
    %       obj = Test.SBase(sb)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SBase Properties:
    %     sb
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SB
        %   character vector
        sb (1, :) char
    end
    methods
        function obj = SBase(sb)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.sb = sb;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SBase', -1, true);
            os.writeString(obj.sb);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sb = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::SBase';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::SBase'
    end
end
