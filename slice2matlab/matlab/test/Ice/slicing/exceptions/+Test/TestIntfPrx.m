
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function baseAsBase(obj, varargin)
            obj.iceInvoke('baseAsBase', 0, true, [], false, Test.TestIntfPrx.baseAsBase_ex_, varargin{:});
        end
        function r_ = baseAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('baseAsBase', 0, true, [], 0, [], Test.TestIntfPrx.baseAsBase_ex_, varargin{:});
        end
        function unknownDerivedAsBase(obj, varargin)
            obj.iceInvoke('unknownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.unknownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = unknownDerivedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownDerivedAsBase_ex_, varargin{:});
        end
        function knownDerivedAsBase(obj, varargin)
            obj.iceInvoke('knownDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsBase_ex_, varargin{:});
        end
        function r_ = knownDerivedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsBase_ex_, varargin{:});
        end
        function knownDerivedAsKnownDerived(obj, varargin)
            obj.iceInvoke('knownDerivedAsKnownDerived', 0, true, [], false, Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, varargin{:});
        end
        function r_ = knownDerivedAsKnownDerivedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownDerivedAsKnownDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownDerivedAsKnownDerived_ex_, varargin{:});
        end
        function unknownIntermediateAsBase(obj, varargin)
            obj.iceInvoke('unknownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.unknownIntermediateAsBase_ex_, varargin{:});
        end
        function r_ = unknownIntermediateAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownIntermediateAsBase_ex_, varargin{:});
        end
        function knownIntermediateAsBase(obj, varargin)
            obj.iceInvoke('knownIntermediateAsBase', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsBase_ex_, varargin{:});
        end
        function r_ = knownIntermediateAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownIntermediateAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsBase_ex_, varargin{:});
        end
        function knownMostDerivedAsBase(obj, varargin)
            obj.iceInvoke('knownMostDerivedAsBase', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsBase_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownMostDerivedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsBase_ex_, varargin{:});
        end
        function knownIntermediateAsKnownIntermediate(obj, varargin)
            obj.iceInvoke('knownIntermediateAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = knownIntermediateAsKnownIntermediateAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownIntermediateAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownIntermediateAsKnownIntermediate_ex_, varargin{:});
        end
        function knownMostDerivedAsKnownIntermediate(obj, varargin)
            obj.iceInvoke('knownMostDerivedAsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsKnownIntermediateAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownMostDerivedAsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownIntermediate_ex_, varargin{:});
        end
        function knownMostDerivedAsKnownMostDerived(obj, varargin)
            obj.iceInvoke('knownMostDerivedAsKnownMostDerived', 0, true, [], false, Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, varargin{:});
        end
        function r_ = knownMostDerivedAsKnownMostDerivedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownMostDerivedAsKnownMostDerived', 0, true, [], 0, [], Test.TestIntfPrx.knownMostDerivedAsKnownMostDerived_ex_, varargin{:});
        end
        function unknownMostDerived1AsBase(obj, varargin)
            obj.iceInvoke('unknownMostDerived1AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, varargin{:});
        end
        function r_ = unknownMostDerived1AsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownMostDerived1AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsBase_ex_, varargin{:});
        end
        function unknownMostDerived1AsKnownIntermediate(obj, varargin)
            obj.iceInvoke('unknownMostDerived1AsKnownIntermediate', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, varargin{:});
        end
        function r_ = unknownMostDerived1AsKnownIntermediateAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownMostDerived1AsKnownIntermediate', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived1AsKnownIntermediate_ex_, varargin{:});
        end
        function unknownMostDerived2AsBase(obj, varargin)
            obj.iceInvoke('unknownMostDerived2AsBase', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, varargin{:});
        end
        function r_ = unknownMostDerived2AsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownMostDerived2AsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived2AsBase_ex_, varargin{:});
        end
        function unknownMostDerived2AsBaseCompact(obj, varargin)
            obj.iceInvoke('unknownMostDerived2AsBaseCompact', 0, true, [], false, Test.TestIntfPrx.unknownMostDerived2AsBaseCompact_ex_, varargin{:});
        end
        function r_ = unknownMostDerived2AsBaseCompactAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownMostDerived2AsBaseCompact', 0, true, [], 0, [], Test.TestIntfPrx.unknownMostDerived2AsBaseCompact_ex_, varargin{:});
        end
        function knownPreservedAsBase(obj, varargin)
            obj.iceInvoke('knownPreservedAsBase', 0, true, [], false, Test.TestIntfPrx.knownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = knownPreservedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownPreservedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.knownPreservedAsBase_ex_, varargin{:});
        end
        function knownPreservedAsKnownPreserved(obj, varargin)
            obj.iceInvoke('knownPreservedAsKnownPreserved', 0, true, [], false, Test.TestIntfPrx.knownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = knownPreservedAsKnownPreservedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('knownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.TestIntfPrx.knownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function relayKnownPreservedAsBase(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayKnownPreservedAsBase', 0, true, os_, false, Test.TestIntfPrx.relayKnownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = relayKnownPreservedAsBaseAsync(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('relayKnownPreservedAsBase', 0, true, os_, 0, [], Test.TestIntfPrx.relayKnownPreservedAsBase_ex_, varargin{:});
        end
        function relayKnownPreservedAsKnownPreserved(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayKnownPreservedAsKnownPreserved', 0, true, os_, false, Test.TestIntfPrx.relayKnownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = relayKnownPreservedAsKnownPreservedAsync(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('relayKnownPreservedAsKnownPreserved', 0, true, os_, 0, [], Test.TestIntfPrx.relayKnownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function unknownPreservedAsBase(obj, varargin)
            obj.iceInvoke('unknownPreservedAsBase', 0, true, [], false, Test.TestIntfPrx.unknownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = unknownPreservedAsBaseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownPreservedAsBase', 0, true, [], 0, [], Test.TestIntfPrx.unknownPreservedAsBase_ex_, varargin{:});
        end
        function unknownPreservedAsKnownPreserved(obj, varargin)
            obj.iceInvoke('unknownPreservedAsKnownPreserved', 0, true, [], false, Test.TestIntfPrx.unknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = unknownPreservedAsKnownPreservedAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('unknownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.TestIntfPrx.unknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function relayUnknownPreservedAsBase(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayUnknownPreservedAsBase', 0, true, os_, false, Test.TestIntfPrx.relayUnknownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = relayUnknownPreservedAsBaseAsync(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('relayUnknownPreservedAsBase', 0, true, os_, 0, [], Test.TestIntfPrx.relayUnknownPreservedAsBase_ex_, varargin{:});
        end
        function relayUnknownPreservedAsKnownPreserved(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('relayUnknownPreservedAsKnownPreserved', 0, true, os_, false, Test.TestIntfPrx.relayUnknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = relayUnknownPreservedAsKnownPreservedAsync(obj, r, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(r);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('relayUnknownPreservedAsKnownPreserved', 0, true, os_, 0, [], Test.TestIntfPrx.relayUnknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
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
        unknownMostDerived2AsBaseCompact_ex_ = { 'Test.Base' }
        knownPreservedAsBase_ex_ = { 'Test.Base' }
        knownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        relayKnownPreservedAsBase_ex_ = { 'Test.Base' }
        relayKnownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        unknownPreservedAsBase_ex_ = { 'Test.Base' }
        unknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        relayUnknownPreservedAsBase_ex_ = { 'Test.Base' }
        relayUnknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
    end
end
