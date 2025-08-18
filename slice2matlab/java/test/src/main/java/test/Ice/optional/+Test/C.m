classdef C < Test.B
    %C
    %
    %   Creation
    %     Syntax
    %       obj = Test.C()
    %       obj = Test.C(ss, ms)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C Properties:
    %     ss
    %     ms
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SS
        %   character vector
        ss (1, :) char
        
        % MS
        %   character vector | Ice.Unset
        ms (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = C(requiredA, ma, mb, mc, requiredB, md, ss, ms)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 8, 'Invalid number of arguments');
                superArgs = {requiredA, ma, mb, mc, requiredB, md};
            end
            obj = obj@Test.B(superArgs{:});
            if nargin > 0
                obj.ss = ss;
                obj.ms = ms;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, false);
            os.writeString(obj.ss);
            os.writeStringOpt(890, obj.ms);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            obj.ms = is.readStringOpt(890);
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::C'
    end
end
