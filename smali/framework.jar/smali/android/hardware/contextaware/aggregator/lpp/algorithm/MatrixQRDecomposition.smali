.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;
.super Ljava/lang/Object;
.source "MatrixQRDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private QR:[[D

.field private Rdiag:[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 14
    .param p1, "A"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    const-wide/16 v12, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v7

    iput-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    .line 51
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v7

    iput v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    .line 52
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v7

    iput v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    .line 53
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    new-array v7, v7, [D

    iput-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    .line 56
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v7, :cond_6

    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .local v3, "nrm":D
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_0

    .line 60
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v2

    invoke-static {v3, v4, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v3

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_0
    cmpl-double v7, v3, v12

    if-eqz v7, :cond_5

    .line 65
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v2

    cmpg-double v7, v7, v12

    if-gez v7, :cond_1

    .line 66
    neg-double v3, v3

    .line 68
    :cond_1
    move v0, v2

    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_2

    .line 69
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v8, v7, v2

    div-double/2addr v8, v3

    aput-wide v8, v7, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    :cond_2
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    .line 74
    add-int/lit8 v1, v2, 0x1

    .local v1, "j":I
    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v7, :cond_5

    .line 75
    const-wide/16 v5, 0x0

    .line 76
    .local v5, "s":D
    move v0, v2

    :goto_4
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_3

    .line 77
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v2

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v0

    aget-wide v9, v9, v1

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 79
    :cond_3
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v2

    aget-wide v9, v9, v2

    div-double v5, v7, v9

    .line 80
    move v0, v2

    :goto_5
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v7, :cond_4

    .line 81
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v0

    aget-wide v8, v7, v1

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    .end local v1    # "j":I
    .end local v5    # "s":D
    :cond_5
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    neg-double v8, v3

    aput-wide v8, v7, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v3    # "nrm":D
    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 110
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 111
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 112
    .local v0, "H":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v4, :cond_2

    .line 113
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_1

    .line 114
    if-lt v2, v3, :cond_0

    .line 115
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 113
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public getQ()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 150
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 151
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 152
    .local v0, "Q":[[D
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v4, v7, -0x1

    .local v4, "k":I
    :goto_0
    if-ltz v4, :cond_4

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_0

    .line 154
    aget-object v7, v0, v2

    aput-wide v12, v7, v4

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_0
    aget-object v7, v0, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v4

    .line 157
    move v3, v4

    .local v3, "j":I
    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v7, :cond_3

    .line 158
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v4

    cmpl-double v7, v7, v12

    if-eqz v7, :cond_2

    .line 159
    const-wide/16 v5, 0x0

    .line 160
    .local v5, "s":D
    move v2, v4

    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_1

    .line 161
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v4

    aget-object v9, v0, v2

    aget-wide v9, v9, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    :cond_1
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v4

    div-double v5, v7, v9

    .line 164
    move v2, v4

    :goto_4
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v7, :cond_2

    .line 165
    aget-object v7, v0, v2

    aget-wide v8, v7, v3

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v3

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 157
    .end local v5    # "s":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 152
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_4
    return-object v1
.end method

.method public getR()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 129
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 130
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 131
    .local v0, "R":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v4, :cond_3

    .line 132
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_2

    .line 133
    if-ge v2, v3, :cond_0

    .line 134
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 132
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_0
    if-ne v2, v3, :cond_1

    .line 136
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    goto :goto_2

    .line 138
    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    goto :goto_2

    .line 131
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "j":I
    :cond_3
    return-object v1
.end method

.method public isFullRank()Z
    .locals 5

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 102
    :goto_1
    return v1

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v7

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-eq v7, v8, :cond_0

    .line 182
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Matrix row dimensions must agree."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->isFullRank()Z

    move-result v7

    if-nez v7, :cond_1

    .line 185
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Matrix is rank deficient."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    .line 190
    .local v4, "nx":I
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    .line 193
    .local v0, "X":[[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v7, :cond_5

    .line 194
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 195
    const-wide/16 v5, 0x0

    .line 196
    .local v5, "s":D
    move v1, v3

    .local v1, "i":I
    :goto_2
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v7, :cond_2

    .line 197
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v1

    aget-wide v7, v7, v3

    aget-object v9, v0, v1

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    :cond_2
    neg-double v7, v5

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v3

    aget-wide v9, v9, v3

    div-double v5, v7, v9

    .line 200
    move v1, v3

    :goto_3
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v7, :cond_3

    .line 201
    aget-object v7, v0, v1

    aget-wide v8, v7, v2

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v5

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 194
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    .end local v1    # "i":I
    .end local v5    # "s":D
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "j":I
    :cond_5
    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_9

    .line 207
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_6

    .line 208
    aget-object v7, v0, v3

    aget-wide v8, v7, v2

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v10, v10, v3

    div-double/2addr v8, v10

    aput-wide v8, v7, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 210
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    .line 211
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 212
    aget-object v7, v0, v1

    aget-wide v8, v7, v2

    aget-object v10, v0, v3

    aget-wide v10, v10, v2

    iget-object v12, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v12, v12, v1

    aget-wide v12, v12, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 210
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 206
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 216
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_9
    new-instance v7, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v7, v0, v8, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    const/4 v8, 0x0

    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix(IIII)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    return-object v7
.end method
