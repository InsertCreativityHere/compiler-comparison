classdef F < Test.E
    %F
    %
    %   Creation
    %     Syntax
    %       obj = Test.F()
    %       obj = Test.F(fsf)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   F Properties:
    %     fsf
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FSF
        %   Test.FixedStruct scalar | Ice.Unset
        fsf {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
    end
    methods
        function obj = F(fse, fsf)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {fse};
            end
            obj = obj@Test.E(superArgs{:});
            if nargin > 0
                obj.fsf = fsf;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F', -1, false);
            Test.FixedStruct.ice_writeOpt(os, 1, obj.fsf);
            os.endSlice();
            iceWriteImpl@Test.E(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.fsf = Test.FixedStruct.ice_readOpt(is, 1);
            is.endSlice();
            iceReadImpl@Test.E(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::F';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::F'
    end
end
