% BrowserProcessControllerPrx   Summary of BrowserProcessControllerPrx
%
% BrowserProcessControllerPrx Methods:
%   redirect
%   redirectAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.7.10

classdef BrowserProcessControllerPrx < Test.Common.ProcessControllerPrx
    methods
        function redirect(obj, url, varargin)
            % redirect
            %
            % Parameters:
            %   url (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(url);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('redirect', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = redirectAsync(obj, url, varargin)
            % redirectAsync
            %
            % Parameters:
            %   url (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(url);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('redirect', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::BrowserProcessController';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.BrowserProcessControllerPrx');
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
            % Returns (Test.Common.BrowserProcessControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.BrowserProcessControllerPrx.ice_staticId(), 'Test.Common.BrowserProcessControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.BrowserProcessControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.BrowserProcessControllerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = BrowserProcessControllerPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.Common.ProcessControllerPrx(communicator, encoding, impl, bytes);
        end
    end
end
