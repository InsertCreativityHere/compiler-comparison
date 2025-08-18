classdef WD < Ice.Value
    %WD
    %
    %   Creation
    %     Syntax
    %       obj = Test.WD()
    %       obj = Test.WD(a, s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   WD Properties:
    %     a
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   int32 scalar | Ice.Unset
        a (1, 1) = 5
        
        % S
        %   character vector | Ice.Unset
        s (1, :) = sprintf('test')
    end
    methods
        function obj = WD(a, s)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.a = a;
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::WD', -1, true);
            os.writeIntOpt(1, obj.a);
            os.writeStringOpt(2, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readIntOpt(1);
            obj.s = is.readStringOpt(2);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::WD';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::WD'
    end
end
