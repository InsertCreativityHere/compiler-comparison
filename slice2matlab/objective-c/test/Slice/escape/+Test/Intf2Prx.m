% Intf2Prx   Summary of Intf2Prx
%
% Intf2Prx Methods:
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
% Generated from Inherit.ice by slice2matlab version 3.7.10

classdef Intf2Prx < Ice.ObjectPrx
    methods
        function isa(obj, a, varargin)
            % isa
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('isa', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = isaAsync(obj, a, varargin)
            % isaAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('isa', 0, false, os_, 0, [], {}, varargin{:});
        end
        function reason(obj, a, varargin)
            % reason
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('reason', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = reasonAsync(obj, a, varargin)
            % reasonAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('reason', 0, false, os_, 0, [], {}, varargin{:});
        end
        function autorelease(obj, a, varargin)
            % autorelease
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('autorelease', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = autoreleaseAsync(obj, a, varargin)
            % autoreleaseAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('autorelease', 0, false, os_, 0, [], {}, varargin{:});
        end
        function classForCoder(obj, a, varargin)
            % classForCoder
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('classForCoder', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = classForCoderAsync(obj, a, varargin)
            % classForCoderAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('classForCoder', 0, false, os_, 0, [], {}, varargin{:});
        end
        function copy(obj, a, varargin)
            % copy
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('copy', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = copyAsync(obj, a, varargin)
            % copyAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('copy', 0, false, os_, 0, [], {}, varargin{:});
        end
        function dealloc(obj, a, varargin)
            % dealloc
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('dealloc', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = deallocAsync(obj, a, varargin)
            % deallocAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('dealloc', 0, false, os_, 0, [], {}, varargin{:});
        end
        function description(obj, a, varargin)
            % description
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('description', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = descriptionAsync(obj, a, varargin)
            % descriptionAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('description', 0, false, os_, 0, [], {}, varargin{:});
        end
        function hash(obj, a, varargin)
            % hash
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('hash', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = hashAsync(obj, a, varargin)
            % hashAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('hash', 0, false, os_, 0, [], {}, varargin{:});
        end
        function init(obj, a, varargin)
            % init
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('init', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initAsync(obj, a, varargin)
            % initAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('init', 0, false, os_, 0, [], {}, varargin{:});
        end
        function isProxy(obj, a, varargin)
            % isProxy
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('isProxy', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = isProxyAsync(obj, a, varargin)
            % isProxyAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('isProxy', 0, false, os_, 0, [], {}, varargin{:});
        end
        function mutableCopy(obj, a, varargin)
            % mutableCopy
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('mutableCopy', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = mutableCopyAsync(obj, a, varargin)
            % mutableCopyAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('mutableCopy', 0, false, os_, 0, [], {}, varargin{:});
        end
        function release(obj, a, varargin)
            % release
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('release', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = releaseAsync(obj, a, varargin)
            % releaseAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('release', 0, false, os_, 0, [], {}, varargin{:});
        end
        function retain(obj, a, varargin)
            % retain
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('retain', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = retainAsync(obj, a, varargin)
            % retainAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('retain', 0, false, os_, 0, [], {}, varargin{:});
        end
        function retainCount(obj, a, varargin)
            % retainCount
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('retainCount', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = retainCountAsync(obj, a, varargin)
            % retainCountAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('retainCount', 0, false, os_, 0, [], {}, varargin{:});
        end
        function self(obj, a, varargin)
            % self
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('self', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = selfAsync(obj, a, varargin)
            % selfAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('self', 0, false, os_, 0, [], {}, varargin{:});
        end
        function superclass(obj, a, varargin)
            % superclass
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('superclass', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = superclassAsync(obj, a, varargin)
            % superclassAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('superclass', 0, false, os_, 0, [], {}, varargin{:});
        end
        function zone(obj, a, varargin)
            % zone
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('zone', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = zoneAsync(obj, a, varargin)
            % zoneAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('zone', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Intf2';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Intf2Prx');
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
            % Returns (Test.Intf2Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Intf2Prx.ice_staticId(), 'Test.Intf2Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Intf2Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Intf2Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = Intf2Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
