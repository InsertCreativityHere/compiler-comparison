classdef FileReaderPrx < Ice.ObjectPrx
    %FILEREADERPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.FileReaderPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   FileReaderPrx Methods:
    %     getOffsetFromEnd - Count the number of given lines from the end of the file and return the file offset.
    %     getOffsetFromEndAsync - An asynchronous getOffsetFromEnd.
    %     read - Read lines (or size bytes) at the specified position from the given file.
    %     readAsync - An asynchronous read.
    %
    %   FileReaderPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileReader.
    %     uncheckedCast - Creates a FileReaderPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getOffsetFromEnd(obj, filename, lines, context)
            %GETOFFSETFROMEND Count the number of given lines from the end of the file and return the file offset.
            %
            %   Input Arguments
            %     filename
            %       character vector
            %     lines
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int64 scalar
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException
            
            arguments
                obj (1, 1) IceGrid.FileReaderPrx
                filename (1, :) char
                lines (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeInt(lines);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getOffsetFromEnd', 2, true, os_, true, IceGrid.FileReaderPrx.getOffsetFromEnd_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readLong();
            is_.endEncapsulation();
        end

        function future = getOffsetFromEndAsync(obj, filename, lines, context)
            %GETOFFSETFROMENDASYNC Count the number of given lines from the end of the file and return the file offset.
            %
            %   Input Arguments
            %     filename
            %       character vector
            %     lines
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getOffsetFromEnd, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.FileReaderPrx
                filename (1, :) char
                lines (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeInt(lines);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readLong();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getOffsetFromEnd', 2, true, os_, 1, @unmarshal, IceGrid.FileReaderPrx.getOffsetFromEnd_ex_, context);
        end

        function [returnValue, newPos, lines] = read(obj, filename, pos, size, context)
            %READ Read lines (or size bytes) at the specified position from the given file.
            %
            %   Input Arguments
            %     filename
            %       character vector
            %     pos
            %       int64 scalar
            %     size
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            %     newPos
            %       int64 scalar
            %     lines
            %       string vector
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException
            
            arguments
                obj (1, 1) IceGrid.FileReaderPrx
                filename (1, :) char
                pos (1, 1) int64
                size (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeLong(pos);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('read', 2, true, os_, true, IceGrid.FileReaderPrx.read_ex_, context);
            is_.startEncapsulation();
            newPos = is_.readLong();
            lines = is_.readStringSeq();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = readAsync(obj, filename, pos, size, context)
            %READASYNC Read lines (or size bytes) at the specified position from the given file.
            %
            %   Input Arguments
            %     filename
            %       character vector
            %     pos
            %       int64 scalar
            %     size
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also read, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.FileReaderPrx
                filename (1, :) char
                pos (1, 1) int64
                size (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(filename);
            os_.writeLong(pos);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                newPos = is_.readLong();
                lines = is_.readStringSeq();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = newPos;
                varargout{3} = lines;
            end
            future = obj.iceInvokeAsync('read', 2, true, os_, 3, @unmarshal, IceGrid.FileReaderPrx.read_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::FileReader';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileReaderPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileReader.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A IceGrid.FileReaderPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::FileReader; otherwise, an empty array of IceGrid.FileReaderPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileReaderPrx.ice_staticId(), 'IceGrid.FileReaderPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.FileReaderPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.FileReaderPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileReaderPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        getOffsetFromEnd_ex_ = { 'IceGrid.FileNotAvailableException' }
        read_ex_ = { 'IceGrid.FileNotAvailableException' }
    end
end
