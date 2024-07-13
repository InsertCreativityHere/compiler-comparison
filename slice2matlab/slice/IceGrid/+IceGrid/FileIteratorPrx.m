% FileIteratorPrx   Summary of FileIteratorPrx
%
% This interface provides access to IceGrid log file contents.
%
% FileIteratorPrx Methods:
%   read - Read lines from the log file.
%   readAsync - Read lines from the log file.
%   destroy - Destroy the iterator.
%   destroyAsync - Destroy the iterator.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef FileIteratorPrx < Ice.ObjectPrx
    methods
        function [result, lines] = read(obj, size, varargin)
            % read   Read lines from the log file.
            %
            % Parameters:
            %   size (int32) - Specifies the maximum number of bytes to be received. The server will ensure that the returned
            %     message doesn't exceed the given size.
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (logical) - True if EOF is encountered.
            %   lines (Ice.StringSeq) - The lines read from the file. If there was nothing to read from the file since the last call to
            %     read, an empty sequence is returned. The last line of the sequence is always incomplete (and therefore no
            %     '\n' should be added when writing the last line to the to the output device).
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if there was a problem to read lines from the file.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('read', 0, true, os_, true, IceGrid.FileIteratorPrx.read_ex_, varargin{:});
            is_.startEncapsulation();
            lines = is_.readStringSeq();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = readAsync(obj, size, varargin)
            % readAsync   Read lines from the log file.
            %
            % Parameters:
            %   size (int32) - Specifies the maximum number of bytes to be received. The server will ensure that the returned
            %     message doesn't exceed the given size.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.FileNotAvailableException - Raised if there was a problem to read lines from the file.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                lines = is_.readStringSeq();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = lines;
            end
            r_ = obj.iceInvokeAsync('read', 0, true, os_, 2, @unmarshal, IceGrid.FileIteratorPrx.read_ex_, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy   Destroy the iterator.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync   Destroy the iterator.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::FileIterator';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileIteratorPrx');
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
            % Returns (IceGrid.FileIteratorPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileIteratorPrx.ice_staticId(), 'IceGrid.FileIteratorPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.FileIteratorPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileIteratorPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        read_ex_ = { 'IceGrid.FileNotAvailableException' }
    end
end
