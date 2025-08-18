classdef StringSetPrx < Ice.ObjectPrx
    %STRINGSETPRX Manages a set of constraints on a <a href="matlab:help Glacier2.SessionPrx -displayBanner">SessionPrx</a>.
    %
    %   Creation
    %     Syntax
    %       prx = Glacier2.StringSetPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   StringSetPrx Methods:
    %     add - Adds a sequence of strings to this set of constraints.
    %     addAsync - An asynchronous add.
    %     get - Gets a sequence of strings describing the constraints in this set.
    %     getAsync - An asynchronous get.
    %     remove - Removes a sequence of strings from this set of constraints.
    %     removeAsync - An asynchronous remove.
    %
    %   StringSetPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Glacier2::StringSet.
    %     uncheckedCast - Creates a StringSetPrx from another proxy without any validation.
    %
    %   See also Glacier2.SessionControl
    %
    %   Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function add(obj, additions, context)
            %ADD Adds a sequence of strings to this set of constraints. Order is not preserved and duplicates are implicitly
            %   removed.
            %
            %   Input Arguments
            %     additions - The sequence of strings to add.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Glacier2.StringSetPrx
                additions (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(additions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('add', 2, false, os_, false, {}, context);
        end

        function future = addAsync(obj, additions, context)
            %ADDASYNC Adds a sequence of strings to this set of constraints. Order is not preserved and duplicates are implicitly
            %   removed.
            %
            %   Input Arguments
            %     additions - The sequence of strings to add.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also add, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.StringSetPrx
                additions (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(additions);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('add', 2, false, os_, 0, [], {}, context);
        end

        function remove(obj, deletions, context)
            %REMOVE Removes a sequence of strings from this set of constraints. No errors are returned if an entry is not found.
            %
            %   Input Arguments
            %     deletions - The sequence of strings to remove.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Glacier2.StringSetPrx
                deletions (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(deletions);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('remove', 2, false, os_, false, {}, context);
        end

        function future = removeAsync(obj, deletions, context)
            %REMOVEASYNC Removes a sequence of strings from this set of constraints. No errors are returned if an entry is not found.
            %
            %   Input Arguments
            %     deletions - The sequence of strings to remove.
            %       string vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also remove, Ice.Future.
            
            arguments
                obj (1, 1) Glacier2.StringSetPrx
                deletions (1, :) string
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(deletions);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('remove', 2, false, os_, 0, [], {}, context);
        end

        function returnValue = get(obj, context)
            %GET Gets a sequence of strings describing the constraints in this set.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The sequence of strings for this set.
            %       string vector
            
            arguments
                obj (1, 1) Glacier2.StringSetPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('get', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readStringSeq();
            is_.endEncapsulation();
        end

        function future = getAsync(obj, context)
            %GETASYNC Gets a sequence of strings describing the constraints in this set.
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
                obj (1, 1) Glacier2.StringSetPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('get', 2, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Glacier2::StringSet';
        end

        function r = ice_read(is)
            r = is.readProxy('Glacier2.StringSetPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Glacier2::StringSet.
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
            %     r - A Glacier2.StringSetPrx scalar if the target object implements Slice interface 
            %       ::Glacier2::StringSet; otherwise, an empty array of Glacier2.StringSetPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Glacier2.StringSetPrx.ice_staticId(), 'Glacier2.StringSetPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Glacier2.StringSetPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Glacier2.StringSetPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Glacier2.StringSetPrx', varargin{:});
        end
    end
end
