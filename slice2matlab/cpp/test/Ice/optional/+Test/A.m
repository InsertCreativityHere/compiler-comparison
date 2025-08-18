classdef A < Ice.Value
    %A
    %
    %   Creation
    %     Syntax
    %       obj = Test.A()
    %       obj = Test.A(requiredA, ma, mb, mc)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   A Properties:
    %     requiredA
    %     ma
    %     mb
    %     mc
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REQUIREDA
        %   int32 scalar
        requiredA (1, 1) int32 = 0
        
        % MA
        %   int32 scalar | Ice.Unset
        ma (1, 1) = IceInternal.UnsetI.Instance
        
        % MB
        %   int32 scalar | Ice.Unset
        mb (1, 1) = IceInternal.UnsetI.Instance
        
        % MC
        %   int32 scalar | Ice.Unset
        mc (1, 1) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = A(requiredA, ma, mb, mc)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.requiredA = requiredA;
                obj.ma = ma;
                obj.mb = mb;
                obj.mc = mc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::A', -1, true);
            os.writeInt(obj.requiredA);
            os.writeIntOpt(1, obj.ma);
            os.writeIntOpt(50, obj.mb);
            os.writeIntOpt(500, obj.mc);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.requiredA = is.readInt();
            obj.ma = is.readIntOpt(1);
            obj.mb = is.readIntOpt(50);
            obj.mc = is.readIntOpt(500);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::A';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::A'
    end
end
