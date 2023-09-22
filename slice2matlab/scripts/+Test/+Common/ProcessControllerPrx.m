% ProcessControllerPrx   Summary of ProcessControllerPrx
%
% ProcessControllerPrx Methods:
%   start
%   startAsync
%   getHost
%   getHostAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.7.10

classdef ProcessControllerPrx < Ice.ObjectPrx
    methods
        function result = start(obj, testsuite, exe, args, varargin)
            % start
            %
            % Parameters:
            %   testsuite (char)
            %   exe (char)
            %   args (Test.Common.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.Common.ProcessPrx)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(testsuite);
            os_.writeString(exe);
            os_.writeStringSeq(args);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('start', 0, true, os_, true, Test.Common.ProcessControllerPrx.start_ex_, varargin{:});
            is_.startEncapsulation();
            result = Test.Common.ProcessPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = startAsync(obj, testsuite, exe, args, varargin)
            % startAsync
            %
            % Parameters:
            %   testsuite (char)
            %   exe (char)
            %   args (Test.Common.StringSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(testsuite);
            os_.writeString(exe);
            os_.writeStringSeq(args);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.Common.ProcessPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('start', 0, true, os_, 1, @unmarshal, Test.Common.ProcessControllerPrx.start_ex_, varargin{:});
        end
        function result = getHost(obj, protocol, ipv6, varargin)
            % getHost
            %
            % Parameters:
            %   protocol (char)
            %   ipv6 (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getHost', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getHostAsync(obj, protocol, ipv6, varargin)
            % getHostAsync
            %
            % Parameters:
            %   protocol (char)
            %   ipv6 (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(protocol);
            os_.writeBool(ipv6);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getHost', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::ProcessController';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.ProcessControllerPrx');
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
            % Returns (Test.Common.ProcessControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ProcessControllerPrx.ice_staticId(), 'Test.Common.ProcessControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.ProcessControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ProcessControllerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ProcessControllerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        start_ex_ = { 'Test.Common.ProcessFailedException' }
    end
end
