.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 14
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 274
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 278
    .local v2, "utcTime":[I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 279
    .local v3, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 280
    .local v5, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    .line 281
    .local v7, "altitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v11

    .line 282
    .local v11, "speed":F
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    .line 283
    .local v12, "accuracy":F
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->calculationDistance(DD)D
    invoke-static {v0, v3, v4, v5, v6}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;DD)D

    move-result-wide v9

    .line 284
    .local v9, "distance":D
    const/4 v13, 0x1

    .line 287
    .local v13, "type":I
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v12}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->setPosition(I[IDDDDFF)V

    .line 290
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->notifyPassiveCurrentPositionObserver()V

    .line 292
    .end local v2    # "utcTime":[I
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    .end local v7    # "altitude":D
    .end local v9    # "distance":D
    .end local v11    # "speed":F
    .end local v12    # "accuracy":F
    .end local v13    # "type":I
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 315
    return-void
.end method
