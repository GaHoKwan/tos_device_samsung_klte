.class public Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
.super Ljava/lang/Object;
.source "SmartCardPinManagerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCardPinManagerFactory"

.field private static mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

.field private static mScPinMgrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/smartcard/pinservice/SmartCardPinManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
    .locals 3

    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    if-nez v0, :cond_0

    const-string v0, "SmartCardPinManagerFactory"

    const-string v1, "Creating a new factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-direct {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    :cond_0
    const-string v0, "SmartCardPinManagerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    return-object v0
.end method


# virtual methods
.method public getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 5

    const/4 v1, 0x0

    const-string v2, "SmartCardPinManagerFactory"

    const-string v3, "getSmartcardPinMgr entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Already contains key for userHandle identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Pin mgr for userHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "not in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-direct {v1, p1, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "SmartCardPinManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartcardPinMgr: Returning smartcard pin mgr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto/16 :goto_0
.end method
