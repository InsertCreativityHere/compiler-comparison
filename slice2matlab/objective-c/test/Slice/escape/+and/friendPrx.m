% friendPrx   Summary of friendPrx
%
% friendPrx Methods:
%   goto
%   gotoAsync
%   objc
%   objcAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef friendPrx < Ice.ObjectPrx
    methods
        function result = goto(obj, if_, d, inline, mutable, namespace, new, not, or, protected, public, register, varargin)
            % goto
            %
            % Parameters:
            %   if_ (and.continue_)
            %   d (and.auto)
            %   inline (and.delete)
            %   mutable (and.do)
            %   namespace (and.breakPrx)
            %   new (and.charPrx)
            %   not (and.switchPrx)
            %   or (int32)
            %   protected (int32)
            %   public (int32)
            %   register (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (and.auto)
            
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, if_);
            and.auto.ice_write(os_, d);
            and.delete.ice_write(os_, inline);
            os_.writeValue(mutable);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeProxy(not);
            os_.writeInt(or);
            os_.writeInt(protected);
            os_.writeInt(public);
            os_.writeInt(register);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('goto', 0, true, os_, true, and.friendPrx.goto_ex_, varargin{:});
            is_.startEncapsulation();
            result = and.auto.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = gotoAsync(obj, if_, d, inline, mutable, namespace, new, not, or, protected, public, register, varargin)
            % gotoAsync
            %
            % Parameters:
            %   if_ (and.continue_)
            %   d (and.auto)
            %   inline (and.delete)
            %   mutable (and.do)
            %   namespace (and.breakPrx)
            %   new (and.charPrx)
            %   not (and.switchPrx)
            %   or (int32)
            %   protected (int32)
            %   public (int32)
            %   register (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            and.continue_.ice_write(os_, if_);
            and.auto.ice_write(os_, d);
            and.delete.ice_write(os_, inline);
            os_.writeValue(mutable);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeProxy(not);
            os_.writeInt(or);
            os_.writeInt(protected);
            os_.writeInt(public);
            os_.writeInt(register);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = and.auto.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('goto', 0, true, os_, 1, @unmarshal, and.friendPrx.goto_ex_, varargin{:});
        end
        function objc(obj, bycopy, byref, id, IMP, in, inout, nil, NO, oneway, SEL, super, YES, varargin)
            % objc
            %
            % Parameters:
            %   bycopy (int32)
            %   byref (int32)
            %   id (int32)
            %   IMP (int32)
            %   in (int32)
            %   inout (int32)
            %   nil (int32)
            %   NO (int32)
            %   oneway (int32)
            %   SEL (int32)
            %   super (int32)
            %   YES (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(bycopy);
            os_.writeInt(byref);
            os_.writeInt(id);
            os_.writeInt(IMP);
            os_.writeInt(in);
            os_.writeInt(inout);
            os_.writeInt(nil);
            os_.writeInt(NO);
            os_.writeInt(oneway);
            os_.writeInt(SEL);
            os_.writeInt(super);
            os_.writeInt(YES);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('objc', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = objcAsync(obj, bycopy, byref, id, IMP, in, inout, nil, NO, oneway, SEL, super, YES, varargin)
            % objcAsync
            %
            % Parameters:
            %   bycopy (int32)
            %   byref (int32)
            %   id (int32)
            %   IMP (int32)
            %   in (int32)
            %   inout (int32)
            %   nil (int32)
            %   NO (int32)
            %   oneway (int32)
            %   SEL (int32)
            %   super (int32)
            %   YES (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(bycopy);
            os_.writeInt(byref);
            os_.writeInt(id);
            os_.writeInt(IMP);
            os_.writeInt(in);
            os_.writeInt(inout);
            os_.writeInt(nil);
            os_.writeInt(NO);
            os_.writeInt(oneway);
            os_.writeInt(SEL);
            os_.writeInt(super);
            os_.writeInt(YES);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('objc', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::friend';
        end
        function r = ice_read(is)
            r = is.readProxy('and.friendPrx');
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
            % Returns (and.friendPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.friendPrx.ice_staticId(), 'and.friendPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.friendPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.friendPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = friendPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        goto_ex_ = { 'and.sizeof', 'and.return_' }
    end
end
