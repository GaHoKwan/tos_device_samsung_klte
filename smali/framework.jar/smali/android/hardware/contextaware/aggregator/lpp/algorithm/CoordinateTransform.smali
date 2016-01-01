.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final TRANSFORMSUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "CoordinateTransform"

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->TRANSFORMSUCCESS:I

    return-void
.end method

.method public static enu2llh([D[D)[D
    .locals 1
    .param p0, "enu"    # [D
    .param p1, "orgllh"    # [D

    .prologue
    .line 209
    invoke-static {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    invoke-static {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2xyz([D[D)[D

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static enu2xyz([D[D)[D
    .locals 26
    .param p0, "enu"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 161
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 164
    .local v19, "xyz":[D
    new-instance v18, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 167
    .local v18, "tmpenu":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-static/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v11

    .line 171
    .local v11, "orgllh":[D
    const/16 v20, 0x0

    aget-wide v12, v11, v20

    .line 172
    .local v12, "phi":D
    const/16 v20, 0x1

    aget-wide v9, v11, v20

    .line 173
    .local v9, "lam":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 174
    .local v16, "sinphi":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 175
    .local v7, "cosphi":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 176
    .local v14, "sinlam":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 184
    .local v5, "coslam":D
    new-instance v4, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 185
    .local v4, "R":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    const/16 v20, 0x0

    const/16 v21, 0x0

    neg-double v0, v14

    move-wide/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 186
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 187
    const/16 v20, 0x0

    const/16 v21, 0x2

    const-wide/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 188
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v5

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 189
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 190
    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 191
    const/16 v20, 0x2

    const/16 v21, 0x0

    mul-double v22, v7, v5

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 192
    const/16 v20, 0x2

    const/16 v21, 0x1

    mul-double v22, v7, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 193
    const/16 v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 199
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-wide v21, p1, v21

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v23

    add-double v21, v21, v23

    aput-wide v21, v19, v20

    .line 200
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget-wide v21, p1, v21

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v23

    add-double v21, v21, v23

    aput-wide v21, v19, v20

    .line 201
    const/16 v20, 0x2

    const/16 v21, 0x2

    aget-wide v21, p1, v21

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v23

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v23

    add-double v21, v21, v23

    aput-wide v21, v19, v20

    .line 205
    return-object v19
.end method

.method public static llh2enu([D[D)[D
    .locals 8
    .param p0, "llh"    # [D
    .param p1, "llhorg"    # [D

    .prologue
    const/4 v7, 0x3

    .line 49
    new-array v1, v7, [D

    .line 50
    .local v1, "xyz":[D
    new-array v3, v7, [D

    .line 54
    .local v3, "xyzorg":[D
    invoke-static {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v2

    .line 55
    .local v2, "xyz2":[D
    invoke-static {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    .line 57
    .local v4, "xyzorg2":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 58
    aget-wide v5, v2, v0

    aput-wide v5, v1, v0

    .line 59
    aget-wide v5, v4, v0

    aput-wide v5, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v1, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2enu([D[D)[D

    move-result-object v5

    return-object v5
.end method

.method public static llh2xyz([D)[D
    .locals 42
    .param p0, "llh"    # [D

    .prologue
    .line 13
    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [D

    move-object/from16 v31, v0

    .line 16
    .local v31, "xyz":[D
    const/16 v36, 0x0

    aget-wide v15, p0, v36

    .line 17
    .local v15, "phi":D
    const/16 v36, 0x1

    aget-wide v13, p0, v36

    .line 18
    .local v13, "lambda":D
    const/16 v36, 0x2

    aget-wide v11, p0, v36

    .line 20
    .local v11, "h":D
    const-wide v1, 0x415854a640000000L    # 6378137.0

    .line 21
    .local v1, "a":D
    const-wide v3, 0x41583fc4141bda51L    # 6356752.3142

    .line 22
    .local v3, "b":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    div-double v38, v3, v1

    div-double v40, v3, v1

    mul-double v38, v38, v40

    sub-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 24
    .local v9, "e":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    .line 25
    .local v19, "sinphi":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 26
    .local v7, "cosphi":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 27
    .local v5, "coslam":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    .line 28
    .local v17, "sinlam":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v38

    mul-double v21, v36, v38

    .line 29
    .local v21, "tan2phi":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v9, v9

    sub-double v23, v36, v38

    .line 30
    .local v23, "tmp":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v23, v21

    add-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    .line 34
    .local v27, "tmpden":D
    mul-double v36, v1, v5

    div-double v36, v36, v27

    mul-double v38, v11, v5

    mul-double v38, v38, v7

    add-double v29, v36, v38

    .line 36
    .local v29, "x":D
    mul-double v36, v1, v17

    div-double v36, v36, v27

    mul-double v38, v11, v17

    mul-double v38, v38, v7

    add-double v32, v36, v38

    .line 38
    .local v32, "y":D
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v38, v9, v9

    mul-double v38, v38, v19

    mul-double v38, v38, v19

    sub-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    .line 39
    .local v25, "tmp2":D
    mul-double v36, v1, v23

    mul-double v36, v36, v19

    div-double v36, v36, v25

    mul-double v38, v11, v19

    add-double v34, v36, v38

    .line 41
    .local v34, "z":D
    const/16 v36, 0x0

    aput-wide v29, v31, v36

    .line 42
    const/16 v36, 0x1

    aput-wide v32, v31, v36

    .line 43
    const/16 v36, 0x2

    aput-wide v34, v31, v36

    .line 45
    return-object v31
.end method

.method public static xyz2enu([D[D)[D
    .locals 25
    .param p0, "xyz"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 65
    const/4 v3, 0x3

    new-array v13, v3, [D

    .line 66
    .local v13, "enu":[D
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v16, v0

    .line 68
    .local v16, "orgllh":[D
    new-instance v24, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 69
    .local v24, "tmpxyz":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v23, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 71
    .local v23, "tmporg":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 73
    .local v2, "difxyz":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->uminus()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v16

    .line 76
    const/4 v3, 0x0

    aget-wide v17, v16, v3

    .line 77
    .local v17, "phi":D
    const/4 v3, 0x1

    aget-wide v14, v16, v3

    .line 78
    .local v14, "lam":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 79
    .local v21, "sinphi":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 80
    .local v11, "cosphi":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    .line 81
    .local v19, "sinlam":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 83
    .local v9, "coslam":D
    new-instance v8, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v8, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 89
    .local v8, "R":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    neg-double v5, v0

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 90
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 91
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 92
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide/from16 v0, v21

    neg-double v5, v0

    mul-double/2addr v5, v9

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 93
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-wide/from16 v0, v21

    neg-double v5, v0

    mul-double v5, v5, v19

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 94
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 95
    const/4 v3, 0x2

    const/4 v4, 0x0

    mul-double v5, v11, v9

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 96
    const/4 v3, 0x2

    const/4 v4, 0x1

    mul-double v5, v11, v19

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 97
    const/4 v3, 0x2

    const/4 v4, 0x2

    move-wide/from16 v0, v21

    invoke-virtual {v8, v3, v4, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v13, v3

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v13, v3

    .line 101
    const/4 v3, 0x2

    invoke-virtual {v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v13, v3

    .line 103
    return-object v13
.end method

.method public static xyz2llh([D)[D
    .locals 71
    .param p0, "xyz"    # [D

    .prologue
    .line 107
    const/16 v63, 0x3

    move/from16 v0, v63

    new-array v0, v0, [D

    move-object/from16 v34, v0

    .line 110
    .local v34, "llh":[D
    const/16 v63, 0x0

    aget-wide v49, p0, v63

    .line 111
    .local v49, "x":D
    const/16 v63, 0x1

    aget-wide v53, p0, v63

    .line 112
    .local v53, "y":D
    const/16 v63, 0x2

    aget-wide v57, p0, v63

    .line 113
    .local v57, "z":D
    mul-double v51, v49, v49

    .line 114
    .local v51, "x2":D
    mul-double v55, v53, v53

    .line 115
    .local v55, "y2":D
    mul-double v59, v57, v57

    .line 117
    .local v59, "z2":D
    const-wide v16, 0x415854a640000000L    # 6378137.0

    .line 118
    .local v16, "a":D
    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    .line 119
    .local v18, "b":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    div-double v65, v18, v16

    div-double v67, v18, v16

    mul-double v65, v65, v67

    sub-double v63, v63, v65

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 120
    .local v24, "e":D
    mul-double v20, v18, v18

    .line 121
    .local v20, "b2":D
    mul-double v26, v24, v24

    .line 122
    .local v26, "e2":D
    div-double v63, v16, v18

    mul-double v28, v24, v63

    .line 123
    .local v28, "ep":D
    add-double v63, v51, v55

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v37

    .line 124
    .local v37, "r":D
    mul-double v39, v37, v37

    .line 125
    .local v39, "r2":D
    mul-double v63, v16, v16

    mul-double v65, v18, v18

    sub-double v2, v63, v65

    .line 126
    .local v2, "E2":D
    const-wide/high16 v63, 0x404b000000000000L    # 54.0

    mul-double v63, v63, v20

    mul-double v4, v63, v59

    .line 127
    .local v4, "F":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    sub-double v63, v63, v26

    mul-double v63, v63, v59

    add-double v63, v63, v39

    mul-double v65, v26, v2

    sub-double v6, v63, v65

    .line 128
    .local v6, "G":D
    mul-double v63, v26, v26

    mul-double v63, v63, v4

    mul-double v63, v63, v39

    mul-double v65, v6, v6

    mul-double v65, v65, v6

    div-double v22, v63, v65

    .line 129
    .local v22, "c":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    add-double v63, v63, v22

    mul-double v65, v22, v22

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    mul-double v67, v67, v22

    add-double v65, v65, v67

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v65

    add-double v63, v63, v65

    const-wide v65, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v63 .. v66}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v43

    .line 130
    .local v43, "s":D
    const-wide/high16 v63, 0x4008000000000000L    # 3.0

    const-wide/high16 v65, 0x3ff0000000000000L    # 1.0

    div-double v65, v65, v43

    add-double v65, v65, v43

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    add-double v65, v65, v67

    mul-double v63, v63, v65

    const-wide/high16 v65, 0x3ff0000000000000L    # 1.0

    div-double v65, v65, v43

    add-double v65, v65, v43

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    add-double v65, v65, v67

    mul-double v63, v63, v65

    mul-double v63, v63, v6

    mul-double v63, v63, v6

    div-double v8, v4, v63

    .line 131
    .local v8, "P":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    mul-double v65, v65, v26

    mul-double v65, v65, v26

    mul-double v65, v65, v8

    add-double v63, v63, v65

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 132
    .local v10, "Q":D
    mul-double v63, v8, v26

    mul-double v63, v63, v37

    move-wide/from16 v0, v63

    neg-double v0, v0

    move-wide/from16 v63, v0

    const-wide/high16 v65, 0x3ff0000000000000L    # 1.0

    add-double v65, v65, v10

    div-double v63, v63, v65

    mul-double v65, v16, v16

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v69, 0x3ff0000000000000L    # 1.0

    div-double v69, v69, v10

    add-double v67, v67, v69

    mul-double v65, v65, v67

    const-wide/high16 v67, 0x3ff0000000000000L    # 1.0

    sub-double v67, v67, v26

    mul-double v67, v67, v8

    mul-double v67, v67, v59

    const-wide/high16 v69, 0x3ff0000000000000L    # 1.0

    add-double v69, v69, v10

    mul-double v69, v69, v10

    div-double v67, v67, v69

    sub-double v65, v65, v67

    mul-double v67, v8, v39

    const-wide/high16 v69, 0x4000000000000000L    # 2.0

    div-double v67, v67, v69

    sub-double v65, v65, v67

    invoke-static/range {v65 .. v66}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v65

    add-double v41, v63, v65

    .line 133
    .local v41, "ro":D
    mul-double v63, v26, v41

    sub-double v63, v37, v63

    mul-double v65, v26, v41

    sub-double v65, v37, v65

    mul-double v47, v63, v65

    .line 134
    .local v47, "tmp":D
    add-double v63, v47, v59

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 135
    .local v12, "U":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    sub-double v63, v63, v26

    mul-double v63, v63, v59

    add-double v63, v63, v47

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 136
    .local v14, "V":D
    mul-double v63, v20, v57

    mul-double v65, v16, v14

    div-double v61, v63, v65

    .line 138
    .local v61, "zo":D
    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    mul-double v65, v16, v14

    div-double v65, v20, v65

    sub-double v63, v63, v65

    mul-double v30, v12, v63

    .line 140
    .local v30, "height":D
    mul-double v63, v28, v28

    mul-double v63, v63, v61

    add-double v63, v63, v57

    div-double v63, v63, v37

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->atan(D)D

    move-result-wide v32

    .line 142
    .local v32, "lat":D
    div-double v63, v53, v49

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->atan(D)D

    move-result-wide v45

    .line 143
    .local v45, "temp":D
    const-wide/16 v63, 0x0

    cmpl-double v63, v49, v63

    if-ltz v63, :cond_0

    .line 144
    move-wide/from16 v35, v45

    .line 153
    .local v35, "lon":D
    :goto_0
    const/16 v63, 0x0

    aput-wide v32, v34, v63

    .line 154
    const/16 v63, 0x1

    aput-wide v35, v34, v63

    .line 155
    const/16 v63, 0x2

    aput-wide v30, v34, v63

    .line 157
    return-object v34

    .line 146
    .end local v35    # "lon":D
    :cond_0
    const-wide/16 v63, 0x0

    cmpg-double v63, v49, v63

    if-gez v63, :cond_1

    const-wide/16 v63, 0x0

    cmpl-double v63, v53, v63

    if-ltz v63, :cond_1

    .line 147
    const-wide v63, 0x400921fb54442d18L    # Math.PI

    add-double v35, v63, v45

    .restart local v35    # "lon":D
    goto :goto_0

    .line 150
    .end local v35    # "lon":D
    :cond_1
    const-wide v63, 0x400921fb54442d18L    # Math.PI

    sub-double v35, v45, v63

    .restart local v35    # "lon":D
    goto :goto_0
.end method
