
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef SBSKnownDerived < Test.SBase
    properties
        sbskd char
    end
    methods
        function obj = SBSKnownDerived(sb, sbskd)
            if nargin == 0
                sb = '';
                sbskd = '';
                v = { sb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { sb };
            end
            obj = obj@Test.SBase(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.sbskd = sbskd;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SBSKnownDerived', -1, false);
            os.writeString(obj.sbskd);
            os.endSlice();
            iceWriteImpl@Test.SBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sbskd = is.readString();
            is.endSlice();
            iceReadImpl@Test.SBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SBSKnownDerived';
        end
    end
end
