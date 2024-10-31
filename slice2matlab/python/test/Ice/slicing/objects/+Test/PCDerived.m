% PCDerived   Summary of PCDerived
%
% PCDerived Properties:
%   pbs

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef PCDerived < Test.PDerived
    properties
        pbs
    end
    methods
        function obj = PCDerived(pi, ps, pb, pbs)
            if nargin == 0
                pi = 0;
                ps = '';
                pb = [];
                pbs = [];
                v = { pi, ps, pb };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [] };
            else
                v = { pi, ps, pb };
            end
            obj = obj@Test.PDerived(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pbs = pbs;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.pbs = Test.PBaseSeq.convert(obj.pbs);
            icePostUnmarshal@Test.PDerived(obj);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PCDerived', -1, false);
            Test.PBaseSeq.write(os, obj.pbs);
            os.endSlice();
            iceWriteImpl@Test.PDerived(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pbs = Test.PBaseSeq.read(is);
            is.endSlice();
            iceReadImpl@Test.PDerived(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PCDerived';
        end
    end
end
