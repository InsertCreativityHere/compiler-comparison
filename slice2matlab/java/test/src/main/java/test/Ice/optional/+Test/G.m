classdef G < Ice.Value
    %G
    %
    %   Creation
    %     Syntax
    %       obj = Test.G()
    %       obj = Test.G(gg1Opt, gg2, gg2Opt, gg1)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   G Properties:
    %     gg1Opt
    %     gg2
    %     gg2Opt
    %     gg1
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % GG1OPT
        %   Test.G1 scalar | Ice.Unset
        gg1Opt {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % GG2
        %   Test.G2 scalar
        gg2 Test.G2 {mustBeScalarOrEmpty} = Test.G2.empty
        
        % GG2OPT
        %   Test.G2 scalar | Ice.Unset
        gg2Opt {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % GG1
        %   Test.G1 scalar
        gg1 Test.G1 {mustBeScalarOrEmpty} = Test.G1.empty
    end
    methods
        function obj = G(gg1Opt, gg2, gg2Opt, gg1)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.gg1Opt = gg1Opt;
                obj.gg2 = gg2;
                obj.gg2Opt = gg2Opt;
                obj.gg1 = gg1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::G', -1, true);
            Test.G2.ice_write(os, obj.gg2);
            Test.G1.ice_write(os, obj.gg1);
            Test.G2.ice_writeOpt(os, 0, obj.gg2Opt);
            Test.G1.ice_writeOpt(os, 1, obj.gg1Opt);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.gg2 = Test.G2.ice_read(is);
            obj.gg1 = Test.G1.ice_read(is);
            obj.gg2Opt = Test.G2.ice_readOpt(is, 0);
            obj.gg1Opt = Test.G1.ice_readOpt(is, 1);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::G';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::G'
    end
end
