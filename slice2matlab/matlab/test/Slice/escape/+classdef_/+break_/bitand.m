% bitand   Summary of bitand
%
% bitand Properties:
%   break_
%   case_
%   catch_
%   classdef_
%   continue_
%   else_
%   elseif_
%   end_
%   enumeration_
%   events_
%   for_
%   function_
%   global_
%   if_
%   methods_
%   otherwise_
%   parfor_
%   persistent_
%   properties_
%   return_
%   spmd_
%   switch_
%   try_
%   while_
%   abs_
%   and_
%   char_
%   eq_
%   length_
%   size_
%   xor_
%   LAST

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef bitand < uint8
    enumeration
        break_ (0)
        case_ (1)
        catch_ (2)
        classdef_ (3)
        continue_ (4)
        else_ (5)
        elseif_ (6)
        end_ (7)
        enumeration_ (8)
        events_ (9)
        for_ (10)
        function_ (11)
        global_ (12)
        if_ (13)
        methods_ (14)
        otherwise_ (15)
        parfor_ (16)
        persistent_ (17)
        properties_ (18)
        return_ (19)
        spmd_ (20)
        switch_ (21)
        try_ (22)
        while_ (23)
        abs_ (24)
        and_ (25)
        char_ (26)
        eq_ (27)
        length_ (28)
        size_ (29)
        xor_ (30)
        LAST (31)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(classdef_.break_.bitand.break_), 31);
            else
                os.writeEnum(int32(v), 31);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                classdef_.break_.bitand.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(31);
            r = classdef_.break_.bitand.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = classdef_.break_.bitand.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = classdef_.break_.bitand.break_;
                case 1
                    r = classdef_.break_.bitand.case_;
                case 2
                    r = classdef_.break_.bitand.catch_;
                case 3
                    r = classdef_.break_.bitand.classdef_;
                case 4
                    r = classdef_.break_.bitand.continue_;
                case 5
                    r = classdef_.break_.bitand.else_;
                case 6
                    r = classdef_.break_.bitand.elseif_;
                case 7
                    r = classdef_.break_.bitand.end_;
                case 8
                    r = classdef_.break_.bitand.enumeration_;
                case 9
                    r = classdef_.break_.bitand.events_;
                case 10
                    r = classdef_.break_.bitand.for_;
                case 11
                    r = classdef_.break_.bitand.function_;
                case 12
                    r = classdef_.break_.bitand.global_;
                case 13
                    r = classdef_.break_.bitand.if_;
                case 14
                    r = classdef_.break_.bitand.methods_;
                case 15
                    r = classdef_.break_.bitand.otherwise_;
                case 16
                    r = classdef_.break_.bitand.parfor_;
                case 17
                    r = classdef_.break_.bitand.persistent_;
                case 18
                    r = classdef_.break_.bitand.properties_;
                case 19
                    r = classdef_.break_.bitand.return_;
                case 20
                    r = classdef_.break_.bitand.spmd_;
                case 21
                    r = classdef_.break_.bitand.switch_;
                case 22
                    r = classdef_.break_.bitand.try_;
                case 23
                    r = classdef_.break_.bitand.while_;
                case 24
                    r = classdef_.break_.bitand.abs_;
                case 25
                    r = classdef_.break_.bitand.and_;
                case 26
                    r = classdef_.break_.bitand.char_;
                case 27
                    r = classdef_.break_.bitand.eq_;
                case 28
                    r = classdef_.break_.bitand.length_;
                case 29
                    r = classdef_.break_.bitand.size_;
                case 30
                    r = classdef_.break_.bitand.xor_;
                case 31
                    r = classdef_.break_.bitand.LAST;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
