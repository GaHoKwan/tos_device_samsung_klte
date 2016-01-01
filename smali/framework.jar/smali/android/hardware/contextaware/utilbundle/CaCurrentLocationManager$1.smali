.class Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v11, 0x0

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_0

    .line 127
    const-string v0, "Accuracy is low"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 132
    .local v1, "sysTime":J
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    .line 134
    .local v3, "timeStamp":J
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 135
    .local v5, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 136
    .local v7, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    .line 138
    .local v9, "altitude":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lat: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", Long: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->notifyCurrentLocationObserver(JJDDD)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 152
    packed-switch p2, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 154
    :pswitch_0
    const-string v0, "out of service"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v0, "temporarily unavailable"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "available"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
