.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VehNM"
.end annotation


# instance fields
.field private nwFound:Z

.field private reqCount:I

.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 798
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 799
    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->nwFound:Z

    .line 800
    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 915
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsStatusLnr:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 918
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->nwFound:Z

    .line 920
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v0, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1502(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 921
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 922
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 804
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1502(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 808
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 809
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    .line 810
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 815
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v9

    .line 908
    :goto_0
    return v0

    .line 820
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v1, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 824
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 825
    const-string v0, "LppLocationManager"

    const-string v1, "mLocMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    :cond_1
    :goto_1
    :pswitch_2
    move v0, v10

    .line 908
    goto :goto_0

    .line 828
    :cond_2
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    .line 829
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 840
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v5, v5, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 841
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocLnr:Landroid/location/LocationListener;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 842
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mTimeRequest:J
    invoke-static {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1902(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;J)J

    .line 844
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Z

    move-result v0

    if-ne v0, v10, :cond_3

    .line 845
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z
    invoke-static {v0, v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2002(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Z)Z

    .line 846
    const-wide/16 v7, 0x28

    .line 850
    .local v7, "tOut":J
    :goto_2
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    .line 852
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocationUpdates, timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 848
    .end local v7    # "tOut":J
    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)J

    move-result-wide v7

    .restart local v7    # "tOut":J
    goto :goto_2

    .line 858
    .end local v7    # "tOut":J
    :pswitch_3
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Loc to Fusion, Accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    .line 861
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->clear()V

    .line 862
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 870
    :pswitch_4
    iput-boolean v10, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->nwFound:Z

    goto/16 :goto_1

    .line 876
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->nwFound:Z

    if-nez v0, :cond_4

    .line 877
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Loc to Fusion, Accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMostAccGps:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    .line 887
    :goto_3
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->clear()V

    .line 888
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->reqCount:I

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 879
    :cond_4
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 880
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Loc to Fusion; Accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locUpdate(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 883
    :cond_5
    const-string v0, "LppLocationManager"

    const-string v1, "Cannot find any location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    goto/16 :goto_3

    .line 900
    :pswitch_6
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->clear()V

    .line 901
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v0

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    goto/16 :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
