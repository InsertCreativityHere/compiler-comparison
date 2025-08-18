classdef PCUnknown < Test.PBase
    %PCUNKNOWN
    %
    %   Creation
    %     Syntax
    %       obj = Test.PCUnknown()
    %       obj = Test.PCUnknown(pu)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PCUnknown Properties:
    %     pu
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PU
        %   character vector
        pu (1, :) char
    end
    methods
        function obj = PCUnknown(pi, pu)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {pi};
            end
            obj = obj@Test.PBase(superArgs{:});
            if nargin > 0
                obj.pu = pu;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PCUnknown', -1, false);
            os.writeString(obj.pu);
            os.endSlice();
            iceWriteImpl@Test.PBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pu = is.readString();
            is.endSlice();
            iceReadImpl@Test.PBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PCUnknown';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PCUnknown'
    end
end
