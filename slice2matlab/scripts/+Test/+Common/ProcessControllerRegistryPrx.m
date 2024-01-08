% ProcessControllerRegistryPrx   Summary of ProcessControllerRegistryPrx
%
% ProcessControllerRegistryPrx Methods:
%   setProcessController
%   setProcessControllerAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.7.10

classdef ProcessControllerRegistryPrx < Ice.ObjectPrx
    methods
        function setProcessController(obj, controller, varargin)
            % setProcessController
            %
            % Parameters:
            %   controller (Test.Common.ProcessControllerPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(controller);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setProcessController', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setProcessControllerAsync(obj, controller, varargin)
            % setProcessControllerAsync
            %
            % Parameters:
            %   controller (Test.Common.ProcessControllerPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(controller);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setProcessController', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::ProcessControllerRegistry';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.ProcessControllerRegistryPrx');
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
            % Returns (Test.Common.ProcessControllerRegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ProcessControllerRegistryPrx.ice_staticId(), 'Test.Common.ProcessControllerRegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.ProcessControllerRegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ProcessControllerRegistryPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ProcessControllerRegistryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
