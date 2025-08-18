classdef CV < Ice.Value
    %CV
    %
    %   Creation
    %     Syntax
    %       obj = Test.CV()
    %       obj = Test.CV(i)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CV Properties:
    %     i
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
    end
    methods
        function obj = CV(i)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.i = i;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CV', -1, true);
            os.writeInt(obj.i);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::CV';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::CV'
    end
end
