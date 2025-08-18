classdef CompactPCDerived < Test.CompactPDerived
    %COMPACTPCDERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.CompactPCDerived()
    %       obj = Test.CompactPCDerived(pbs)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CompactPCDerived Properties:
    %     pbs
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PBS
        %   cell array
        pbs (1, :) = {}
    end
    methods
        function obj = CompactPCDerived(pi, ps, pb, pbs)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {pi, ps, pb};
            end
            obj = obj@Test.CompactPDerived(superArgs{:});
            if nargin > 0
                obj.pbs = pbs;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.pbs = Test.PBaseSeq.convert(obj.pbs);
            icePostUnmarshal@Test.CompactPDerived(obj);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CompactPCDerived', 57, false);
            Test.PBaseSeq.write(os, obj.pbs);
            os.endSlice();
            iceWriteImpl@Test.CompactPDerived(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pbs = Test.PBaseSeq.read(is);
            is.endSlice();
            iceReadImpl@Test.CompactPDerived(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::CompactPCDerived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::CompactPCDerived'
        CompactId char = '57'
    end
end
