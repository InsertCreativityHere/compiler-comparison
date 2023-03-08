% Intf1Prx   Summary of Intf1Prx
%
% Intf1Prx Methods:
%   isa
%   isaAsync
%   reason
%   reasonAsync
%   autorelease
%   autoreleaseAsync
%   classForCoder
%   classForCoderAsync
%   copy
%   copyAsync
%   dealloc
%   deallocAsync
%   description
%   descriptionAsync
%   hash
%   hashAsync
%   init
%   initAsync
%   isProxy
%   isProxyAsync
%   mutableCopy
%   mutableCopyAsync
%   release
%   releaseAsync
%   retain
%   retainAsync
%   retainCount
%   retainCountAsync
%   self
%   selfAsync
%   superclass
%   superclassAsync
%   zone
%   zoneAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Inherit.ice by slice2matlab version 3.7.9

classdef Intf1Prx < Ice.ObjectPrx
    methods
        function isa(obj, varargin)
            % isa
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('isa', 0, false, [], false, {}, varargin{:});
        end
        function r_ = isaAsync(obj, varargin)
            % isaAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('isa', 0, false, [], 0, [], {}, varargin{:});
        end
        function reason(obj, varargin)
            % reason
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('reason', 0, false, [], false, {}, varargin{:});
        end
        function r_ = reasonAsync(obj, varargin)
            % reasonAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('reason', 0, false, [], 0, [], {}, varargin{:});
        end
        function autorelease(obj, varargin)
            % autorelease
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('autorelease', 0, false, [], false, {}, varargin{:});
        end
        function r_ = autoreleaseAsync(obj, varargin)
            % autoreleaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('autorelease', 0, false, [], 0, [], {}, varargin{:});
        end
        function classForCoder(obj, varargin)
            % classForCoder
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('classForCoder', 0, false, [], false, {}, varargin{:});
        end
        function r_ = classForCoderAsync(obj, varargin)
            % classForCoderAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('classForCoder', 0, false, [], 0, [], {}, varargin{:});
        end
        function copy(obj, varargin)
            % copy
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('copy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = copyAsync(obj, varargin)
            % copyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('copy', 0, false, [], 0, [], {}, varargin{:});
        end
        function dealloc(obj, varargin)
            % dealloc
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('dealloc', 0, false, [], false, {}, varargin{:});
        end
        function r_ = deallocAsync(obj, varargin)
            % deallocAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('dealloc', 0, false, [], 0, [], {}, varargin{:});
        end
        function description(obj, varargin)
            % description
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('description', 0, false, [], false, {}, varargin{:});
        end
        function r_ = descriptionAsync(obj, varargin)
            % descriptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('description', 0, false, [], 0, [], {}, varargin{:});
        end
        function hash(obj, varargin)
            % hash
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('hash', 0, false, [], false, {}, varargin{:});
        end
        function r_ = hashAsync(obj, varargin)
            % hashAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('hash', 0, false, [], 0, [], {}, varargin{:});
        end
        function init(obj, varargin)
            % init
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('init', 0, false, [], false, {}, varargin{:});
        end
        function r_ = initAsync(obj, varargin)
            % initAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('init', 0, false, [], 0, [], {}, varargin{:});
        end
        function isProxy(obj, varargin)
            % isProxy
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('isProxy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = isProxyAsync(obj, varargin)
            % isProxyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('isProxy', 0, false, [], 0, [], {}, varargin{:});
        end
        function mutableCopy(obj, varargin)
            % mutableCopy
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('mutableCopy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = mutableCopyAsync(obj, varargin)
            % mutableCopyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('mutableCopy', 0, false, [], 0, [], {}, varargin{:});
        end
        function release(obj, varargin)
            % release
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('release', 0, false, [], false, {}, varargin{:});
        end
        function r_ = releaseAsync(obj, varargin)
            % releaseAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('release', 0, false, [], 0, [], {}, varargin{:});
        end
        function retain(obj, varargin)
            % retain
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('retain', 0, false, [], false, {}, varargin{:});
        end
        function r_ = retainAsync(obj, varargin)
            % retainAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('retain', 0, false, [], 0, [], {}, varargin{:});
        end
        function retainCount(obj, varargin)
            % retainCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('retainCount', 0, false, [], false, {}, varargin{:});
        end
        function r_ = retainCountAsync(obj, varargin)
            % retainCountAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('retainCount', 0, false, [], 0, [], {}, varargin{:});
        end
        function self(obj, varargin)
            % self
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('self', 0, false, [], false, {}, varargin{:});
        end
        function r_ = selfAsync(obj, varargin)
            % selfAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('self', 0, false, [], 0, [], {}, varargin{:});
        end
        function superclass(obj, varargin)
            % superclass
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('superclass', 0, false, [], false, {}, varargin{:});
        end
        function r_ = superclassAsync(obj, varargin)
            % superclassAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('superclass', 0, false, [], 0, [], {}, varargin{:});
        end
        function zone(obj, varargin)
            % zone
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('zone', 0, false, [], false, {}, varargin{:});
        end
        function r_ = zoneAsync(obj, varargin)
            % zoneAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('zone', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Intf1';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Intf1Prx');
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
            % Returns (Test.Intf1Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Intf1Prx.ice_staticId(), 'Test.Intf1Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Intf1Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Intf1Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = Intf1Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
