% catchPrx   Summary of catchPrx
%
% catchPrx Methods:
%   checkedCast_
%   checkedCastAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef catchPrx < Ice.ObjectPrx
    methods
        function continue_ = checkedCast_(obj, clone, varargin)
            % checkedCast_
            %
            % Parameters:
            %   clone (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkedCast', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            continue_ = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = checkedCastAsync(obj, clone, varargin)
            % checkedCastAsync
            %
            % Parameters:
            %   clone (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                continue_ = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = continue_;
            end
            r_ = obj.iceInvokeAsync('checkedCast', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::catch';
        end
        function r = ice_read(is)
            r = is.readProxy('abstract.catchPrx');
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
            % Returns (abstract.catchPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.catchPrx.ice_staticId(), 'abstract.catchPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (abstract.catchPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.catchPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = catchPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
