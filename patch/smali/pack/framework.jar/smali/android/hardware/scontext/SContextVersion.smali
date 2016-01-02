.class Landroid/hardware/scontext/SContextVersion;
.super Ljava/lang/Object;
.source "SContextVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextVersion"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionMap:[[I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "version"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x9

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 34
    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    const/16 v0, 0x22

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    .line 138
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextVersion;->initialize(I)V

    .line 139
    return-void

    .line 41
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        0x2
        0x2
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
        0x1
        0x2
        0x0
        0x2
        0x0
        0x3
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x21
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x22
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data
.end method

.method private initialize(I)V
    .locals 6
    .param p1, "version"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    array-length v1, v2

    .line 168
    .local v1, "size":I
    if-lez p1, :cond_0

    if-le p1, v1, :cond_1

    .line 169
    :cond_0
    const-string v2, "SContextVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize() : this version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 174
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 177
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    aget-object v2, v2, v0

    aget v2, v2, p1

    if-lez v2, :cond_2

    .line 178
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    aget-object v4, v4, v0

    aget v4, v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Landroid/hardware/scontext/SContextVersion;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Landroid/hardware/scontext/SContextVersion;->mVersionMap:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_3
    const-string v2, "SContextVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize() : this version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getAvailableServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getUsedServiceMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/scontext/SContextVersion;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
