% switchPrx   Summary of switchPrx
%
% switchPrx Methods:
%   foo
%   fooAsync
%   foo2
%   foo2Async
%   foo3
%   foo3Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef switchPrx < Ice.ObjectPrx
    methods
        function volatile = foo(obj, export, varargin)
            % foo
            %
            % Parameters:
            %   export (and.charPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foo', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            volatile = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = fooAsync(obj, export, varargin)
            % fooAsync
            %
            % Parameters:
            %   export (and.charPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                volatile = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = volatile;
            end
            r_ = obj.iceInvokeAsync('foo', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function nil = foo2(obj, export, YES, varargin)
            % foo2
            %
            % Parameters:
            %   export (and.charPrx)
            %   YES (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            os_.writeInt(YES);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foo2', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            nil = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = foo2Async(obj, export, YES, varargin)
            % foo2Async
            %
            % Parameters:
            %   export (and.charPrx)
            %   YES (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            os_.writeInt(YES);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                nil = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = nil;
            end
            r_ = obj.iceInvokeAsync('foo2', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function nil = foo3(obj, export, varargin)
            % foo3
            %
            % Parameters:
            %   export (and.charPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foo3', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            nil = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = foo3Async(obj, export, varargin)
            % foo3Async
            %
            % Parameters:
            %   export (and.charPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(export);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                nil = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = nil;
            end
            r_ = obj.iceInvokeAsync('foo3', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::switch';
        end
        function r = ice_read(is)
            r = is.readProxy('and.switchPrx');
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
            % Returns (and.switchPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.switchPrx.ice_staticId(), 'and.switchPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.switchPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.switchPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = switchPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
