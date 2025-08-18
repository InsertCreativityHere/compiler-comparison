classdef optionalMembers < Ice.Value
    %OPTIONALMEMBERS
    %
    %   Creation
    %     Syntax
    %       obj = abstract.optionalMembers()
    %       obj = abstract.optionalMembers(for, goto, if, internal, namespace)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   optionalMembers Properties:
    %     for
    %     goto
    %     if
    %     internal
    %     namespace
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FOR
        %   abstract.break scalar | Ice.Unset
        for {mustBeScalarOrEmpty} = IceInternal.UnsetI.Instance
        
        % GOTO
        %   abstract.as scalar | Ice.Unset
        goto (1, 1) = IceInternal.UnsetI.Instance
        
        % IF
        %   abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
        if {mustBeScalarOrEmpty} = abstract.explicitPrx.empty
        
        % INTERNAL
        %   string, abstract.break) scalar | Ice.Unset
        internal (1, 1) = IceInternal.UnsetI.Instance
        
        % NAMESPACE
        %   character vector | Ice.Unset
        namespace (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = optionalMembers(for, goto, if, internal, namespace)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
                obj.for = for;
                obj.goto = goto;
                obj.if = if;
                obj.internal = internal;
                obj.namespace = namespace;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::optionalMembers', -1, true);
            abstract.break.ice_writeOpt(os, 1, obj.for);
            abstract.as.ice_writeOpt(os, 2, obj.goto);
            os.writeProxyOpt(3, obj.if);
            abstract.while.writeOpt(os, 5, obj.internal);
            os.writeStringOpt(7, obj.namespace);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.for = abstract.break.ice_readOpt(is, 1);
            obj.goto = abstract.as.ice_readOpt(is, 2);
            obj.if = is.readProxyOpt(3, 'abstract.explicitPrx');
            obj.internal = abstract.while.readOpt(is, 5);
            obj.namespace = is.readStringOpt(7);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::abstract::optionalMembers';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::optionalMembers'
    end
end
