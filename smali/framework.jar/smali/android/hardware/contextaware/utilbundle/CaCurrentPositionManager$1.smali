.class Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 255
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v3

    .line 257
    .local v3, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 258
    .local v4, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 259
    .local v6, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 260
    .local v8, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v12

    .line 261
    .local v12, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    .line 262
    .local v13, "accuracy":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->calculationDistance(DD)D
    invoke-static {v1, v4, v5, v6, v7}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;DD)D

    move-result-wide v10

    .line 263
    .local v10, "distance":D
    const/16 v17, 0x1

    .line 265
    .local v17, "type":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;

    move-result-object v15

    .line 266
    .local v15, "gpsSatellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v14, 0x0

    .line 268
    .local v14, "satelliteCount":I
    if-eqz v15, :cond_1

    .line 269
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/location/GpsSatellite;

    .line 271
    .local v16, "satellite":Landroid/location/GpsSatellite;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 277
    .end local v16    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Acc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    move-result-object v1

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-ltz v1, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v14}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->setPosition(I[IDDDDFFI)V

    .line 287
    :cond_2
    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 290
    :cond_3
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 313
    return-void
.end method
