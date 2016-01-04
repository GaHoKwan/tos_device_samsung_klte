.class public Lcom/android/server/wifi/WifiService$ApInfo;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1684
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1685
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1686
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1687
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1688
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1689
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1693
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1696
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1697
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1700
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1701
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1702
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1703
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1706
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1707
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1708
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1709
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1710
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
