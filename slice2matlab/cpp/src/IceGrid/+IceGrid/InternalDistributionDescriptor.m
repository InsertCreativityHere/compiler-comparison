% InternalDistributionDescriptor   Summary of InternalDistributionDescriptor
%
% InternalDistributionDescriptor Properties:
%   icepatch - The proxy of the IcePatch2 server.
%   directories - The source directories.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef InternalDistributionDescriptor < Ice.Value
    properties
        % icepatch - The proxy of the IcePatch2 server.
        icepatch char
        % directories - The source directories.
        directories
    end
    methods
        function obj = InternalDistributionDescriptor(icepatch, directories)
            if nargin == 0
                obj.icepatch = '';
                obj.directories = [];
            elseif ne(icepatch, IceInternal.NoInit.Instance)
                obj.icepatch = icepatch;
                obj.directories = directories;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalDistributionDescriptor', -1, true);
            os.writeString(obj.icepatch);
            os.writeStringSeq(obj.directories);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.icepatch = is.readString();
            obj.directories = is.readStringSeq();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalDistributionDescriptor';
        end
    end
end
