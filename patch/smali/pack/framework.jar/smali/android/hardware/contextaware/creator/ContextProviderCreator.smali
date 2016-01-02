.class public abstract Landroid/hardware/contextaware/creator/ContextProviderCreator;
.super Ljava/lang/Object;
.source "ContextProviderCreator.java"


# static fields
.field private static sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

.field private static sContext:Landroid/content/Context;

.field private static final sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;

.field private static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p4, "version"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setContext(Landroid/content/Context;)V

    .line 62
    invoke-static {p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setLooper(Landroid/os/Looper;)V

    .line 63
    invoke-static {p3}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 64
    invoke-static {p4}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->setVersion(I)V

    .line 65
    return-void
.end method

.method private create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSubCollection"    # Z

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "provider":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final getApPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    return-object v0
.end method

.method protected static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static final getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected static getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected static getVersion()I
    .locals 1

    .prologue
    .line 274
    sget v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sVersion:I

    return v0
.end method

.method protected static final removeObj(Ljava/lang/String;)Z
    .locals 2
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 286
    const/4 v0, 0x0

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setAPPowerObservable(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p0, "sAPPowerObservable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 246
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 247
    return-void
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "sContext"    # Landroid/content/Context;

    .prologue
    .line 207
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method private static setLooper(Landroid/os/Looper;)V
    .locals 0
    .param p0, "sLooper"    # Landroid/os/Looper;

    .prologue
    .line 226
    sput-object p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sLooper:Landroid/os/Looper;

    .line 227
    return-void
.end method

.method public static setVersion(I)V
    .locals 0
    .param p0, "version"    # I

    .prologue
    .line 265
    sput p0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->sVersion:I

    .line 266
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final varargs create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSubCollection"    # Z
    .param p3, "property"    # [Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, "provider":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz p3, :cond_1

    array-length v1, p3

    if-gtz v1, :cond_2

    .line 146
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/hardware/contextaware/creator/IListObjectCreator;->getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "property"    # [Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final existContextProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v1, 0x1

    .line 169
    .local v1, "exist":Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;
.end method

.method public final removeContextObj(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getValueOfList(Ljava/lang/String;)Landroid/hardware/contextaware/creator/IListObjectCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/creator/IListObjectCreator;->removeObject(Ljava/lang/String;)V

    goto :goto_0
.end method
