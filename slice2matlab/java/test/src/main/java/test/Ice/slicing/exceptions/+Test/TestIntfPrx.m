% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   baseAsBase
%   baseAsBaseAsync
%   unknownDerivedAsBase
%   unknownDerivedAsBaseAsync
%   knownDerivedAsBase
%   knownDerivedAsBaseAsync
%   knownDerivedAsKnownDerived
%   knownDerivedAsKnownDerivedAsync
%   unknownIntermediateAsBase
%   unknownIntermediateAsBaseAsync
%   knownIntermediateAsBase
%   knownIntermediateAsBaseAsync
%   knownMostDerivedAsBase
%   knownMostDerivedAsBaseAsync
%   knownIntermediateAsKnownIntermediate
%   knownIntermediateAsKnownIntermediateAsync
%   knownMostDerivedAsKnownIntermediate
%   knownMostDerivedAsKnownIntermediateAsync
%   knownMostDerivedAsKnownMostDerived
%   knownMostDerivedAsKnownMostDerivedAsync
%   unknownMostDerived1AsBase
%   unknownMostDerived1AsBaseAsync
%   unknownMostDerived1AsKnownIntermediate
%   unknownMostDerived1AsKnownIntermediateAsync
%   unknownMostDerived2AsBase
%   unknownMostDerived2AsBaseAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function baseAsBase(obj, varargin)
            % baseAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('baseAsBase', 0, true, [], false, Test.TestIntfPrx.baseAsBase_ex_, varargin{:});
        end
        function r_ = baseAsBaseAsync(obj, varargin)
            % baseAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('baseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.baseAsBase_ex_, varargin{:});
        end
        function unknownDerivedAsBase(obj, varargin)
            % unknownDerivedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.unknownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = unknownDerivedAsBaseAsync(obj, varargin)
            % unknownDerivedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownDerivedAsBase_ex_, varargin{:});
        end
        function knownDerivedAsBase(obj, varargin)
            % knownDerivedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = knownDerivedAsBaseAsync(obj, varargin)
            % knownDerivedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsBase_ex_, varargin{:});
        end
        function knownDerivedAsKnownDerived(obj, varargin)
            % knownDerivedAsKnownDerived
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownDerivedAsKnownDerived', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, varargin{:});
        end
        function r_ = knownDerivedAsKnownDerivedAsync(obj, varargin)
            % knownDerivedAsKnownDerivedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownDerivedAsKnownDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, varargin{:});
        end
        function unknownIntermediateAsBase(obj, varargin)
            % unknownIntermediateAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.unknownIntermediateAsBase_ex_, varargin{:});
        end
        function r_ = unknownIntermediateAsBaseAsync(obj, varargin)
            % unknownIntermediateAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownIntermediateAsBase_ex_, varargin{:});
        end
        function knownIntermediateAsBase(obj, varargin)
            % knownIntermediateAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsBase_ex_, varargin{:});
        end
        function r_ = knownIntermediateAsBaseAsync(obj, varargin)
            % knownIntermediateAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsBase_ex_, varargin{:});
        end
        function knownMostDerivedAsBase(obj, varargin)
            % knownMostDerivedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownMostDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsBase_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsBaseAsync(obj, varargin)
            % knownMostDerivedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownMostDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsBase_ex_, varargin{:});
        end
        function knownIntermediateAsKnownIntermediate(obj, varargin)
            % knownIntermediateAsKnownIntermediate
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownIntermediateAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = knownIntermediateAsKnownIntermediateAsync(obj, varargin)
            % knownIntermediateAsKnownIntermediateAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownIntermediateAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, varargin{:});
        end
        function knownMostDerivedAsKnownIntermediate(obj, varargin)
            % knownMostDerivedAsKnownIntermediate
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownMostDerivedAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsKnownIntermediateAsync(obj, varargin)
            % knownMostDerivedAsKnownIntermediateAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownMostDerivedAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, varargin{:});
        end
        function knownMostDerivedAsKnownMostDerived(obj, varargin)
            % knownMostDerivedAsKnownMostDerived
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownMostDerivedAsKnownMostDerived', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsKnownMostDerivedAsync(obj, varargin)
            % knownMostDerivedAsKnownMostDerivedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownMostDerivedAsKnownMostDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, varargin{:});
        end
        function unknownMostDerived1AsBase(obj, varargin)
            % unknownMostDerived1AsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownMostDerived1AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, varargin{:});
        end
        function r_ = unknownMostDerived1AsBaseAsync(obj, varargin)
            % unknownMostDerived1AsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownMostDerived1AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, varargin{:});
        end
        function unknownMostDerived1AsKnownIntermediate(obj, varargin)
            % unknownMostDerived1AsKnownIntermediate
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownMostDerived1AsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = unknownMostDerived1AsKnownIntermediateAsync(obj, varargin)
            % unknownMostDerived1AsKnownIntermediateAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownMostDerived1AsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, varargin{:});
        end
        function unknownMostDerived2AsBase(obj, varargin)
            % unknownMostDerived2AsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownMostDerived2AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, varargin{:});
        end
        function r_ = unknownMostDerived2AsBaseAsync(obj, varargin)
            % unknownMostDerived2AsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownMostDerived2AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, varargin{:});
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
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestIntfPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        baseAsBase_ex_ = { 'Test.Base' }
        unknownDerivedAsBase_ex_ = { 'Test.Base' }
        knownDerivedAsBase_ex_ = { 'Test.Base' }
        knownDerivedAsKnownDerived_ex_ = { 'Test.KnownDerived' }
        unknownIntermediateAsBase_ex_ = { 'Test.Base' }
        knownIntermediateAsBase_ex_ = { 'Test.Base' }
        knownMostDerivedAsBase_ex_ = { 'Test.Base' }
        knownIntermediateAsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        knownMostDerivedAsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        knownMostDerivedAsKnownMostDerived_ex_ = { 'Test.KnownMostDerived' }
        unknownMostDerived1AsBase_ex_ = { 'Test.Base' }
        unknownMostDerived1AsKnownIntermediate_ex_ = { 'Test.KnownIntermediate' }
        unknownMostDerived2AsBase_ex_ = { 'Test.Base' }
    end
end
