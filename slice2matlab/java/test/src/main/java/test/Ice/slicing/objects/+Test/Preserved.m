classdef Preserved < Test.PBase
    %PRESERVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Preserved()
    %       obj = Test.Preserved(ps)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Preserved Properties:
    %     ps
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PS
        %   character vector
        ps (1, :) char
    end
    methods
        function obj = Preserved(pi, ps)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {pi};
            end
            obj = obj@Test.PBase(superArgs{:});
            if nargin > 0
                obj.ps = ps;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Preserved', -1, false);
            os.writeString(obj.ps);
            os.endSlice();
            iceWriteImpl@Test.PBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.ps = is.readString();
            is.endSlice();
            iceReadImpl@Test.PBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Preserved';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Preserved'
    end
end
