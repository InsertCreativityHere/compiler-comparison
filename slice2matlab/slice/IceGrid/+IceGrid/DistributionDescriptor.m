% DistributionDescriptor   Summary of DistributionDescriptor
%
% A distribution descriptor defines an IcePatch2 server and the directories to retrieve from the patch server.
% This descriptor is no longer used. It's provided only for schema compatibility with Ice 3.7 and earlier
% releases.
%
% DistributionDescriptor Properties:
%   icepatch - The proxy of the IcePatch2 server.
%   directories - The source directories.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef DistributionDescriptor
    properties
        % icepatch - The proxy of the IcePatch2 server.
        icepatch char
        % directories - The source directories.
        directories
    end
    methods
        function obj = DistributionDescriptor(icepatch, directories)
            if nargin == 0
                obj.icepatch = '';
                obj.directories = [];
            elseif ne(icepatch, IceInternal.NoInit.Instance)
                obj.icepatch = icepatch;
                obj.directories = directories;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.DistributionDescriptor(IceInternal.NoInit.Instance);
            r.icepatch = is.readString();
            r.directories = is.readStringSeq();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.DistributionDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.DistributionDescriptor();
            end
            os.writeString(v.icepatch);
            os.writeStringSeq(v.directories);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.DistributionDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
