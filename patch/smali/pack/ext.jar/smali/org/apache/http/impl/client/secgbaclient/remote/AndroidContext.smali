.class public Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;
.super Ljava/lang/Object;
.source "AndroidContext.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "GBAAndroidContext"

.field private static contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static contextInstance:Ljava/lang/Object;

.field private static instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

.field private static intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static serviceConnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GBAAndroidContext"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 30
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    .line 31
    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

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

.method private static getAndroidClasses()V
    .locals 4

    .prologue
    .line 204
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "GBAAndroidContext"

    const-string v3, "Dynamically Load Android Classes"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    .line 207
    const-string v1, "android.content.Intent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    .line 208
    const-string v1, "android.content.ServiceConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 209
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;-><init>()V

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    .line 46
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;-><init>()V

    .line 47
    .local v0, "contextProvider":Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;->getContext()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getAndroidClasses()V

    .line 50
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    return-object v1
.end method

.method private getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 173
    .local v2, "instanceIntent":Ljava/lang/Object;
    :try_start_0
    const-string v4, "android.content.Intent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 174
    .local v3, "intent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 175
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 176
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 199
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "instanceIntent":Ljava/lang/Object;
    .end local v3    # "intent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GBAAndroidContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentInstance is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v2

    .line 177
    .restart local v2    # "instanceIntent":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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
    .line 155
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 165
    :goto_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "GBAAndroidContext"

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

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bindService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "serviceConnInstance"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "bindResult":Z
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    .local v4, "intentInstance":Ljava/lang/Object;
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 58
    .local v3, "flagInstance":Ljava/lang/Integer;
    const-string v5, "bindService"

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    aput-object v8, v7, v10

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    invoke-direct {p0, v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 60
    .local v1, "bindServiceMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 62
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 65
    :try_start_0
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v6, "GBAAndroidContext"

    const-string v7, "Android Context Instance is Null"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v6, "GBAAndroidContext"

    const-string v7, "BindServiceMethod is Null"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startService(Ljava/lang/String;)V
    .locals 8
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "intentInstance":Ljava/lang/Object;
    const-string v3, "startService"

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    .local v2, "startServiceMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 127
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 130
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "Android Context Instance is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "unbindServiceMethod is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindService(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "serviceConnInstance"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "unbindResult":Z
    const-string v3, "unbindService"

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    .local v2, "unbindServiceMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 95
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 98
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "Android Context Instance is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "unbindServiceMethod is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
