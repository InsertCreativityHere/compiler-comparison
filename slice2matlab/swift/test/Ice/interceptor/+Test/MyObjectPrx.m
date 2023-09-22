% MyObjectPrx   Summary of MyObjectPrx
%
% MyObjectPrx Methods:
%   add
%   addAsync
%   addWithRetry
%   addWithRetryAsync
%   badAdd
%   badAddAsync
%   notExistAdd
%   notExistAddAsync
%   amdAdd
%   amdAddAsync
%   amdAddWithRetry
%   amdAddWithRetryAsync
%   amdBadAdd
%   amdBadAddAsync
%   amdNotExistAdd
%   amdNotExistAddAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef MyObjectPrx < Ice.ObjectPrx
    methods
        function result = add(obj, x, y, varargin)
            % add
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('add', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = addAsync(obj, x, y, varargin)
            % addAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('add', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = addWithRetry(obj, x, y, varargin)
            % addWithRetry
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('addWithRetry', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = addWithRetryAsync(obj, x, y, varargin)
            % addWithRetryAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('addWithRetry', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = badAdd(obj, x, y, varargin)
            % badAdd
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('badAdd', 0, true, os_, true, Test.MyObjectPrx.badAdd_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = badAddAsync(obj, x, y, varargin)
            % badAddAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('badAdd', 0, true, os_, 1, @unmarshal, Test.MyObjectPrx.badAdd_ex_, varargin{:});
        end
        function result = notExistAdd(obj, x, y, varargin)
            % notExistAdd
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('notExistAdd', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = notExistAddAsync(obj, x, y, varargin)
            % notExistAddAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('notExistAdd', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = amdAdd(obj, x, y, varargin)
            % amdAdd
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('amdAdd', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = amdAddAsync(obj, x, y, varargin)
            % amdAddAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('amdAdd', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = amdAddWithRetry(obj, x, y, varargin)
            % amdAddWithRetry
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('amdAddWithRetry', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = amdAddWithRetryAsync(obj, x, y, varargin)
            % amdAddWithRetryAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('amdAddWithRetry', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = amdBadAdd(obj, x, y, varargin)
            % amdBadAdd
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('amdBadAdd', 0, true, os_, true, Test.MyObjectPrx.amdBadAdd_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = amdBadAddAsync(obj, x, y, varargin)
            % amdBadAddAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('amdBadAdd', 0, true, os_, 1, @unmarshal, Test.MyObjectPrx.amdBadAdd_ex_, varargin{:});
        end
        function result = amdNotExistAdd(obj, x, y, varargin)
            % amdNotExistAdd
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('amdNotExistAdd', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = amdNotExistAddAsync(obj, x, y, varargin)
            % amdNotExistAddAsync
            %
            % Parameters:
            %   x (int32)
            %   y (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(x);
            os_.writeInt(y);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('amdNotExistAdd', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyObject';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyObjectPrx');
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
            % Returns (Test.MyObjectPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyObjectPrx.ice_staticId(), 'Test.MyObjectPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyObjectPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyObjectPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyObjectPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        badAdd_ex_ = { 'Test.InvalidInputException' }
        amdBadAdd_ex_ = { 'Test.InvalidInputException' }
    end
end
