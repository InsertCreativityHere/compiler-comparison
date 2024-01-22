% RelayPrx   Summary of RelayPrx
%
% RelayPrx Methods:
%   knownPreservedAsBase
%   knownPreservedAsBaseAsync
%   knownPreservedAsKnownPreserved
%   knownPreservedAsKnownPreservedAsync
%   unknownPreservedAsBase
%   unknownPreservedAsBaseAsync
%   unknownPreservedAsKnownPreserved
%   unknownPreservedAsKnownPreservedAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef RelayPrx < Ice.ObjectPrx
    methods
        function knownPreservedAsBase(obj, varargin)
            % knownPreservedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownPreservedAsBase', 0, true, [], false, Test.RelayPrx.knownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = knownPreservedAsBaseAsync(obj, varargin)
            % knownPreservedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownPreservedAsBase', 0, true, [], 0, [], Test.RelayPrx.knownPreservedAsBase_ex_, varargin{:});
        end
        function knownPreservedAsKnownPreserved(obj, varargin)
            % knownPreservedAsKnownPreserved
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('knownPreservedAsKnownPreserved', 0, true, [], false, Test.RelayPrx.knownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = knownPreservedAsKnownPreservedAsync(obj, varargin)
            % knownPreservedAsKnownPreservedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('knownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.RelayPrx.knownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function unknownPreservedAsBase(obj, varargin)
            % unknownPreservedAsBase
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownPreservedAsBase', 0, true, [], false, Test.RelayPrx.unknownPreservedAsBase_ex_, varargin{:});
        end
        function r_ = unknownPreservedAsBaseAsync(obj, varargin)
            % unknownPreservedAsBaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownPreservedAsBase', 0, true, [], 0, [], Test.RelayPrx.unknownPreservedAsBase_ex_, varargin{:});
        end
        function unknownPreservedAsKnownPreserved(obj, varargin)
            % unknownPreservedAsKnownPreserved
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('unknownPreservedAsKnownPreserved', 0, true, [], false, Test.RelayPrx.unknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
        function r_ = unknownPreservedAsKnownPreservedAsync(obj, varargin)
            % unknownPreservedAsKnownPreservedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('unknownPreservedAsKnownPreserved', 0, true, [], 0, [], Test.RelayPrx.unknownPreservedAsKnownPreserved_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Relay';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RelayPrx');
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
            % Returns (Test.RelayPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RelayPrx.ice_staticId(), 'Test.RelayPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RelayPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RelayPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RelayPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        knownPreservedAsBase_ex_ = { 'Test.Base' }
        knownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
        unknownPreservedAsBase_ex_ = { 'Test.Base' }
        unknownPreservedAsKnownPreserved_ex_ = { 'Test.KnownPreserved' }
    end
end
