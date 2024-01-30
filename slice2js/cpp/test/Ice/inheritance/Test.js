//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

    Test.MA = _ModuleRegistry.module("Test.MA");

    const iceC_Test_MA_IA_ids = [
        "::Ice::Object",
        "::Test::MA::IA"
    ];

    Test.MA.IA = class extends Ice.Object
    {
    };

    Test.MA.IAPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.MA.IA, Test.MA.IAPrx, iceC_Test_MA_IA_ids, 1,
    {
        "iaop": [, , , , ["Test.MA.IAPrx"], [["Test.MA.IAPrx"]], , , , ]
    });

    Test.MB = _ModuleRegistry.module("Test.MB");

    const iceC_Test_MB_IB1_ids = [
        "::Ice::Object",
        "::Test::MA::IA",
        "::Test::MB::IB1"
    ];

    Test.MB.IB1 = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.MA.IA
            ];
        }
    };

    Test.MB.IB1Prx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.MA.IAPrx];
        }
    };

    Slice.defineOperations(Test.MB.IB1, Test.MB.IB1Prx, iceC_Test_MB_IB1_ids, 2,
    {
        "ib1op": [, , , , ["Test.MB.IB1Prx"], [["Test.MB.IB1Prx"]], , , , ]
    });

    const iceC_Test_MB_IB2_ids = [
        "::Ice::Object",
        "::Test::MA::IA",
        "::Test::MB::IB2"
    ];

    Test.MB.IB2 = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.MA.IA
            ];
        }
    };

    Test.MB.IB2Prx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.MA.IAPrx];
        }
    };

    Slice.defineOperations(Test.MB.IB2, Test.MB.IB2Prx, iceC_Test_MB_IB2_ids, 2,
    {
        "ib2op": [, , , , ["Test.MB.IB2Prx"], [["Test.MB.IB2Prx"]], , , , ]
    });

    const iceC_Test_MA_IC_ids = [
        "::Ice::Object",
        "::Test::MA::IA",
        "::Test::MA::IC",
        "::Test::MB::IB1",
        "::Test::MB::IB2"
    ];

    Test.MA.IC = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                Test.MB.IB1,
                Test.MB.IB2
            ];
        }
    };

    Test.MA.ICPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                Test.MB.IB1Prx,
                Test.MB.IB2Prx];
        }
    };

    Slice.defineOperations(Test.MA.IC, Test.MA.ICPrx, iceC_Test_MA_IC_ids, 2,
    {
        "icop": [, , , , ["Test.MA.ICPrx"], [["Test.MA.ICPrx"]], , , , ]
    });

    const iceC_Test_Initial_ids = [
        "::Ice::Object",
        "::Test::Initial"
    ];

    Test.Initial = class extends Ice.Object
    {
    };

    Test.InitialPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Initial, Test.InitialPrx, iceC_Test_Initial_ids, 1,
    {
        "shutdown": [, , , , , , , , , ],
        "iaop": [, , , , ["Test.MA.IAPrx"], , , , , ],
        "ib1op": [, , , , ["Test.MB.IB1Prx"], , , , , ],
        "ib2op": [, , , , ["Test.MB.IB2Prx"], , , , , ],
        "icop": [, , , , ["Test.MA.ICPrx"], , , , , ]
    });

    Test.MC = _ModuleRegistry.module("Test.MC");

    const iceC_Test_MC_A_ids = [
        "::Ice::Object",
        "::Test::MC::A"
    ];

    Test.MC.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.MC.A, iceC_Test_MC_A_ids[1], false);

    const iceC_Test_MC_B_ids = [
        "::Ice::Object",
        "::Test::MC::A",
        "::Test::MC::B"
    ];

    Test.MC.B = class extends Test.MC.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.MC.B, iceC_Test_MC_B_ids[2], false);

    const iceC_Test_MC_C_ids = [
        "::Ice::Object",
        "::Test::MC::A",
        "::Test::MC::B",
        "::Test::MC::C"
    ];

    Test.MC.C = class extends Test.MC.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.MC.C, iceC_Test_MC_C_ids[3], false);

    const iceC_Test_MC_D_ids = [
        "::Ice::Object",
        "::Test::MC::A",
        "::Test::MC::B",
        "::Test::MC::C",
        "::Test::MC::D"
    ];

    Test.MC.D = class extends Test.MC.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.MC.D, iceC_Test_MC_D_ids[4], false);

    Test.MD = _ModuleRegistry.module("Test.MD");

    const iceC_Test_MD_A_ids = [
        "::Ice::Object",
        "::Test::MD::A"
    ];

    Test.MD.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.MD.A, iceC_Test_MD_A_ids[1], false);

    const iceC_Test_MD_B_ids = [
        "::Ice::Object",
        "::Test::MD::A",
        "::Test::MD::B"
    ];

    Test.MD.B = class extends Test.MD.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.MD.B, iceC_Test_MD_B_ids[2], false);

    const iceC_Test_MD_C_ids = [
        "::Ice::Object",
        "::Test::MD::A",
        "::Test::MD::B",
        "::Test::MD::C"
    ];

    Test.MD.C = class extends Test.MD.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.MD.C, iceC_Test_MD_C_ids[3], false);

    const iceC_Test_MD_D_ids = [
        "::Ice::Object",
        "::Test::MD::A",
        "::Test::MD::B",
        "::Test::MD::C",
        "::Test::MD::D"
    ];

    Test.MD.D = class extends Test.MD.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.MD.D, iceC_Test_MD_D_ids[4], false);

    Test.ME = _ModuleRegistry.module("Test.ME");

    const iceC_Test_ME_A_ids = [
        "::Ice::Object",
        "::Test::ME::A"
    ];

    Test.ME.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.ME.A, iceC_Test_ME_A_ids[1], false);

    const iceC_Test_ME_B_ids = [
        "::Ice::Object",
        "::Test::ME::A",
        "::Test::ME::B"
    ];

    Test.ME.B = class extends Test.ME.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.ME.B, iceC_Test_ME_B_ids[2], false);

    const iceC_Test_ME_C_ids = [
        "::Ice::Object",
        "::Test::ME::A",
        "::Test::ME::B",
        "::Test::ME::C"
    ];

    Test.ME.C = class extends Test.ME.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.ME.C, iceC_Test_ME_C_ids[3], false);

    const iceC_Test_ME_D_ids = [
        "::Ice::Object",
        "::Test::ME::A",
        "::Test::ME::B",
        "::Test::ME::C",
        "::Test::ME::D"
    ];

    Test.ME.D = class extends Test.ME.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.ME.D, iceC_Test_ME_D_ids[4], false);

    Test.MF = _ModuleRegistry.module("Test.MF");

    const iceC_Test_MF_A_ids = [
        "::Ice::Object",
        "::Test::MF::A"
    ];

    Test.MF.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.MF.A, iceC_Test_MF_A_ids[1], false);

    const iceC_Test_MF_B_ids = [
        "::Ice::Object",
        "::Test::MF::A",
        "::Test::MF::B"
    ];

    Test.MF.B = class extends Test.MF.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.MF.B, iceC_Test_MF_B_ids[2], false);

    const iceC_Test_MF_C_ids = [
        "::Ice::Object",
        "::Test::MF::A",
        "::Test::MF::B",
        "::Test::MF::C"
    ];

    Test.MF.C = class extends Test.MF.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.MF.C, iceC_Test_MF_C_ids[3], false);

    const iceC_Test_MF_D_ids = [
        "::Ice::Object",
        "::Test::MF::A",
        "::Test::MF::B",
        "::Test::MF::C",
        "::Test::MF::D"
    ];

    Test.MF.D = class extends Test.MF.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.MF.D, iceC_Test_MF_D_ids[4], false);

    Test.MG = _ModuleRegistry.module("Test.MG");

    const iceC_Test_MG_A_ids = [
        "::Ice::Object",
        "::Test::MG::A"
    ];

    Test.MG.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.MG.A, iceC_Test_MG_A_ids[1], false);

    const iceC_Test_MG_B_ids = [
        "::Ice::Object",
        "::Test::MG::A",
        "::Test::MG::B"
    ];

    Test.MG.B = class extends Test.MG.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.MG.B, iceC_Test_MG_B_ids[2], false);

    const iceC_Test_MG_C_ids = [
        "::Ice::Object",
        "::Test::MG::A",
        "::Test::MG::B",
        "::Test::MG::C"
    ];

    Test.MG.C = class extends Test.MG.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.MG.C, iceC_Test_MG_C_ids[3], false);

    const iceC_Test_MG_D_ids = [
        "::Ice::Object",
        "::Test::MG::A",
        "::Test::MG::B",
        "::Test::MG::C",
        "::Test::MG::D"
    ];

    Test.MG.D = class extends Test.MG.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.MG.D, iceC_Test_MG_D_ids[4], false);

    Test.MH = _ModuleRegistry.module("Test.MH");

    const iceC_Test_MH_A_ids = [
        "::Ice::Object",
        "::Test::MH::A"
    ];

    Test.MH.A = class extends Ice.Value
    {
        constructor(aA = 0)
        {
            super();
            this.aA = aA;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.aA);
        }

        _iceReadMemberImpl(istr)
        {
            this.aA = istr.readInt();
        }
    };

    Slice.defineValue(Test.MH.A, iceC_Test_MH_A_ids[1], false);

    const iceC_Test_MH_B_ids = [
        "::Ice::Object",
        "::Test::MH::A",
        "::Test::MH::B"
    ];

    Test.MH.B = class extends Test.MH.A
    {
        constructor(aA, bB = 0)
        {
            super(aA);
            this.bB = bB;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.bB);
        }

        _iceReadMemberImpl(istr)
        {
            this.bB = istr.readInt();
        }
    };

    Slice.defineValue(Test.MH.B, iceC_Test_MH_B_ids[2], false);

    const iceC_Test_MH_C_ids = [
        "::Ice::Object",
        "::Test::MH::A",
        "::Test::MH::B",
        "::Test::MH::C"
    ];

    Test.MH.C = class extends Test.MH.B
    {
        constructor(aA, bB, cC = 0)
        {
            super(aA, bB);
            this.cC = cC;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.cC);
        }

        _iceReadMemberImpl(istr)
        {
            this.cC = istr.readInt();
        }
    };

    Slice.defineValue(Test.MH.C, iceC_Test_MH_C_ids[3], false);

    const iceC_Test_MH_D_ids = [
        "::Ice::Object",
        "::Test::MH::A",
        "::Test::MH::B",
        "::Test::MH::C",
        "::Test::MH::D"
    ];

    Test.MH.D = class extends Test.MH.C
    {
        constructor(aA, bB, cC, dD = 0)
        {
            super(aA, bB, cC);
            this.dD = dD;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.dD);
        }

        _iceReadMemberImpl(istr)
        {
            this.dD = istr.readInt();
        }
    };

    Slice.defineValue(Test.MH.D, iceC_Test_MH_D_ids[4], false);
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
