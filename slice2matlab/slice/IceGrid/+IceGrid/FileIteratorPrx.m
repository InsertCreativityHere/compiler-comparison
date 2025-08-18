classdef FileIteratorPrx < Ice.ObjectPrx
    %FILEITERATORPRX Iterates over an IceGrid log file.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.FileIteratorPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   FileIteratorPrx Methods:
    %     destroy - Destroys the iterator.
    %     destroyAsync - An asynchronous destroy.
    %     read - Read lines from the log file.
    %     readAsync - An asynchronous read.
    %
    %   FileIteratorPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileIterator.
    %     uncheckedCast - Creates a FileIteratorPrx from another proxy without any validation.
    %
    %   Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, lines] = read(obj, size, context)
            %READ Read lines from the log file.
            %
            %   Input Arguments
            %     size - Specifies the maximum number of bytes to be received. The server will ensure that the returned
            %       message doesn't exceed the given size.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - `true` if EOF is encountered.
            %       logical scalar
            %     lines - The lines read from the file. If there was nothing to read from the file since the last call to
            %       read, an empty sequence is returned. The last line of the sequence is always incomplete (and therefore no
            %       newline character should be added when writing the last line to the to the output device).
            %       string vector
            %
            %   Exceptions
            %     IceGrid.FileNotAvailableException - Thrown when the implementation failed to read from the file.
            
            arguments
                obj (1, 1) IceGrid.FileIteratorPrx
                size (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('read', 0, true, os_, true, IceGrid.FileIteratorPrx.read_ex_, context);
            is_.startEncapsulation();
            lines = is_.readStringSeq();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = readAsync(obj, size, context)
            %READASYNC Read lines from the log file.
            %
            %   Input Arguments
            %     size - Specifies the maximum number of bytes to be received. The server will ensure that the returned
            %       message doesn't exceed the given size.
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
                obj (1, 1) IceGrid.FileIteratorPrx
                size (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(size);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                lines = is_.readStringSeq();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = lines;
            end
            future = obj.iceInvokeAsync('read', 0, true, os_, 2, @unmarshal, IceGrid.FileIteratorPrx.read_ex_, context);
        end

        function destroy(obj, context)
            %DESTROY Destroys the iterator.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.FileIteratorPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('destroy', 0, false, [], false, {}, context);
        end

        function future = destroyAsync(obj, context)
            %DESTROYASYNC Destroys the iterator.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also destroy, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.FileIteratorPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::FileIterator';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileIteratorPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileIterator.
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
            %     r - A IceGrid.FileIteratorPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::FileIterator; otherwise, an empty array of IceGrid.FileIteratorPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileIteratorPrx.ice_staticId(), 'IceGrid.FileIteratorPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.FileIteratorPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.FileIteratorPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileIteratorPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        read_ex_ = { 'IceGrid.FileNotAvailableException' }
    end
end
