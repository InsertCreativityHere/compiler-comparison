classdef OneOptional < Ice.Value
    %ONEOPTIONAL
    %
    %   Creation
    %     Syntax
    %       obj = Test.OneOptional()
    %       obj = Test.OneOptional(a)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   OneOptional Properties:
    %     a
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   int32 scalar | Ice.Unset
        a (1, 1) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OneOptional(a)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.a = a;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OneOptional', -1, true);
            os.writeIntOpt(1, obj.a);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readIntOpt(1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::OneOptional';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OneOptional'
    end
end
