classdef FileParserPrx < Ice.ObjectPrx
    %FILEPARSERPRX `icegridadmin` provides a <a href="matlab:help IceGrid.FileParserPrx -displayBanner">FileParserPrx</a> object to transform XML files into <a href="matlab:help IceGrid.ApplicationDescriptor -displayBanner">ApplicationDescriptor</a>
    %   objects.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.FileParserPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   FileParserPrx Methods:
    %     parse - Parses a file.
    %     parseAsync - An asynchronous parse.
    %
    %   FileParserPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileParser.
    %     uncheckedCast - Creates a FileParserPrx from another proxy without any validation.
    %
    %   Generated from FileParser.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = parse(obj, xmlFile, adminProxy, context)
            %PARSE Parses a file.
            %
            %   Input Arguments
            %     xmlFile - The full path to the file.
            %       character vector
            %     adminProxy - An Admin proxy, used only to retrieve default templates when needed. May be null.
            %       IceGrid.AdminPrx scalar | empty array of IceGrid.AdminPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The application descriptor.
            %       IceGrid.ApplicationDescriptor scalar
            %
            %   Exceptions
            %     IceGrid.ParseException - Thrown when an error occurs during parsing.
            
            arguments
                obj (1, 1) IceGrid.FileParserPrx
                xmlFile (1, :) char
                adminProxy IceGrid.AdminPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(xmlFile);
            os_.writeProxy(adminProxy);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('parse', 2, true, os_, true, IceGrid.FileParserPrx.parse_ex_, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ApplicationDescriptor.ice_read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue.ice_convert();
        end

        function future = parseAsync(obj, xmlFile, adminProxy, context)
            %PARSEASYNC Parses a file.
            %
            %   Input Arguments
            %     xmlFile - The full path to the file.
            %       character vector
            %     adminProxy - An Admin proxy, used only to retrieve default templates when needed. May be null.
            %       IceGrid.AdminPrx scalar | empty array of IceGrid.AdminPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also parse, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.FileParserPrx
                xmlFile (1, :) char
                adminProxy IceGrid.AdminPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(xmlFile);
            os_.writeProxy(adminProxy);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ApplicationDescriptor.ice_read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.ice_convert();
            end
            future = obj.iceInvokeAsync('parse', 2, true, os_, 1, @unmarshal, IceGrid.FileParserPrx.parse_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::FileParser';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.FileParserPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::FileParser.
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
            %     r - A IceGrid.FileParserPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::FileParser; otherwise, an empty array of IceGrid.FileParserPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.FileParserPrx.ice_staticId(), 'IceGrid.FileParserPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.FileParserPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.FileParserPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.FileParserPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        parse_ex_ = { 'IceGrid.ParseException' }
    end
end
