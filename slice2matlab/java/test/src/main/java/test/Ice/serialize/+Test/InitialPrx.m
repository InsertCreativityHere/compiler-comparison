% InitialPrx   Summary of InitialPrx
%
% InitialPrx Methods:
%   getStruct1
%   getStruct1Async
%   getBase
%   getBaseAsync
%   getEx
%   getExAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function result = getStruct1(obj, varargin)
            % getStruct1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ByteS)
            
            is_ = obj.iceInvoke('getStruct1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = getStruct1Async(obj, varargin)
            % getStruct1Async
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
            r_ = obj.iceInvokeAsync('getStruct1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getBase(obj, varargin)
            % getBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ByteS)
            
            is_ = obj.iceInvoke('getBase', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = getBaseAsync(obj, varargin)
            % getBaseAsync
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
            r_ = obj.iceInvokeAsync('getBase', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getEx(obj, varargin)
            % getEx
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ByteS)
            
            is_ = obj.iceInvoke('getEx', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = getExAsync(obj, varargin)
            % getExAsync
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
            r_ = obj.iceInvokeAsync('getEx', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
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
            % Returns (Test.InitialPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.InitialPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end
end
