//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

(function(module, require, exports)
{
    const Ice = require("ice").Ice;
    const _ModuleRegistry = Ice._ModuleRegistry;
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

    const iceC_Test_Empty_ids = [
        "::Ice::Object",
        "::Test::Empty"
    ];

    Test.Empty = class extends Ice.Object
    {
    };

    Test.EmptyPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Empty, Test.EmptyPrx, iceC_Test_Empty_ids, 1);

    const iceC_Test_A_ids = [
        "::Ice::Object",
        "::Test::A"
    ];

    Test.A = class extends Ice.Object
    {
    };

    Test.APrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.A, Test.APrx, iceC_Test_A_ids, 1,
    {
        "callA": [, , , , [7], , , , , ]
    });

    const iceC_Test_B_ids = [
        "::Ice::Object",
        "::Test::A",
        "::Test::B"
    ];

    Test.B = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.A
            ];
        }
    };

    Test.BPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.APrx];
        }
    };

    Slice.defineOperations(Test.B, Test.BPrx, iceC_Test_B_ids, 2,
    {
        "callB": [, , , , [7], , , , , ]
    });

    const iceC_Test_C_ids = [
        "::Ice::Object",
        "::Test::A",
        "::Test::C"
    ];

    Test.C = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.A
            ];
        }
    };

    Test.CPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.APrx];
        }
    };

    Slice.defineOperations(Test.C, Test.CPrx, iceC_Test_C_ids, 2,
    {
        "callC": [, , , , [7], , , , , ]
    });

    const iceC_Test_D_ids = [
        "::Ice::Object",
        "::Test::A",
        "::Test::B",
        "::Test::C",
        "::Test::D"
    ];

    Test.D = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.B,
                Test.C
            ];
        }
    };

    Test.DPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.BPrx,
                Test.CPrx];
        }
    };

    Slice.defineOperations(Test.D, Test.DPrx, iceC_Test_D_ids, 4,
    {
        "callD": [, , , , [7], , , , , ]
    });

    const iceC_Test_E_ids = [
        "::Ice::Object",
        "::Test::E"
    ];

    Test.E = class extends Ice.Object
    {
    };

    Test.EPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.E, Test.EPrx, iceC_Test_E_ids, 1,
    {
        "callE": [, , , , [7], , , , , ]
    });

    const iceC_Test_F_ids = [
        "::Ice::Object",
        "::Test::E",
        "::Test::F"
    ];

    Test.F = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.E
            ];
        }
    };

    Test.FPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.EPrx];
        }
    };

    Slice.defineOperations(Test.F, Test.FPrx, iceC_Test_F_ids, 2,
    {
        "callF": [, , , , [7], , , , , ]
    });

    const iceC_Test_G_ids = [
        "::Ice::Object",
        "::Test::G"
    ];

    Test.G = class extends Ice.Object
    {
    };

    Test.GPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.G, Test.GPrx, iceC_Test_G_ids, 1,
    {
        "shutdown": [, , , , , , , , , ],
        "callG": [, , , , [7], , , , , ]
    });

    const iceC_Test_H_ids = [
        "::Ice::Object",
        "::Test::G",
        "::Test::H"
    ];

    Test.H = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.G
            ];
        }
    };

    Test.HPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.GPrx];
        }
    };

    Slice.defineOperations(Test.H, Test.HPrx, iceC_Test_H_ids, 2,
    {
        "callH": [, , , , [7], , , , , ]
    });

    const iceC_Test_Echo_ids = [
        "::Ice::Object",
        "::Test::Echo"
    ];

    Test.Echo = class extends Ice.Object
    {
    };

    Test.EchoPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Echo, Test.EchoPrx, iceC_Test_Echo_ids, 1,
    {
        "setConnection": [, , , , , , , , , ],
        "startBatch": [, , , , , , , , , ],
        "flushBatch": [, , , , , , , , , ],
        "shutdown": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
