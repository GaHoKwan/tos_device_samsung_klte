.class Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcFailHistory"
.end annotation


# instance fields
.field apIndex:I

.field avoidance:Z

.field bssid:Ljava/lang/String;

.field bytes:I

.field currentDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field dataRate:I

.field detection:Z

.field error:I

.field line:I

.field poorLinkLine:I

.field qcId:I

.field qcStep:I

.field qcTrigger:I

.field rssi:I

.field ssid:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 610
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 612
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 613
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 614
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 615
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 616
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 617
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 618
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 619
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 620
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 621
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 622
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 623
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 624
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 625
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 626
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->currentDnsList:Ljava/util/List;

    .line 628
    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;IIIIIIZZILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "qcStep"    # I
    .param p4, "qcId"    # I
    .param p5, "error"    # I
    .param p6, "bytes"    # I
    .param p7, "rssi"    # I
    .param p8, "dataRate"    # I
    .param p9, "detection"    # Z
    .param p10, "avoidance"    # Z
    .param p11, "apIndex"    # I
    .param p12, "ssid"    # Ljava/lang/String;
    .param p13, "bssid"    # Ljava/lang/String;
    .param p14, "line"    # I
    .param p15, "poorLinkLine"    # I

    .prologue
    .line 630
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->state:Ljava/lang/String;

    .line 632
    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 633
    iput p4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 634
    iput p5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 635
    iput p6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 636
    iput p7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->rssi:I

    .line 637
    iput p8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->dataRate:I

    .line 638
    iput-boolean p9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->detection:Z

    .line 639
    iput-boolean p10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->avoidance:Z

    .line 640
    iput p11, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->apIndex:I

    .line 641
    iput-object p12, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->ssid:Ljava/lang/String;

    .line 642
    iput-object p13, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bssid:Ljava/lang/String;

    .line 643
    iput p14, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 644
    iput p15, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 645
    return-void
.end method
