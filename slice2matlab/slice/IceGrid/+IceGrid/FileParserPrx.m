% FileParserPrx   Summary of FileParserPrx
%
% icegridadmin provides a FileParser
% object to transform XML files into ApplicationDescriptor
% objects.
%
% FileParserPrx Methods:
%   parse - Parse a file.
%   parseAsync - Parse a file.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileParser.ice by slice2matlab version 3.7.10

classdef FileParserPrx < Ice.ObjectPrx
    methods
        function result = parse(obj, xmlFile, adminProxy, varargin)
            % parse   Parse a file.
            %
            % Parameters:
            %   xmlFile (char) - Full pathname to the file.
            %   adminProxy (IceGrid.AdminPrx) - An Admin proxy, used only to retrieve default
            %     templates when needed. May be null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ApplicationDescriptor) - The application descriptor.
            %
            % Exceptions:
            %   IceGrid.ParseException - Raised if an error occurred during parsing.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(xmlFile);
            os_.writeProxy(adminProxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('parse', 2, true, os_, true, IceGrid.FileParserPrx.parse_ex_, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ApplicationDescriptor.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result.ice_convert();
        end
        function r_ = parseAsync(obj, xmlFile, adminProxy, varargin)
            % parseAsync   Parse a file.
            %
            % Parameters:
            %   xmlFile (char) - Full pathname to the file.
            %   adminProxy (IceGrid.AdminPrx) - An Admin proxy, used only to retrieve default
            %     templates when needed. May be null.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.ParseException - Raised if an error occurred during parsing.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(xmlFile);
            os_.writeProxy(adminProxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ApplicationDescriptor.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.ice_convert();
            end
            r_ = obj.iceInvokeAsync('parse', 2, true, os_, 1, @unmarshal, IceGrid.FileParserPrx.parse_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::FileParser';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileParserPrx');
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
            % Returns (IceGrid.FileParserPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileParserPrx.ice_staticId(), 'IceGrid.FileParserPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.FileParserPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileParserPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = FileParserPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        parse_ex_ = { 'IceGrid.ParseException' }
    end
end
