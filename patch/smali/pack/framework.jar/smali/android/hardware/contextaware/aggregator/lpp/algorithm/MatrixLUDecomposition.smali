.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;
.super Ljava/lang/Object;
.source "MatrixLUDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LU:[[D

.field private m:I

.field private n:I

.field private piv:[I

.field private pivsign:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 17
    .param p1, "A"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    .line 56
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v12, :cond_0

    .line 58
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v3, v12, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 62
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v12, [D

    .line 66
    .local v1, "LUcolj":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v12, :cond_9

    .line 70
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v12, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v3

    aget-wide v12, v12, v4

    aput-wide v12, v1, v3

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 76
    :cond_1
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v12, :cond_3

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v2, v12, v3

    .line 81
    .local v2, "LUrowi":[D
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 82
    .local v6, "kmax":I
    const-wide/16 v8, 0x0

    .line 83
    .local v8, "s":D
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    if-ge v5, v6, :cond_2

    .line 84
    aget-wide v12, v2, v5

    aget-wide v14, v1, v5

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 87
    :cond_2
    aget-wide v12, v1, v3

    sub-double/2addr v12, v8

    aput-wide v12, v1, v3

    aput-wide v12, v2, v4

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 92
    .end local v2    # "LUrowi":[D
    .end local v5    # "k":I
    .end local v6    # "kmax":I
    .end local v8    # "s":D
    :cond_3
    move v7, v4

    .line 93
    .local v7, "p":I
    add-int/lit8 v3, v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v12, :cond_5

    .line 94
    aget-wide v12, v1, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aget-wide v14, v1, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    .line 95
    move v7, v3

    .line 93
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 98
    :cond_5
    if-eq v7, v4, :cond_7

    .line 99
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v5, v12, :cond_6

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v7

    aget-wide v10, v12, v5

    .local v10, "t":D
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v13, v13, v4

    aget-wide v13, v13, v5

    aput-wide v13, v12, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v4

    aput-wide v10, v12, v5

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 102
    .end local v10    # "t":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v5, v12, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v13, v13, v4

    aput v13, v12, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v5, v12, v4

    .line 103
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    neg-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 108
    .end local v5    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v4

    aget-wide v12, v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_8

    .line 109
    add-int/lit8 v3, v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v12, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v3

    aget-wide v13, v12, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v15, v15, v4

    aget-wide v15, v15, v4

    div-double/2addr v13, v15

    aput-wide v13, v12, v4

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 66
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 114
    .end local v7    # "p":I
    :cond_9
    return-void
.end method


# virtual methods
.method public det()D
    .locals 5

    .prologue
    .line 261
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-eq v3, v4, :cond_0

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Matrix must be square."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    int-to-double v0, v3

    .line 265
    .local v0, "d":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    mul-double/2addr v0, v3

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-wide v0
.end method

.method public getDoublePivot()[D
    .locals 4

    .prologue
    .line 248
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [D

    .line 249
    .local v1, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_0

    .line 250
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-object v1
.end method

.method public getL()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 196
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 197
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 198
    .local v0, "L":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v2, v4, :cond_3

    .line 199
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_2

    .line 200
    if-le v2, v3, :cond_0

    .line 201
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 199
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_0
    if-ne v2, v3, :cond_1

    .line 203
    aget-object v4, v0, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v3

    goto :goto_2

    .line 205
    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    .line 198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "j":I
    :cond_3
    return-object v1
.end method

.method public getPivot()[I
    .locals 3

    .prologue
    .line 236
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [I

    .line 237
    .local v1, "p":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_0

    .line 238
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-object v1
.end method

.method public getU()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 217
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 218
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 219
    .local v0, "U":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v4, :cond_2

    .line 220
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_1

    .line 221
    if-gt v2, v3, :cond_0

    .line 222
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 220
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    .line 219
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public isNonsingular()Z
    .locals 5

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v1, v1, v0

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 188
    :goto_1
    return v1

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 13
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v6

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-eq v6, v7, :cond_0

    .line 280
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Matrix row dimensions must agree."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->isNonsingular()Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Matrix is singular."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v5

    .line 288
    .local v5, "nx":I
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix([III)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    .line 289
    .local v1, "Xmat":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 292
    .local v0, "X":[[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v6, :cond_4

    .line 293
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_1
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v6, :cond_3

    .line 294
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 295
    aget-object v6, v0, v2

    aget-wide v7, v6, v3

    aget-object v9, v0, v4

    aget-wide v9, v9, v3

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v11, v11, v2

    aget-wide v11, v11, v4

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v6, v3

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 293
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "i":I
    :cond_4
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    add-int/lit8 v4, v6, -0x1

    :goto_3
    if-ltz v4, :cond_8

    .line 301
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v5, :cond_5

    .line 302
    aget-object v6, v0, v4

    aget-wide v7, v6, v3

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v4

    div-double/2addr v7, v9

    aput-wide v7, v6, v3

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 304
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v4, :cond_7

    .line 305
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_6

    .line 306
    aget-object v6, v0, v2

    aget-wide v7, v6, v3

    aget-object v9, v0, v4

    aget-wide v9, v9, v3

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v11, v11, v2

    aget-wide v11, v11, v4

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v6, v3

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 304
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 300
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 310
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    return-object v1
.end method
