.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;
.super Ljava/lang/Object;
.source "SensorHubMultiModeParser.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;


# instance fields
.field private final mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final containsParser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getParserHandler()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 117
    .local v4, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 115
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    .end local v4    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_1
    return-void
.end method

.method public final registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method public final unregisterParser(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
