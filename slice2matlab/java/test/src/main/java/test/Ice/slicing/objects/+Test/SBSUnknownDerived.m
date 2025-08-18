classdef SBSUnknownDerived < Test.SBase
    %SBSUNKNOWNDERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.SBSUnknownDerived()
    %       obj = Test.SBSUnknownDerived(sbsud)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SBSUnknownDerived Properties:
    %     sbsud
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SBSUD
        %   character vector
        sbsud (1, :) char
    end
    methods
        function obj = SBSUnknownDerived(sb, sbsud)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {sb};
            end
            obj = obj@Test.SBase(superArgs{:});
            if nargin > 0
                obj.sbsud = sbsud;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SBSUnknownDerived', -1, false);
            os.writeString(obj.sbsud);
            os.endSlice();
            iceWriteImpl@Test.SBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sbsud = is.readString();
            is.endSlice();
            iceReadImpl@Test.SBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::SBSUnknownDerived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::SBSUnknownDerived'
    end
end
