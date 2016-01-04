.class public Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;
.super Ljava/lang/Object;
.source "GbaServiceWrapper.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "GbaServiceWrapper"

.field private static iGbaServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static iGbaServiceInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 33
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    .line 34
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    const-string v2, "Default Constructor Called"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p2, "ServiceInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "iGbaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 45
    sput-object p1, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    .line 46
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IGbaService Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    if-eqz p2, :cond_1

    .line 55
    sput-object p2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IGbaService Instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_1
    return-void

    .line 50
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    const-string v2, "Gba Service Class is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaServiceWrapper"

    const-string v2, "Gba Service Instance is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private varargs getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 377
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 385
    :goto_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "GbaServiceWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-object v1

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public generateGbaKey([B[B)[B
    .locals 10
    .param p1, "gbaType"    # [B
    .param p2, "nafid"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    const/4 v2, 0x0

    .line 254
    .local v2, "gbaKey":[B
    const-string v4, "igenrateGbaKey"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 257
    .local v3, "genGbaKeyMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 260
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GbaKey is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v2

    .line 261
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "genGbaKeyMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBtId()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "btid":Ljava/lang/String;
    const-string v4, "igetBtId"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 103
    .local v3, "getBsfIdMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 106
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BsfID is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v1

    .line 107
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getBsfIdMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGbaKey([B[B)[B
    .locals 10
    .param p1, "nafid"    # [B
    .param p2, "gbaType"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "gbaKey":[B
    const-string v4, "igetGbaKey"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 226
    .local v3, "getGbaKeyMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 229
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GbaKey is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-object v2

    .line 230
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getGbaKeyMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, "imei":Ljava/lang/String;
    const-string v4, "igetIMEI"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 164
    .local v2, "getImeiMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 167
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 185
    :goto_0
    return-object v3

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getImeiMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "impi":Ljava/lang/String;
    const-string v4, "igetIMPI"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 134
    .local v2, "getImpiMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 137
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 155
    :goto_0
    return-object v3

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getImpiMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIsimResponse(Ljava/lang/String;)[B
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 190
    const/4 v3, 0x0

    .line 192
    .local v3, "isimRes":[B
    const-string v4, "igetISIMResponse"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 194
    .local v2, "getIsimResMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 197
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 213
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsimRes is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v3

    .line 198
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getIsimResMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 316
    const/4 v3, 0x0

    .line 318
    .local v3, "msisdn":Ljava/lang/String;
    const-string v4, "igetMSIDN"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 320
    .local v2, "getMsisdnMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 323
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 340
    :goto_0
    return-object v3

    .line 324
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 330
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getMsisdnMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNafId([B[B)[B
    .locals 10
    .param p1, "nafqdn"    # [B
    .param p2, "uaSecurityProtoId"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "nafid":[B
    const-string v4, "igetNafId"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 72
    .local v2, "getNafIdMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 75
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NafId is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v3

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "getNafIdMethod is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isGbaUiccSupported()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 345
    const/4 v3, 0x0

    .line 347
    .local v3, "isSupported":Z
    const-string v4, "iisGbaUiccSupported"

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 349
    .local v2, "isGbaUiccSupported":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 352
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 353
    .local v1, "initial":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 369
    .end local v1    # "initial":Ljava/lang/Boolean;
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupported is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return v3

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GbaServiceWrapper"

    const-string v6, "isGbaUiccSupported is null "

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    const-string v2, "istoreGbaBootstrapParams"

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceClass:Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 289
    .local v1, "genGbaKeyMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 292
    :try_start_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->iGbaServiceInstance:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 310
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "GbaServiceWrapper"

    const-string v4, "storeGbaBootstrapParams is null "

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
