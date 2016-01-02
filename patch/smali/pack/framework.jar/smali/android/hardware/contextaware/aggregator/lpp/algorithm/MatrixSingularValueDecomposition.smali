.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
.super Ljava/lang/Object;
.source "MatrixSingularValueDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 58
    .param p1, "Arg"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v4

    .line 55
    .local v4, "A":[[D
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    .line 63
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 64
    .local v30, "nu":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v52

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    filled-new-array {v0, v1}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    filled-new-array/range {v52 .. v53}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v11, v0, [D

    .line 68
    .local v11, "e":[D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v51, v0

    .line 69
    .local v51, "work":[D
    const/16 v49, 0x1

    .line 70
    .local v49, "wantu":Z
    const/16 v50, 0x1

    .line 75
    .local v50, "wantv":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 76
    .local v28, "nct":I
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 77
    .local v29, "nrt":I
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_14

    .line 78
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    .line 84
    move/from16 v22, v25

    .local v22, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    aget-object v55, v4, v22

    aget-wide v55, v55, v25

    invoke-static/range {v53 .. v56}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v53

    aput-wide v53, v52, v25

    .line 84
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_3

    .line 88
    aget-object v52, v4, v25

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    .line 91
    :cond_1
    move/from16 v22, v25

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2

    .line 92
    aget-object v52, v4, v22

    aget-wide v53, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v55, v0

    aget-wide v55, v55, v25

    div-double v53, v53, v55

    aput-wide v53, v52, v25

    .line 91
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 94
    :cond_2
    aget-object v52, v4, v25

    aget-wide v53, v52, v25

    const-wide/high16 v55, 0x3ff0000000000000L    # 1.0

    add-double v53, v53, v55

    aput-wide v53, v52, v25

    .line 96
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    .line 98
    .end local v22    # "i":I
    :cond_4
    add-int/lit8 v24, v25, 0x1

    .local v24, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_7

    .line 99
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_6

    .line 103
    const-wide/16 v45, 0x0

    .line 104
    .local v45, "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_5

    .line 105
    aget-object v52, v4, v22

    aget-wide v52, v52, v25

    aget-object v54, v4, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    .line 104
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 107
    :cond_5
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v4, v25

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    .line 108
    move/from16 v22, v25

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_6

    .line 109
    aget-object v52, v4, v22

    aget-wide v53, v52, v24

    aget-object v55, v4, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    .line 108
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 116
    .end local v22    # "i":I
    .end local v45    # "t":D
    :cond_6
    aget-object v52, v4, v25

    aget-wide v52, v52, v24

    aput-wide v52, v11, v24

    .line 98
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 118
    :cond_7
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    const/16 v52, 0x1

    :goto_6
    and-int v52, v52, v49

    if-eqz v52, :cond_9

    .line 123
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-object v53, v4, v22

    aget-wide v53, v53, v25

    aput-wide v53, v52, v25

    .line 123
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 118
    .end local v22    # "i":I
    :cond_8
    const/16 v52, 0x0

    goto :goto_6

    .line 127
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    .line 132
    const-wide/16 v52, 0x0

    aput-wide v52, v11, v25

    .line 133
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_a

    .line 134
    aget-wide v52, v11, v25

    aget-wide v54, v11, v22

    invoke-static/range {v52 .. v55}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v52

    aput-wide v52, v11, v25

    .line 133
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 136
    :cond_a
    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_d

    .line 137
    add-int/lit8 v52, v25, 0x1

    aget-wide v52, v11, v52

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_b

    .line 138
    aget-wide v52, v11, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v11, v25

    .line 140
    :cond_b
    add-int/lit8 v22, v25, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_c

    .line 141
    aget-wide v52, v11, v22

    aget-wide v54, v11, v25

    div-double v52, v52, v54

    aput-wide v52, v11, v22

    .line 140
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 143
    :cond_c
    add-int/lit8 v52, v25, 0x1

    aget-wide v53, v11, v52

    const-wide/high16 v55, 0x3ff0000000000000L    # 1.0

    add-double v53, v53, v55

    aput-wide v53, v11, v52

    .line 145
    :cond_d
    aget-wide v52, v11, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v11, v25

    .line 146
    add-int/lit8 v52, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_12

    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_12

    .line 150
    add-int/lit8 v22, v25, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    .line 151
    const-wide/16 v52, 0x0

    aput-wide v52, v51, v22

    .line 150
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 153
    :cond_e
    add-int/lit8 v24, v25, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_10

    .line 154
    add-int/lit8 v22, v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_f

    .line 155
    aget-wide v52, v51, v22

    aget-wide v54, v11, v24

    aget-object v56, v4, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    aput-wide v52, v51, v22

    .line 154
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 153
    :cond_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 158
    :cond_10
    add-int/lit8 v24, v25, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_12

    .line 159
    aget-wide v52, v11, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v11, v54

    div-double v45, v52, v54

    .line 160
    .restart local v45    # "t":D
    add-int/lit8 v22, v25, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_11

    .line 161
    aget-object v52, v4, v22

    aget-wide v53, v52, v24

    aget-wide v55, v51, v22

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    .line 160
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 158
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 165
    .end local v45    # "t":D
    :cond_12
    if-eqz v50, :cond_13

    .line 170
    add-int/lit8 v22, v25, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_13

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v11, v22

    aput-wide v53, v52, v25

    .line 170
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 77
    .end local v22    # "i":I
    :cond_13
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 179
    .end local v24    # "j":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, 0x1

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 180
    .local v31, "p":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v28

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-object v53, v4, v28

    aget-wide v53, v53, v28

    aput-wide v53, v52, v28

    .line 183
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v53

    .line 186
    :cond_16
    add-int/lit8 v52, v29, 0x1

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 187
    aget-object v52, v4, v29

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    aput-wide v52, v11, v29

    .line 189
    :cond_17
    add-int/lit8 v52, v31, -0x1

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    .line 193
    if-eqz v49, :cond_21

    .line 194
    move/from16 v24, v28

    .restart local v24    # "j":I
    :goto_10
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 195
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_18

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v24

    .line 195
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 198
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v24

    const-wide/high16 v53, 0x3ff0000000000000L    # 1.0

    aput-wide v53, v52, v24

    .line 194
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 200
    .end local v22    # "i":I
    :cond_19
    add-int/lit8 v25, v28, -0x1

    :goto_12
    if-ltz v25, :cond_21

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_1e

    .line 202
    add-int/lit8 v24, v25, 0x1

    :goto_13
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 203
    const-wide/16 v45, 0x0

    .line 204
    .restart local v45    # "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1a

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    .line 204
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 207
    :cond_1a
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    .line 208
    move/from16 v22, v25

    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1b

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    .line 208
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    .line 202
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_13

    .line 212
    .end local v22    # "i":I
    .end local v45    # "t":D
    :cond_1c
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1d

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    .line 212
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    .line 215
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v25

    aget-wide v55, v55, v25

    add-double v53, v53, v55

    aput-wide v53, v52, v25

    .line 216
    const/16 v22, 0x0

    :goto_17
    add-int/lit8 v52, v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_20

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    .line 216
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 220
    .end local v22    # "i":I
    :cond_1e
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    .line 220
    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    .line 223
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L    # 1.0

    aput-wide v53, v52, v25

    .line 200
    :cond_20
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_12

    .line 230
    .end local v22    # "i":I
    .end local v24    # "j":I
    :cond_21
    if-eqz v50, :cond_26

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v25, v52, -0x1

    :goto_19
    if-ltz v25, :cond_26

    .line 232
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    aget-wide v52, v11, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_24

    .line 233
    add-int/lit8 v24, v25, 0x1

    .restart local v24    # "j":I
    :goto_1a
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_24

    .line 234
    const-wide/16 v45, 0x0

    .line 235
    .restart local v45    # "t":D
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_22

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v45, v45, v52

    .line 235
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 238
    :cond_22
    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-object v54, v54, v55

    aget-wide v54, v54, v25

    div-double v45, v52, v54

    .line 239
    add-int/lit8 v22, v25, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_23

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v53, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v55, v0

    aget-object v55, v55, v22

    aget-wide v55, v55, v25

    mul-double v55, v55, v45

    add-double v53, v53, v55

    aput-wide v53, v52, v24

    .line 239
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 233
    :cond_23
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    .line 244
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v45    # "t":D
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_25

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v25

    .line 244
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    .line 247
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v53, 0x3ff0000000000000L    # 1.0

    aput-wide v53, v52, v25

    .line 231
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_19

    .line 253
    .end local v22    # "i":I
    :cond_26
    add-int/lit8 v32, v31, -0x1

    .line 254
    .local v32, "pp":I
    const/16 v23, 0x0

    .line 255
    .local v23, "iter":I
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide/high16 v54, -0x3fb6000000000000L    # -52.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 256
    .local v16, "eps":D
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide v54, -0x3f71d00000000000L    # -966.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v47

    .line 257
    .local v47, "tiny":D
    :cond_27
    :goto_1e
    if-lez v31, :cond_44

    .line 272
    add-int/lit8 v25, v31, -0x2

    :goto_1f
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-lt v0, v1, :cond_28

    .line 273
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2a

    .line 282
    :cond_28
    :goto_20
    add-int/lit8 v52, v31, -0x2

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2c

    .line 283
    const/16 v26, 0x4

    .line 306
    .local v26, "kase":I
    :goto_21
    add-int/lit8 v25, v25, 0x1

    .line 310
    packed-switch v26, :pswitch_data_0

    goto :goto_1e

    .line 315
    :pswitch_0
    add-int/lit8 v52, v31, -0x2

    aget-wide v18, v11, v52

    .line 316
    .local v18, "f":D
    add-int/lit8 v52, v31, -0x2

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    .line 317
    add-int/lit8 v24, v31, -0x2

    .restart local v24    # "j":I
    :goto_22
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_27

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    .line 319
    .restart local v45    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v9, v52, v45

    .line 320
    .local v9, "cs":D
    div-double v39, v18, v45

    .line 321
    .local v39, "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    .line 322
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_29

    .line 323
    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v24, -0x1

    aget-wide v54, v11, v54

    mul-double v18, v52, v54

    .line 324
    add-int/lit8 v52, v24, -0x1

    add-int/lit8 v53, v24, -0x1

    aget-wide v53, v11, v53

    mul-double v53, v53, v9

    aput-wide v53, v11, v52

    .line 326
    :cond_29
    if-eqz v50, :cond_34

    .line 327
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_34

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v31, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v31, -0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v31, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    .line 327
    add-int/lit8 v22, v22, 0x1

    goto :goto_23

    .line 276
    .end local v9    # "cs":D
    .end local v18    # "f":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v26    # "kase":I
    .end local v39    # "sn":D
    .end local v45    # "t":D
    :cond_2a
    aget-wide v52, v11, v25

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v25, 0x1

    aget-wide v56, v56, v57

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->abs(D)D

    move-result-wide v56

    add-double v54, v54, v56

    mul-double v54, v54, v16

    add-double v54, v54, v47

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_2b

    .line 278
    const-wide/16 v52, 0x0

    aput-wide v52, v11, v25

    goto/16 :goto_20

    .line 272
    :cond_2b
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_1f

    .line 286
    :cond_2c
    add-int/lit8 v27, v31, -0x1

    .local v27, "ks":I
    :goto_24
    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_2d

    .line 287
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    .line 297
    :cond_2d
    :goto_25
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_32

    .line 298
    const/16 v26, 0x3

    .restart local v26    # "kase":I
    goto/16 :goto_21

    .line 290
    .end local v26    # "kase":I
    :cond_2e
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_2f

    aget-wide v52, v11, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-wide/from16 v54, v52

    :goto_26
    add-int/lit8 v52, v25, 0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-eq v0, v1, :cond_30

    add-int/lit8 v52, v27, -0x1

    aget-wide v52, v11, v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    :goto_27
    add-double v45, v54, v52

    .line 292
    .restart local v45    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    mul-double v54, v16, v45

    add-double v54, v54, v47

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_31

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v53, 0x0

    aput-wide v53, v52, v27

    goto :goto_25

    .line 290
    .end local v45    # "t":D
    :cond_2f
    const-wide/16 v52, 0x0

    move-wide/from16 v54, v52

    goto :goto_26

    :cond_30
    const-wide/16 v52, 0x0

    goto :goto_27

    .line 286
    .restart local v45    # "t":D
    :cond_31
    add-int/lit8 v27, v27, -0x1

    goto :goto_24

    .line 299
    .end local v45    # "t":D
    :cond_32
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_33

    .line 300
    const/16 v26, 0x1

    .restart local v26    # "kase":I
    goto/16 :goto_21

    .line 302
    .end local v26    # "kase":I
    :cond_33
    const/16 v26, 0x2

    .line 303
    .restart local v26    # "kase":I
    move/from16 v25, v27

    goto/16 :goto_21

    .line 317
    .end local v27    # "ks":I
    .restart local v9    # "cs":D
    .restart local v18    # "f":D
    .restart local v24    # "j":I
    .restart local v39    # "sn":D
    .restart local v45    # "t":D
    :cond_34
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_22

    .line 340
    .end local v9    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v39    # "sn":D
    .end local v45    # "t":D
    :pswitch_1
    add-int/lit8 v52, v25, -0x1

    aget-wide v18, v11, v52

    .line 341
    .restart local v18    # "f":D
    add-int/lit8 v52, v25, -0x1

    const-wide/16 v53, 0x0

    aput-wide v53, v11, v52

    .line 342
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_28
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    .line 344
    .restart local v45    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v9, v52, v45

    .line 345
    .restart local v9    # "cs":D
    div-double v39, v18, v45

    .line 346
    .restart local v39    # "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    .line 347
    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-wide v54, v11, v24

    mul-double v18, v52, v54

    .line 348
    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    aput-wide v52, v11, v24

    .line 349
    if-eqz v49, :cond_35

    .line 350
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_35

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v25, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, -0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v25, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    .line 350
    add-int/lit8 v22, v22, 0x1

    goto :goto_29

    .line 342
    .end local v22    # "i":I
    :cond_35
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_28

    .line 366
    .end local v9    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v39    # "sn":D
    .end local v45    # "t":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v31, -0x2

    aget-wide v54, v54, v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    add-int/lit8 v54, v31, -0x2

    aget-wide v54, v11, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    aget-wide v54, v11, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v33

    .line 369
    .local v33, "scale":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    div-double v41, v52, v33

    .line 370
    .local v41, "sp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x2

    aget-wide v52, v52, v53

    div-double v43, v52, v33

    .line 371
    .local v43, "spm1":D
    add-int/lit8 v52, v31, -0x2

    aget-wide v52, v11, v52

    div-double v14, v52, v33

    .line 372
    .local v14, "epm1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    div-double v37, v52, v33

    .line 373
    .local v37, "sk":D
    aget-wide v52, v11, v25

    div-double v12, v52, v33

    .line 374
    .local v12, "ek":D
    add-double v52, v43, v41

    sub-double v54, v43, v41

    mul-double v52, v52, v54

    mul-double v54, v14, v14

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v5, v52, v54

    .line 375
    .local v5, "b":D
    mul-double v52, v41, v14

    mul-double v54, v41, v14

    mul-double v7, v52, v54

    .line 376
    .local v7, "c":D
    const-wide/16 v35, 0x0

    .line 377
    .local v35, "shift":D
    const-wide/16 v52, 0x0

    cmpl-double v52, v5, v52

    if-eqz v52, :cond_39

    const/16 v52, 0x1

    move/from16 v53, v52

    :goto_2a
    const-wide/16 v54, 0x0

    cmpl-double v52, v7, v54

    if-eqz v52, :cond_3a

    const/16 v52, 0x1

    :goto_2b
    or-int v52, v52, v53

    if-eqz v52, :cond_37

    .line 378
    mul-double v52, v5, v5

    add-double v52, v52, v7

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    .line 379
    const-wide/16 v52, 0x0

    cmpg-double v52, v5, v52

    if-gez v52, :cond_36

    .line 380
    move-wide/from16 v0, v35

    neg-double v0, v0

    move-wide/from16 v35, v0

    .line 382
    :cond_36
    add-double v52, v5, v35

    div-double v35, v7, v52

    .line 384
    :cond_37
    add-double v52, v37, v41

    sub-double v54, v37, v41

    mul-double v52, v52, v54

    add-double v18, v52, v35

    .line 385
    .restart local v18    # "f":D
    mul-double v20, v37, v12

    .line 389
    .local v20, "g":D
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_2c
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3d

    .line 390
    invoke-static/range {v18 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    .line 391
    .restart local v45    # "t":D
    div-double v9, v18, v45

    .line 392
    .restart local v9    # "cs":D
    div-double v39, v20, v45

    .line 393
    .restart local v39    # "sn":D
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_38

    .line 394
    add-int/lit8 v52, v24, -0x1

    aput-wide v45, v11, v52

    .line 396
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    aget-wide v54, v11, v24

    mul-double v54, v54, v39

    add-double v18, v52, v54

    .line 397
    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v24

    mul-double v54, v54, v39

    sub-double v52, v52, v54

    aput-wide v52, v11, v24

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    aget-wide v52, v52, v53

    mul-double v20, v39, v52

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v9

    aput-wide v54, v52, v53

    .line 400
    if-eqz v50, :cond_3b

    .line 401
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    .line 401
    add-int/lit8 v22, v22, 0x1

    goto :goto_2d

    .line 377
    .end local v9    # "cs":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v39    # "sn":D
    .end local v45    # "t":D
    :cond_39
    const/16 v52, 0x0

    move/from16 v53, v52

    goto/16 :goto_2a

    :cond_3a
    const/16 v52, 0x0

    goto/16 :goto_2b

    .line 407
    .restart local v9    # "cs":D
    .restart local v18    # "f":D
    .restart local v20    # "g":D
    .restart local v24    # "j":I
    .restart local v39    # "sn":D
    .restart local v45    # "t":D
    :cond_3b
    invoke-static/range {v18 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v45

    .line 408
    div-double v9, v18, v45

    .line 409
    div-double v39, v20, v45

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v45, v52, v24

    .line 411
    aget-wide v52, v11, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v18, v52, v54

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    aget-wide v56, v11, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 413
    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v11, v52

    mul-double v20, v39, v52

    .line 414
    add-int/lit8 v52, v24, 0x1

    add-int/lit8 v53, v24, 0x1

    aget-wide v53, v11, v53

    mul-double v53, v53, v9

    aput-wide v53, v11, v52

    .line 415
    if-eqz v49, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    .line 416
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v39

    add-double v45, v52, v54

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v9

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v24

    .line 416
    add-int/lit8 v22, v22, 0x1

    goto :goto_2e

    .line 389
    .end local v22    # "i":I
    :cond_3c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2c

    .line 423
    .end local v9    # "cs":D
    .end local v39    # "sn":D
    .end local v45    # "t":D
    :cond_3d
    add-int/lit8 v52, v31, -0x2

    aput-wide v18, v11, v52

    .line 424
    add-int/lit8 v23, v23, 0x1

    .line 426
    goto/16 :goto_1e

    .line 434
    .end local v5    # "b":D
    .end local v7    # "c":D
    .end local v12    # "ek":D
    .end local v14    # "epm1":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v24    # "j":I
    .end local v33    # "scale":D
    .end local v35    # "shift":D
    .end local v37    # "sk":D
    .end local v41    # "sp":D
    .end local v43    # "spm1":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_40

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v55, 0x0

    cmpg-double v52, v52, v55

    if-gez v52, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    :goto_2f
    aput-wide v52, v54, v25

    .line 436
    if-eqz v50, :cond_40

    .line 437
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_30
    move/from16 v0, v22

    move/from16 v1, v32

    if-gt v0, v1, :cond_40

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v53, v53, v25

    move-wide/from16 v0, v53

    neg-double v0, v0

    move-wide/from16 v53, v0

    aput-wide v53, v52, v25

    .line 437
    add-int/lit8 v22, v22, 0x1

    goto :goto_30

    .line 435
    .end local v22    # "i":I
    :cond_3e
    const-wide/16 v52, 0x0

    goto :goto_2f

    .line 462
    .restart local v45    # "t":D
    :cond_3f
    add-int/lit8 v25, v25, 0x1

    .line 445
    .end local v45    # "t":D
    :cond_40
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_41

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-wide v54, v54, v55

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_42

    .line 464
    :cond_41
    const/16 v23, 0x0

    .line 465
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_1e

    .line 449
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v45, v52, v25

    .line 450
    .restart local v45    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v53, v53, v54

    aput-wide v53, v52, v25

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v25, 0x1

    aput-wide v45, v52, v53

    .line 452
    if-eqz v50, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    .line 453
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_31
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v45, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v25

    .line 453
    add-int/lit8 v22, v22, 0x1

    goto :goto_31

    .line 457
    .end local v22    # "i":I
    :cond_43
    if-eqz v49, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    .line 458
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v45, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v45, v52, v25

    .line 458
    add-int/lit8 v22, v22, 0x1

    goto :goto_32

    .line 470
    .end local v22    # "i":I
    .end local v26    # "kase":I
    .end local v45    # "t":D
    :cond_44
    return-void

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .locals 5

    .prologue
    .line 529
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 505
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 506
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 507
    .local v0, "S":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v2, v4, :cond_1

    .line 508
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_0

    .line 509
    aget-object v4, v0, v2

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    :cond_0
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v2

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public getSingularValues()[D
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 5

    .prologue
    .line 481
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 4

    .prologue
    .line 489
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .locals 10

    .prologue
    .line 537
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb6000000000000L    # -52.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 538
    .local v0, "eps":D
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    mul-double v4, v6, v0

    .line 539
    .local v4, "tol":D
    const/4 v3, 0x0

    .line 540
    .local v3, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 541
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v6, v2

    cmpl-double v6, v6, v4

    if-lez v6, :cond_0

    .line 542
    add-int/lit8 v3, v3, 0x1

    .line 540
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_1
    return v3
.end method
