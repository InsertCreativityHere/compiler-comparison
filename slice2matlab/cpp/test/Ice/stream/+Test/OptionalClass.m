classdef OptionalClass < Ice.Value
    %OPTIONALCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.OptionalClass()
    %       obj = Test.OptionalClass(bo, by, sh, i)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   OptionalClass Properties:
    %     bo
    %     by
    %     sh
    %     i
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BO
        %   logical scalar
        bo (1, 1) logical
        
        % BY
        %   uint8 scalar
        by (1, 1) uint8
        
        % SH
        %   int16 scalar | Ice.Unset
        sh (1, 1) = IceInternal.UnsetI.Instance
        
        % I
        %   int32 scalar | Ice.Unset
        i (1, 1) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OptionalClass(bo, by, sh, i)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.bo = bo;
                obj.by = by;
                obj.sh = sh;
                obj.i = i;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalClass', -1, true);
            os.writeBool(obj.bo);
            os.writeByte(obj.by);
            os.writeShortOpt(1, obj.sh);
            os.writeIntOpt(2, obj.i);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bo = is.readBool();
            obj.by = is.readByte();
            obj.sh = is.readShortOpt(1);
            obj.i = is.readIntOpt(2);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::OptionalClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OptionalClass'
    end
end
