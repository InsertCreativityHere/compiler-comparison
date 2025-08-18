classdef DatabaseObserverPrx < IceGrid.ApplicationObserverPrx & IceGrid.ObjectObserverPrx & IceGrid.AdapterObserverPrx
    %DATABASEOBSERVERPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.DatabaseObserverPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   DatabaseObserverPrx Methods:
    %
    %   DatabaseObserverPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::DatabaseObserver.
    %     uncheckedCast - Creates a DatabaseObserverPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::DatabaseObserver';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.DatabaseObserverPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::DatabaseObserver.
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
            %     r - A IceGrid.DatabaseObserverPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::DatabaseObserver; otherwise, an empty array of IceGrid.DatabaseObserverPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.DatabaseObserverPrx.ice_staticId(), 'IceGrid.DatabaseObserverPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.DatabaseObserverPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.DatabaseObserverPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.DatabaseObserverPrx', varargin{:});
        end
    end
end
