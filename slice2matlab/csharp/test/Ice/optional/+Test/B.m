classdef B < Test.A
    %B
    %
    %   Creation
    %     Syntax
    %       obj = Test.B()
    %       obj = Test.B(requiredB, md)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   B Properties:
    %     requiredB
    %     md
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REQUIREDB
        %   int32 scalar
        requiredB (1, 1) int32
        
        % MD
        %   int32 scalar | Ice.Unset
        md (1, 1) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = B(requiredA, ma, mb, mc, requiredB, md)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 6, 'Invalid number of arguments');
                superArgs = {requiredA, ma, mb, mc};
            end
            obj = obj@Test.A(superArgs{:});
            if nargin > 0
                obj.requiredB = requiredB;
                obj.md = md;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B', -1, false);
            os.writeInt(obj.requiredB);
            os.writeIntOpt(10, obj.md);
            os.endSlice();
            iceWriteImpl@Test.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.requiredB = is.readInt();
            obj.md = is.readIntOpt(10);
            is.endSlice();
            iceReadImpl@Test.A(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::B'
    end
end
