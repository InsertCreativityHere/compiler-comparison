% LargeFileInfo   Summary of LargeFileInfo
%
% Basic information about a single file.
%
% LargeFileInfo Properties:
%   path - The pathname.
%   checksum - The SHA-1 checksum of the file.
%   size - The size of the compressed file in number of bytes.
%   executable - The executable flag.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileInfo.ice by slice2matlab version 3.7.10

classdef LargeFileInfo
    properties
        % path - The pathname.
        path char
        % checksum - The SHA-1 checksum of the file.
        checksum
        % size - The size of the compressed file in number of bytes.
        size int64
        % executable - The executable flag.
        executable logical
    end
    methods
        function obj = LargeFileInfo(path, checksum, size, executable)
            if nargin == 0
                obj.path = '';
                obj.checksum = [];
                obj.size = 0;
                obj.executable = false;
            elseif ne(path, IceInternal.NoInit.Instance)
                obj.path = path;
                obj.checksum = checksum;
                obj.size = size;
                obj.executable = executable;
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
            r = IcePatch2.LargeFileInfo(IceInternal.NoInit.Instance);
            r.path = is.readString();
            r.checksum = is.readByteSeq();
            r.size = is.readLong();
            r.executable = is.readBool();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IcePatch2.LargeFileInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IcePatch2.LargeFileInfo();
            end
            os.writeString(v.path);
            os.writeByteSeq(v.checksum);
            os.writeLong(v.size);
            os.writeBool(v.executable);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IcePatch2.LargeFileInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
