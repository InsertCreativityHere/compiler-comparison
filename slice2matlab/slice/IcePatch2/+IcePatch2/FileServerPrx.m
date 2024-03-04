% FileServerPrx   Summary of FileServerPrx
%
% The interface that provides access to files.
%
% FileServerPrx Methods:
%   getLargeFileInfoSeq - Returns file information for the specified partition.
%   getLargeFileInfoSeqAsync - Returns file information for the specified partition.
%   getChecksumSeq - Return the checksums for all partitions.
%   getChecksumSeqAsync - Return the checksums for all partitions.
%   getChecksum - Return the master checksum for all partitions.
%   getChecksumAsync - Return the master checksum for all partitions.
%   getLargeFileCompressed - Read the specified file.
%   getLargeFileCompressedAsync - Read the specified file.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileServer.ice by slice2matlab version 3.8.0-alpha.0

classdef FileServerPrx < Ice.ObjectPrx
    methods
        function result = getLargeFileInfoSeq(obj, partition, varargin)
            % getLargeFileInfoSeq   Returns file information for the specified partition.
            %
            % Parameters:
            %   partition (int32) - The partition number in the range 0-255.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IcePatch2.LargeFileInfoSeq) - A sequence containing information about the files in the specified partition.
            %
            % Exceptions:
            %   IcePatch2.PartitionOutOfRangeException - If the partition number is out of range.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(partition);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getLargeFileInfoSeq', 1, true, os_, true, IcePatch2.FileServerPrx.getLargeFileInfoSeq_ex_, varargin{:});
            is_.startEncapsulation();
            result = IcePatch2.LargeFileInfoSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLargeFileInfoSeqAsync(obj, partition, varargin)
            % getLargeFileInfoSeqAsync   Returns file information for the specified partition.
            %
            % Parameters:
            %   partition (int32) - The partition number in the range 0-255.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IcePatch2.PartitionOutOfRangeException - If the partition number is out of range.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(partition);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IcePatch2.LargeFileInfoSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLargeFileInfoSeq', 1, true, os_, 1, @unmarshal, IcePatch2.FileServerPrx.getLargeFileInfoSeq_ex_, varargin{:});
        end
        function result = getChecksumSeq(obj, varargin)
            % getChecksumSeq   Return the checksums for all partitions.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IcePatch2.ByteSeqSeq) - A sequence containing 256 checksums. Partitions with a checksum that differs from the previous checksum
            % for the same partition contain updated files. Partitions with a checksum that is identical to the previous
            % checksum do not contain updated files.
            
            is_ = obj.iceInvoke('getChecksumSeq', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IcePatch2.ByteSeqSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getChecksumSeqAsync(obj, varargin)
            % getChecksumSeqAsync   Return the checksums for all partitions.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IcePatch2.ByteSeqSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getChecksumSeq', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getChecksum(obj, varargin)
            % getChecksum   Return the master checksum for all partitions. If this checksum is the same as for a previous run, the entire
            % file set is up-to-date.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ByteSeq) - The master checksum for the file set.
            
            is_ = obj.iceInvoke('getChecksum', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = getChecksumAsync(obj, varargin)
            % getChecksumAsync   Return the master checksum for all partitions. If this checksum is the same as for a previous run, the entire
            % file set is up-to-date.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getChecksum', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getLargeFileCompressed(obj, path, pos, num, varargin)
            % getLargeFileCompressed   Read the specified file. This operation may only return fewer bytes than requested in case there was an
            % end-of-file condition.
            %
            % Parameters:
            %   path (char) - The pathname (relative to the data directory) for the file to be read.
            %   pos (int64) - The file offset at which to begin reading.
            %   num (int32) - The number of bytes to be read.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ByteSeq) - A sequence containing the compressed file contents.
            %
            % Exceptions:
            %   IcePatch2.FileAccessException - If an error occurred while trying to read the file.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(path);
            os_.writeLong(pos);
            os_.writeInt(num);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getLargeFileCompressed', 1, true, os_, true, IcePatch2.FileServerPrx.getLargeFileCompressed_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = getLargeFileCompressedAsync(obj, path, pos, num, varargin)
            % getLargeFileCompressedAsync   Read the specified file. This operation may only return fewer bytes than requested in case there was an
            % end-of-file condition.
            %
            % Parameters:
            %   path (char) - The pathname (relative to the data directory) for the file to be read.
            %   pos (int64) - The file offset at which to begin reading.
            %   num (int32) - The number of bytes to be read.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IcePatch2.FileAccessException - If an error occurred while trying to read the file.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(path);
            os_.writeLong(pos);
            os_.writeInt(num);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLargeFileCompressed', 1, true, os_, 1, @unmarshal, IcePatch2.FileServerPrx.getLargeFileCompressed_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IcePatch2::FileServer';
        end
        function r = ice_read(is)
            r = is.readProxy('IcePatch2.FileServerPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (IcePatch2.FileServerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IcePatch2.FileServerPrx.ice_staticId(), 'IcePatch2.FileServerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IcePatch2.FileServerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IcePatch2.FileServerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = FileServerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        getLargeFileInfoSeq_ex_ = { 'IcePatch2.PartitionOutOfRangeException' }
        getLargeFileCompressed_ex_ = { 'IcePatch2.FileAccessException' }
    end
end
