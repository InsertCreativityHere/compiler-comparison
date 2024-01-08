% Initial2Prx   Summary of Initial2Prx
%
% Initial2Prx Methods:
%   opClassAndUnknownOptional
%   opClassAndUnknownOptionalAsync
%   opVoid
%   opVoidAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.10

classdef Initial2Prx < Ice.ObjectPrx
    methods
        function opClassAndUnknownOptional(obj, p, o, varargin)
            % opClassAndUnknownOptional
            %
            % Parameters:
            %   p (Test.A)
            %   o (Ice.Object)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writeValueOpt(1, o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opClassAndUnknownOptional', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opClassAndUnknownOptionalAsync(obj, p, o, varargin)
            % opClassAndUnknownOptionalAsync
            %
            % Parameters:
            %   p (Test.A)
            %   o (Ice.Object)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            os_.writeValueOpt(1, o);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opClassAndUnknownOptional', 0, false, os_, 0, [], {}, varargin{:});
        end
        function opVoid(obj, a, v, varargin)
            % opVoid
            %
            % Parameters:
            %   a (int32)
            %   v (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opVoid', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opVoidAsync(obj, a, v, varargin)
            % opVoidAsync
            %
            % Parameters:
            %   a (int32)
            %   v (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opVoid', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Initial2';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Initial2Prx');
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
            % Returns (Test.Initial2Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Initial2Prx.ice_staticId(), 'Test.Initial2Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Initial2Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Initial2Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = Initial2Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
