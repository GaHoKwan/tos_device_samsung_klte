.class public Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final REMOTE_CLASS:Ljava/lang/String; = "com.samsung.authentication.gba.GbaSrvConnection"

.field private static final TAG:Ljava/lang/String; = "ServiceConnection"

.field private static final pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static remoteServiceConnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static remoteServiceConnInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "ServiceConnection"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 34
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static getClassLoader()Ljava/lang/ClassLoader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 188
    .local v1, "pathClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClassLoader()#started   pathClassLoader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-nez v1, :cond_0

    .line 192
    const-string v0, "/system/app/secgba.apk"

    .line 194
    .local v0, "gbaServiceJarPath":Ljava/lang/String;
    const-string v4, "dalvik.system.PathClassLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 195
    .local v2, "pathClassLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_3

    .line 197
    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 199
    .local v3, "pathClassLoaderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v3, :cond_2

    .line 201
    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "/system/app/secgba.apk"

    aput-object v5, v4, v8

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pathClassLoader":Ljava/lang/ClassLoader;
    check-cast v1, Ljava/lang/ClassLoader;

    .line 203
    .restart local v1    # "pathClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1

    .line 205
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 218
    .end local v0    # "gbaServiceJarPath":Ljava/lang/String;
    .end local v2    # "pathClassLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pathClassLoaderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClassLoader()#finished   pathClassLoader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-object v1

    .line 207
    .restart local v0    # "gbaServiceJarPath":Ljava/lang/String;
    .restart local v2    # "pathClassLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pathClassLoaderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    const-string v6, "Can\'t create new instance for PathClassLoader."

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    const-string v6, "Can\'t find constructor for PathClassLoader."

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v3    # "pathClassLoaderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    const-string v6, "Can\'t load class dalvik.system.PathClassLoader."

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
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
    .line 154
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 156
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 164
    :goto_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "ServiceConnection"

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

    .line 166
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRemoteInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 44
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 48
    :try_start_0
    const-string v4, "com.samsung.authentication.gba.GbaSrvConnection"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 58
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .local v1, "classLoaderInstance":Ljava/lang/Object;
    :try_start_1
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v1

    .line 75
    .end local v1    # "classLoaderInstance":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "classLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 79
    .local v3, "loadClassMethod":Ljava/lang/reflect/Method;
    :try_start_2
    const-string v4, "loadClass"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v3

    .line 85
    :goto_2
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.samsung.authentication.gba.GbaSrvConnection"

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    sput-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_c

    .line 96
    .end local v0    # "classLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loadClassMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_3
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 99
    :try_start_4
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_e

    .line 108
    :cond_1
    :goto_4
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Service Connection Instance is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;

    return-object v4

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "ServiceConnection"

    const-string v6, "Normal Class Loading failed Need to use Dalvik Class Loader"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "classLoaderInstance":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 81
    .end local v1    # "classLoaderInstance":Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "classLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "loadClassMethod":Ljava/lang/reflect/Method;
    :catch_8
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 88
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_a
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 90
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 92
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_c
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v0    # "classLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "loadClassMethod":Ljava/lang/reflect/Method;
    :catch_d
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 102
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_e
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public static getRemoteServiceInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, "iGbaService":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 118
    const-string v3, "getService"

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, "getService":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 122
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->remoteServiceConnInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 146
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "ServiceConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iGbaService Instance is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v2

    .line 126
    .restart local v1    # "getService":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "ServiceConnection"

    const-string v5, "Remote Service Connection Class is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 135
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/ServiceConnection;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "ServiceConnection"

    const-string v5, "Remote Service Connection Class is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
