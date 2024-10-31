% SBSUnknownDerived   Summary of SBSUnknownDerived
%
% SBSUnknownDerived Properties:
%   sbsud

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef SBSUnknownDerived < Test.SBase
    properties
        sbsud char
    end
    methods
        function obj = SBSUnknownDerived(sb, sbsud)
            if nargin == 0
                sb = '';
                sbsud = '';
                v = { sb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { sb };
            end
            obj = obj@Test.SBase(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.sbsud = sbsud;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SBSUnknownDerived';
        end
    end
end
