.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .param p2, "x1"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1492
    const-string v2, "LppLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainLocationListener - onLocationChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    if-nez p1, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1498
    :cond_0
    const-string v2, "LppLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loc time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListLoc:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1503
    const-string v2, "LppLocationManager"

    const-string v3, "unhandled update"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1508
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;
    invoke-static {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8302(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 1513
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1515
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    # setter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocNw:Landroid/location/Location;
    invoke-static {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1602(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/location/Location;

    .line 1516
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckNw(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    invoke-static {v2, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v2

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    if-ne v2, v3, :cond_2

    .line 1517
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v2

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_NETWORK:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    .line 1538
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 1539
    .local v0, "LocSource":I
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1540
    const/4 v0, 0x2

    .line 1542
    :cond_3
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->logData(Ljava/lang/String;)V

    .line 1546
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->sendStatus()V

    goto/16 :goto_0

    .line 1510
    .end local v0    # "LocSource":I
    :cond_4
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLastLoc:Landroid/location/Location;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_1

    .line 1523
    :cond_5
    const-string v2, "LppLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged provider : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Accuracy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->locValidCheckGps(Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    invoke-static {v2, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    move-result-object v1

    .line 1528
    .local v1, "isValid":Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;
    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->INVALID_TIME:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    if-eq v1, v2, :cond_6

    .line 1529
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->setMostAccLocGps(Landroid/location/Location;)V
    invoke-static {v2, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$8600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/location/Location;)V

    .line 1532
    :cond_6
    sget-object v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;->VALID:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LocValidity;

    if-ne v1, v2, :cond_2

    .line 1533
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$MainLocationListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v2

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_GPS:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1550
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1554
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1559
    return-void
.end method
