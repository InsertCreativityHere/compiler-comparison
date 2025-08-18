classdef PublisherSessionPrx < DataStormContract.SessionPrx
    %PUBLISHERSESSIONPRX The PublisherSession servant is hosted by the publisher node and is accessed by the subscriber node.
    %
    %   Creation
    %     Syntax
    %       prx = DataStormContract.PublisherSessionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   PublisherSessionPrx Methods:
    %
    %   PublisherSessionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::PublisherSession.
    %     uncheckedCast - Creates a PublisherSessionPrx from another proxy without any validation.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods (Static)
        function id = ice_staticId()
            id = '::DataStormContract::PublisherSession';
        end

        function r = ice_read(is)
            r = is.readProxy('DataStormContract.PublisherSessionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::DataStormContract::PublisherSession.
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
            %     r - A DataStormContract.PublisherSessionPrx scalar if the target object implements Slice interface 
            %       ::DataStormContract::PublisherSession; otherwise, an empty array of DataStormContract.PublisherSessionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.PublisherSessionPrx.ice_staticId(), 'DataStormContract.PublisherSessionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a DataStormContract.PublisherSessionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new DataStormContract.PublisherSessionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.PublisherSessionPrx', varargin{:});
        end
    end
end
