classdef OptionalWithCustom < Ice.Value
    %OPTIONALWITHCUSTOM
    %
    %   Creation
    %     Syntax
    %       obj = Test.OptionalWithCustom()
    %       obj = Test.OptionalWithCustom(l)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   OptionalWithCustom Properties:
    %     l
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % L
        %   Test.SmallStruct vector | Ice.Unset
        l (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OptionalWithCustom(l)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.l = l;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalWithCustom', -1, true);
            Test.SmallStructList.writeOpt(os, 1, obj.l);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = Test.SmallStructList.readOpt(is, 1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::OptionalWithCustom';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OptionalWithCustom'
    end
end
