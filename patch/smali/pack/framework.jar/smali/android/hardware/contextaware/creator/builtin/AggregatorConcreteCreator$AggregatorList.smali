.class abstract enum Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.super Ljava/lang/Enum;
.source "AggregatorConcreteCreator.java"

# interfaces
.implements Landroid/hardware/contextaware/creator/IListObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AggregatorList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;",
        ">;",
        "Landroid/hardware/contextaware/creator/IListObjectCreator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LIFE_LOG:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LOCATION:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LPP:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum MOVING:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

.field public static final enum TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;

    const-string v1, "LOCATION"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    .line 74
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;

    const-string v1, "MOVING"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    .line 98
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;

    const-string v1, "LPP"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    .line 120
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;

    const-string v1, "TEMPERATURE_HUMIDITY"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    .line 146
    new-instance v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;

    const-string v1, "LIFE_LOG"

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LOCATION:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->MOVING:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LPP:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->LIFE_LOG:Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v7

    sput-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput-object p3, p0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->name:Ljava/lang/String;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static varargs getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 4
    .param p0, "runnerName"    # Ljava/lang/String;
    .param p1, "property"    # [Ljava/lang/Object;

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, "obj":Landroid/hardware/contextaware/manager/ContextComponent;
    # invokes: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getRunnerCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$2800()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 202
    .local v0, "creator":Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;Z[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_0

    .line 211
    .end local v0    # "creator":Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method


# virtual methods
.method public final varargs getObject([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "property"    # [Ljava/lang/Object;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObject()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getObjectForSubCollection([Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 1
    .param p1, "property"    # [Ljava/lang/Object;

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getObjectForSubCollection()Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v0

    return-object v0
.end method

.method public getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method protected final makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 221
    .local v2, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 223
    .local v3, "subCollectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 224
    const-string v4, "list is null."

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 225
    const/4 v2, 0x0

    .line 232
    .end local v2    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    return-object v2

    .line 228
    .restart local v2    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, "i":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/manager/ContextComponent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 288
    # invokes: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->removeObj(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$2900(Ljava/lang/String;)Z

    .line 289
    return-void
.end method
