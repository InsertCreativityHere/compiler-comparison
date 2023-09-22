% FileReaderPrx   Summary of FileReaderPrx
%
% FileReaderPrx Methods:
%   getOffsetFromEnd - Count the number of given lines from the end of the file and return the file offset.
%   getOffsetFromEndAsync - Count the number of given lines from the end of the file and return the file offset.
%   read - Read lines (or size bytes) at the specified position from the given file.
%   readAsync - Read lines (or size bytes) at the specified position from the given file.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef FileReaderPrx < Ice.ObjectPrx
    methods
        function result = getOffsetFromEnd(obj, filename, lines, varargin)
            % getOffsetFromEnd   Count the number of given lines from the end of the file and
            % return the file offset.
            %
            % Parameters:
            %   filename (char)
            %   lines (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int64)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeInt(lines);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getOffsetFromEnd', 2, true, os_, true, IceGrid.FileReaderPrx.getOffsetFromEnd_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readLong();
            is_.endEncapsulation();
        end
        function r_ = getOffsetFromEndAsync(obj, filename, lines, varargin)
            % getOffsetFromEndAsync   Count the number of given lines from the end of the file and
            % return the file offset.
            %
            % Parameters:
            %   filename (char)
            %   lines (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeInt(lines);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getOffsetFromEnd', 2, true, os_, 1, @unmarshal, IceGrid.FileReaderPrx.getOffsetFromEnd_ex_, varargin{:});
        end
        function [result, newPos, lines] = read(obj, filename, pos, size, varargin)
            % read   Read lines (or size bytes) at the specified position from the given file.
            %
            % Parameters:
            %   filename (char)
            %   pos (int64)
            %   size (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (logical)
            %   newPos (int64)
            %   lines (Ice.StringSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeLong(pos);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('read', 2, true, os_, true, IceGrid.FileReaderPrx.read_ex_, varargin{:});
            is_.startEncapsulation();
            newPos = is_.readLong();
            lines = is_.readStringSeq();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = readAsync(obj, filename, pos, size, varargin)
            % readAsync   Read lines (or size bytes) at the specified position from the given file.
            %
            % Parameters:
            %   filename (char)
            %   pos (int64)
            %   size (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeLong(pos);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                newPos = is_.readLong();
                lines = is_.readStringSeq();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = newPos;
                varargout{3} = lines;
            end
            r_ = obj.iceInvokeAsync('read', 2, true, os_, 3, @unmarshal, IceGrid.FileReaderPrx.read_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::FileReader';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileReaderPrx');
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
            % Returns (IceGrid.FileReaderPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileReaderPrx.ice_staticId(), 'IceGrid.FileReaderPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.FileReaderPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileReaderPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = FileReaderPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        getOffsetFromEnd_ex_ = { 'IceGrid.FileNotAvailableException' }
        read_ex_ = { 'IceGrid.FileNotAvailableException' }
    end
end
