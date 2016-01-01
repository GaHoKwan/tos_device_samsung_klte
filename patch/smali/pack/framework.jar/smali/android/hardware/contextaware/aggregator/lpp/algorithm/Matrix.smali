.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A:[[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 84
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 85
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 86
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "s"    # D

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 96
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 97
    filled-new-array {p1, p2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 99
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_0

    .line 100
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    aput-wide p3, v2, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 5
    .param p1, "vals"    # [D
    .param p2, "m"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 142
    if-eqz p2, :cond_0

    array-length v2, p1

    div-int/2addr v2, p2

    :goto_0
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 143
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v2, p2

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array length must be a multiple of m."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    :cond_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {p2, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 148
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_2

    .line 149
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    mul-int v3, v1, p2

    add-int/2addr v3, v0

    aget-wide v3, p1, v3

    aput-wide v3, v2, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 3
    .param p1, "A"    # [[D

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    array-length v1, p1

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 113
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v1, :cond_1

    .line 115
    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v1, v2, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All rows must have the same length."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 120
    return-void
.end method

.method public constructor <init>([[DII)V
    .locals 0
    .param p1, "A"    # [[D
    .param p2, "m"    # I
    .param p3, "n"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    .line 130
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    .line 131
    iput p3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    .line 132
    return-void
.end method

.method private checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 2
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 1056
    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v0, v1, :cond_1

    .line 1057
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_1
    return-void
.end method

.method public static constructWithCopy([[D)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p0, "A"    # [[D

    .prologue
    .line 164
    array-length v4, p0

    .line 165
    .local v4, "m":I
    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v5, v6

    .line 166
    .local v5, "n":I
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 167
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 168
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 169
    aget-object v6, p0, v2

    array-length v6, v6

    if-eq v6, v5, :cond_0

    .line 170
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All rows must have the same length."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 174
    aget-object v6, v0, v2

    aget-object v7, p0, v2

    aget-wide v7, v7, v3

    aput-wide v7, v6, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public static hypot(DD)D
    .locals 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 535
    div-double v0, p2, p0

    .line 536
    .local v0, "r":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 543
    :goto_0
    return-wide v0

    .line 537
    .end local v0    # "r":D
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-eqz v2, :cond_1

    .line 538
    div-double v0, p0, p2

    .line 539
    .restart local v0    # "r":D
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_0

    .line 541
    .end local v0    # "r":D
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "r":D
    goto :goto_0
.end method

.method public static identity(II)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 912
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 913
    .local v0, "A":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    .line 914
    .local v1, "X":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_2

    .line 915
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_1

    .line 916
    aget-object v6, v1, v2

    if-ne v2, v3, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_2
    aput-wide v4, v6, v3

    .line 915
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 916
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 914
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    .end local v3    # "j":I
    :cond_2
    return-object v0
.end method

.method public static random(II)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 895
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 896
    .local v0, "A":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    .line 897
    .local v1, "X":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 898
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 899
    aget-object v4, v1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 898
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 897
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v3    # "j":I
    :cond_1
    return-object v0
.end method

.method public static read(Ljava/io/BufferedReader;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 12
    .param p0, "input"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x3

    .line 1002
    new-instance v6, Ljava/io/StreamTokenizer;

    invoke-direct {v6, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 1010
    .local v6, "tokenizer":Ljava/io/StreamTokenizer;
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 1011
    const/16 v9, 0xff

    invoke-virtual {v6, v10, v9}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 1012
    const/16 v9, 0x20

    invoke-virtual {v6, v10, v9}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 1013
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    .line 1014
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1017
    .local v8, "vD":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Double;>;"
    :cond_0
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 1018
    iget v9, v6, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 1019
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Unexpected EOF on matrix read."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1021
    :cond_1
    iget-object v9, v6, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1022
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-eq v9, v11, :cond_1

    .line 1024
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1025
    .local v4, "n":I
    new-array v5, v4, [D

    .line 1026
    .local v5, "row":[D
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1027
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v5, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    :cond_2
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1029
    .local v7, "v":Ljava/util/Vector;, "Ljava/util/Vector<[D>;"
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1030
    :cond_3
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 1032
    new-array v5, v4, [D

    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1033
    const/4 v1, 0x0

    move v2, v1

    .line 1035
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-lt v2, v4, :cond_4

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is too long."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1037
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    iget-object v9, v6, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v5, v2

    .line 1038
    invoke-virtual {v6}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v9

    if-eq v9, v11, :cond_6

    .line 1039
    if-ge v1, v4, :cond_3

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is too short."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1042
    :cond_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1043
    .local v3, "m":I
    new-array v0, v3, [[D

    .line 1044
    .local v0, "A":[[D
    invoke-virtual {v7, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1045
    new-instance v9, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v9, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    return-object v9

    .end local v0    # "A":[[D
    .end local v3    # "m":I
    :cond_6
    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method


# virtual methods
.method public arrayLeftDivide(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 695
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 696
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 697
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 698
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 699
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 700
    aget-object v4, v0, v2

    iget-object v5, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v3

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 698
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayLeftDivideEquals(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 714
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 715
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    div-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 713
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public arrayRightDivide(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 663
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 664
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 665
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 666
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 667
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 668
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    iget-object v7, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v3

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 666
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayRightDivideEquals(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 682
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 683
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    iget-object v5, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    div-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public arrayTimes(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 631
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 632
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 633
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 634
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 635
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 636
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    iget-object v7, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v3

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 634
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public arrayTimesEquals(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 650
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 651
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    iget-object v5, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    mul-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->copy()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public cond()D
    .locals 2

    .prologue
    .line 873
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->cond()D

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 184
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 185
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 186
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 187
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 188
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public det()D
    .locals 2

    .prologue
    .line 857
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->det()D

    move-result-wide v0

    return-wide v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 275
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public getArray()[[D
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    return-object v0
.end method

.method public getArrayCopy()[[D
    .locals 6

    .prologue
    .line 214
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 215
    .local v0, "C":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v3, :cond_1

    .line 216
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    .line 217
    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    return v0
.end method

.method public getColumnPackedCopy()[D
    .locals 6

    .prologue
    .line 228
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v4

    new-array v2, v3, [D

    .line 229
    .local v2, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v3, :cond_1

    .line 230
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v3, :cond_0

    .line 231
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public getMatrix(IIII)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "j0"    # I
    .param p4, "j1"    # I

    .prologue
    .line 288
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int v6, p4, p3

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 289
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 291
    .local v0, "B":[[D
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_1

    .line 292
    move v4, p3

    .local v4, "j":I
    :goto_1
    if-gt v4, p4, :cond_0

    .line 293
    sub-int v5, v3, p1

    :try_start_0
    aget-object v5, v0, v5

    sub-int v6, v4, p3

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v3

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 291
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "j":I
    :cond_1
    return-object v1
.end method

.method public getMatrix(II[I)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "c"    # [I

    .prologue
    .line 333
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    array-length v6, p3

    invoke-direct {v1, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 334
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 336
    .local v0, "B":[[D
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-gt v3, p2, :cond_1

    .line 337
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    :try_start_0
    array-length v5, p3

    if-ge v4, v5, :cond_0

    .line 338
    sub-int v5, v3, p1

    aget-object v5, v0, v5

    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget v7, p3, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 336
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "j":I
    :cond_1
    return-object v1
.end method

.method public getMatrix([III)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "r"    # [I
    .param p2, "j0"    # I
    .param p3, "j1"    # I

    .prologue
    .line 356
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v5, p1

    sub-int v6, p3, p2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 357
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 359
    .local v0, "B":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 360
    move v4, p2

    .local v4, "j":I
    :goto_1
    if-gt v4, p3, :cond_0

    .line 361
    aget-object v5, v0, v3

    sub-int v6, v4, p2

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v8, p1, v3

    aget-object v7, v7, v8

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 367
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-object v1
.end method

.method public getMatrix([I[I)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8
    .param p1, "r"    # [I
    .param p2, "c"    # [I

    .prologue
    .line 310
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v5, p1

    array-length v6, p2

    invoke-direct {v1, v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 311
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 313
    .local v0, "B":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 314
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 315
    aget-object v5, v0, v3

    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v7, p1, v3

    aget-object v6, v6, v7

    aget v7, p2, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v6, "Submatrix indices"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-object v1
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    return v0
.end method

.method public getRowPackedCopy()[D
    .locals 6

    .prologue
    .line 242
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v4

    new-array v2, v3, [D

    .line 243
    .local v2, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v3, :cond_1

    .line 244
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v3, :cond_0

    .line 245
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    aput-wide v4, v2, v3

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2

    .prologue
    .line 849
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->identity(II)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public minus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 599
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 600
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 601
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 602
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 603
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 604
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    iget-object v7, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v3

    sub-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public minusEquals(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 616
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 618
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    iget-object v5, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public norm1()D
    .locals 8

    .prologue
    .line 481
    const-wide/16 v0, 0x0

    .line 482
    .local v0, "f":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v6, :cond_1

    .line 483
    const-wide/16 v4, 0x0

    .line 484
    .local v4, "s":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v6, :cond_0

    .line 485
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "i":I
    .end local v4    # "s":D
    :cond_1
    return-wide v0
.end method

.method public norm2()D
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->norm2()D

    move-result-wide v0

    return-wide v0
.end method

.method public normF()D
    .locals 6

    .prologue
    .line 521
    const-wide/16 v0, 0x0

    .line 522
    .local v0, "f":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 523
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 524
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-static {v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v0

    .line 523
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 522
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    .end local v3    # "j":I
    :cond_1
    return-wide v0
.end method

.method public normInf()D
    .locals 8

    .prologue
    .line 505
    const-wide/16 v0, 0x0

    .line 506
    .local v0, "f":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v6, :cond_1

    .line 507
    const-wide/16 v4, 0x0

    .line 508
    .local v4, "s":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v6, :cond_0

    .line 509
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v3    # "j":I
    .end local v4    # "s":D
    :cond_1
    return-wide v0
.end method

.method public plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 9
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 568
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 569
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 570
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 571
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 572
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    iget-object v7, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v2

    aget-wide v7, v7, v3

    add-double/2addr v5, v7

    aput-wide v5, v4, v3

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 570
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public plusEquals(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 586
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 587
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    iget-object v5, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public print(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "d"    # I

    .prologue
    .line 930
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;II)V
    .locals 3
    .param p1, "output"    # Ljava/io/PrintWriter;
    .param p2, "w"    # I
    .param p3, "d"    # I

    .prologue
    .line 940
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 941
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 942
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 943
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 944
    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 945
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 946
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    .line 947
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V
    .locals 7
    .param p1, "output"    # Ljava/io/PrintWriter;
    .param p2, "format"    # Ljava/text/NumberFormat;
    .param p3, "width"    # I

    .prologue
    .line 979
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v5, :cond_2

    .line 981
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v5, :cond_1

    .line 982
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    invoke-virtual {p2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, "s":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, p3, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 984
    .local v3, "padding":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 985
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 986
    :cond_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 988
    .end local v2    # "k":I
    .end local v3    # "padding":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 991
    return-void
.end method

.method public print(Ljava/text/NumberFormat;I)V
    .locals 3
    .param p1, "format"    # Ljava/text/NumberFormat;
    .param p2, "width"    # I

    .prologue
    .line 960
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    return-void
.end method

.method public rank()I
    .locals 1

    .prologue
    .line 865
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public set(IID)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "s"    # D

    .prologue
    .line 378
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aput-wide p3, v0, p2

    .line 379
    return-void
.end method

.method public setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 6
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "j0"    # I
    .param p4, "j1"    # I
    .param p5, "X"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 392
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 393
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-gt v2, p4, :cond_0

    .line 394
    :try_start_0
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    sub-int v4, v1, p1

    sub-int v5, v2, p3

    invoke-virtual {p5, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public setMatrix(II[ILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 7
    .param p1, "i0"    # I
    .param p2, "i1"    # I
    .param p3, "c"    # [I
    .param p4, "X"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 451
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 452
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    :try_start_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 453
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget v4, p3, v2

    sub-int v5, v1, p1

    invoke-virtual {p4, v5, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 451
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public setMatrix([IIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 6
    .param p1, "r"    # [I
    .param p2, "j0"    # I
    .param p3, "j1"    # I
    .param p4, "X"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 432
    move v2, p2

    .local v2, "j":I
    :goto_1
    if-gt v2, p3, :cond_0

    .line 433
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    sub-int v4, v2, p2

    invoke-virtual {p4, v1, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public setMatrix([I[ILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 7
    .param p1, "r"    # [I
    .param p2, "c"    # [I
    .param p3, "X"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 412
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 413
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    aget v4, p2, v2

    invoke-virtual {p3, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "j":I
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    return-void
.end method

.method public solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 831
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    goto :goto_0
.end method

.method public solveTranspose(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 841
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public svd()Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
    .locals 1

    .prologue
    .line 813
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    return-object v0
.end method

.method public times(D)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7
    .param p1, "s"    # D

    .prologue
    .line 727
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 728
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 729
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 730
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 731
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    mul-double/2addr v5, p1

    aput-wide v5, v4, v3

    .line 730
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 729
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 13
    .param p1, "B"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 758
    iget v9, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-eq v9, v10, :cond_0

    .line 759
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Matrix inner dimensions must agree."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 761
    :cond_0
    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v10, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v3, v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 762
    .local v3, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v2

    .line 763
    .local v2, "C":[[D
    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    new-array v1, v9, [D

    .line 764
    .local v1, "Bcolj":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    iget v9, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v5, v9, :cond_4

    .line 765
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v6, v9, :cond_1

    .line 766
    iget-object v9, p1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, v5

    aput-wide v9, v1, v6

    .line 765
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 768
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v4, v9, :cond_3

    .line 769
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v9, v4

    .line 770
    .local v0, "Arowi":[D
    const-wide/16 v7, 0x0

    .line 771
    .local v7, "s":D
    const/4 v6, 0x0

    :goto_3
    iget v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v6, v9, :cond_2

    .line 772
    aget-wide v9, v0, v6

    aget-wide v11, v1, v6

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 771
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 774
    :cond_2
    aget-object v9, v2, v4

    aput-wide v7, v9, v5

    .line 768
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 764
    .end local v0    # "Arowi":[D
    .end local v7    # "s":D
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 777
    .end local v4    # "i":I
    .end local v6    # "k":I
    :cond_4
    return-object v3
.end method

.method public timesEquals(D)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 5
    .param p1, "s"    # D

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v2, :cond_1

    .line 744
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v2, :cond_0

    .line 745
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    mul-double/2addr v3, p1

    aput-wide v3, v2, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "j":I
    :cond_1
    return-object p0
.end method

.method public trace()D
    .locals 5

    .prologue
    .line 881
    const-wide/16 v1, 0x0

    .line 882
    .local v1, "t":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 883
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v0

    add-double/2addr v1, v3

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    return-wide v1
.end method

.method public transpose()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 466
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 467
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 468
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 469
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 470
    aget-object v4, v0, v3

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v2

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 468
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public uminus()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    .prologue
    .line 551
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 552
    .local v1, "X":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 553
    .local v0, "C":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v4, :cond_1

    .line 554
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    .line 555
    aget-object v4, v0, v2

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    neg-double v5, v5

    aput-wide v5, v4, v3

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 553
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method
