classdef IdentitySetPrx < Ice.ObjectPrx
    %IDENTITYSETPRX Manages a set of object identity constraints on a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a>.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.IdentitySetPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   IdentitySetPrx Methods:
    %     add - Adds a sequence of Ice identities to this set of constraints.
    %     addAsync - An asynchronous add.
    %     get - Gets a sequence of identities describing the constraints in this set.
    %     getAsync - An asynchronous get.
    %     remove - Removes a sequence of identities from this set of constraints.
    %     removeAsync - An asynchronous remove.
    %
    %   IdentitySetPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::IdentitySet.
    %     uncheckedCast - Creates a IdentitySetPrx from another proxy without any validation.
    %
    %   See also Glacier2.SessionControl
    %
    %   Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function add(obj, additions, context)
            %ADD Adds a sequence of Ice identities to this set of constraints. Order is not preserved and duplicates are
            %   implicitly removed.
            %
            %   Input Arguments
            %     additions - The sequence of Ice identities to add.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                additions (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, additions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('add', 2, false, os_, false, {}, context);
        end

        function future = addAsync(obj, additions, context)
            %ADDASYNC Adds a sequence of Ice identities to this set of constraints. Order is not preserved and duplicates are
            %   implicitly removed.
            %
            %   Input Arguments
            %     additions - The sequence of Ice identities to add.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also add, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                additions (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, additions);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('add', 2, false, os_, 0, [], {}, context);
        end

        function remove(obj, deletions, context)
            %REMOVE Removes a sequence of identities from this set of constraints. No errors are returned if an entry is not
            %   found.
            %
            %   Input Arguments
            %     deletions - The sequence of Ice identities to remove.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                deletions (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, deletions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('remove', 2, false, os_, false, {}, context);
        end

        function future = removeAsync(obj, deletions, context)
            %REMOVEASYNC Removes a sequence of identities from this set of constraints. No errors are returned if an entry is not
            %   found.
            %
            %   Input Arguments
            %     deletions - The sequence of Ice identities to remove.
            %       Ice.Identity vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also remove, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                deletions (1, :) Ice.Identity
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, deletions);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('remove', 2, false, os_, 0, [], {}, context);
        end

        function returnValue = get(obj, context)
            %GET Gets a sequence of identities describing the constraints in this set.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The sequence of Ice identities for this set.
            %       Ice.Identity vector
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('get', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.IdentitySeq.read(is_);
            is_.endEncapsulation();
        end

        function future = getAsync(obj, context)
            %GETASYNC Gets a sequence of identities describing the constraints in this set.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also get, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.IdentitySetPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.IdentitySeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('get', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::IdentitySet';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.IdentitySetPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::IdentitySet.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Glacier2.IdentitySetPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::IdentitySet; otherwise, an empty array of Glacier2.IdentitySetPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.IdentitySetPrx.ice_staticId(), 'Glacier2.IdentitySetPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.IdentitySetPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.IdentitySetPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.IdentitySetPrx', varargin{:});
        end
    end
end
