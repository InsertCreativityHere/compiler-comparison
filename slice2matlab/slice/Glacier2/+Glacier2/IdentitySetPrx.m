% IdentitySetPrx   Summary of IdentitySetPrx
%
% An object for managing the set of object identity constraints on a Session.
%
% IdentitySetPrx Methods:
%   add - Add a sequence of Ice identities to this set of constraints.
%   addAsync - Add a sequence of Ice identities to this set of constraints.
%   remove - Remove a sequence of identities from this set of constraints.
%   removeAsync - Remove a sequence of identities from this set of constraints.
%   get - Returns a sequence of identities describing the constraints in this set.
%   getAsync - Returns a sequence of identities describing the constraints in this set.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also Glacier2.Session, Glacier2.SessionControl

% Copyright (c) ZeroC, Inc.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef IdentitySetPrx < Ice.ObjectPrx
    methods
        function add(obj, additions, varargin)
            % add   Add a sequence of Ice identities to this set of constraints. Order is not preserved and duplicates are
            % implicitly removed.
            %
            % Parameters:
            %   additions (Ice.IdentitySeq) - The sequence of Ice identities to be added.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, additions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('add', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = addAsync(obj, additions, varargin)
            % addAsync   Add a sequence of Ice identities to this set of constraints. Order is not preserved and duplicates are
            % implicitly removed.
            %
            % Parameters:
            %   additions (Ice.IdentitySeq) - The sequence of Ice identities to be added.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, additions);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('add', 2, false, os_, 0, [], {}, varargin{:});
        end
        function remove(obj, deletions, varargin)
            % remove   Remove a sequence of identities from this set of constraints. No errors are returned if an entry is not
            % found.
            %
            % Parameters:
            %   deletions (Ice.IdentitySeq) - The sequence of Ice identities to be removed.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, deletions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('remove', 2, false, os_, false, {}, varargin{:});
        end
        function r_ = removeAsync(obj, deletions, varargin)
            % removeAsync   Remove a sequence of identities from this set of constraints. No errors are returned if an entry is not
            % found.
            %
            % Parameters:
            %   deletions (Ice.IdentitySeq) - The sequence of Ice identities to be removed.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, deletions);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('remove', 2, false, os_, 0, [], {}, varargin{:});
        end
        function result = get(obj, varargin)
            % get   Returns a sequence of identities describing the constraints in this set.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.IdentitySeq) - The sequence of Ice identities for this set.
            
            is_ = obj.iceInvoke('get', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.IdentitySeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getAsync(obj, varargin)
            % getAsync   Returns a sequence of identities describing the constraints in this set.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.IdentitySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('get', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Glacier2::IdentitySet';
        end
        function r = ice_read(is)
            r = is.readProxy('Glacier2.IdentitySetPrx');
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
            % Returns (Glacier2.IdentitySetPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.IdentitySetPrx.ice_staticId(), 'Glacier2.IdentitySetPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Glacier2.IdentitySetPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.IdentitySetPrx', varargin{:});
        end
    end
end
