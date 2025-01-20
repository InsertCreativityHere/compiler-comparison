
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef elseifPrx < Ice.ObjectPrx
    methods
        function events_(obj, varargin)
            obj.iceInvoke('events', 0, false, [], false, {}, varargin{:});
        end
        function r_ = eventsAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('events', 0, false, [], 0, [], {}, varargin{:});
        end
        function function_(obj, varargin)
            obj.iceInvoke('function', 0, false, [], false, {}, varargin{:});
        end
        function r_ = functionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('function', 0, false, [], 0, [], {}, varargin{:});
        end
        function delete_(obj, varargin)
            obj.iceInvoke('delete', 0, false, [], false, {}, varargin{:});
        end
        function r_ = deleteAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('delete', 0, false, [], 0, [], {}, varargin{:});
        end
        function checkedCast_(obj, varargin)
            obj.iceInvoke('checkedCast', 0, false, [], false, {}, varargin{:});
        end
        function r_ = checkedCastAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('checkedCast', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::break::elseif';
        end
        function r = ice_read(is)
            r = is.readProxy('classdef_.break_.elseifPrx');
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
            % Returns (classdef_.break_.elseifPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, classdef_.break_.elseifPrx.ice_staticId(), 'classdef_.break_.elseifPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (classdef_.break_.elseifPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'classdef_.break_.elseifPrx', varargin{:});
        end
    end
end
