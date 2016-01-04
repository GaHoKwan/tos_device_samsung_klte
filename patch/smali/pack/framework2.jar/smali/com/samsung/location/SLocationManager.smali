.class public Lcom/samsung/location/SLocationManager;
.super Ljava/lang/Object;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/SLocationManager$GeoListenerTransport;,
        Lcom/samsung/location/SLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.location.SERVICE_READY"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_UNKONWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SLocationManager"

.field public static final TYPE_BT:I = 0x3

.field public static final TYPE_GEOPOINT:I = 0x1

.field public static final TYPE_WIFI:I = 0x2


# instance fields
.field private mGeoListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SGeofenceListener;",
            "Lcom/samsung/location/SLocationManager$GeoListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SLocationListener;",
            "Lcom/samsung/location/SLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/location/ISLocationManager;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/location/ISLocationManager;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mGeoListeners:Ljava/util/HashMap;

    .line 127
    iput-object p1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    .line 128
    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z
    .locals 8
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-eq v2, v1, :cond_0

    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-eq v2, v6, :cond_0

    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-eq v2, v7, :cond_0

    .line 245
    const-string v1, "SLocationManager"

    const-string v2, "geofenceType is not correct"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return v0

    .line 248
    :cond_0
    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-ne v2, v1, :cond_6

    .line 249
    iget-wide v2, p1, Lcom/samsung/location/SLocationParameter;->mLat:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p1, Lcom/samsung/location/SLocationParameter;->mLat:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 250
    :cond_1
    const-string v1, "SLocationManager"

    const-string v2, "latitude is not correct"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_2
    iget-wide v2, p1, Lcom/samsung/location/SLocationParameter;->mLon:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3

    iget-wide v2, p1, Lcom/samsung/location/SLocationParameter;->mLon:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 254
    :cond_3
    const-string v1, "SLocationManager"

    const-string v2, "longitude is not correct"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_4
    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mRadius:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_5

    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mRadius:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_6

    .line 258
    :cond_5
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "radius is not correct"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_6
    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-eq v2, v6, :cond_7

    iget v2, p1, Lcom/samsung/location/SLocationParameter;->mType:I

    if-ne v2, v7, :cond_8

    .line 263
    :cond_7
    iget-object v2, p1, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 264
    const-string v1, "SLocationManager"

    const-string v2, "bssid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v0, v1

    .line 268
    goto :goto_0
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/location/SLocationParameter;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 132
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, -0x1

    .line 142
    :goto_0
    return v1

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager;->isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const/4 v1, -0x2

    goto :goto_0

    .line 139
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->addGeofence(Lcom/samsung/location/SLocationParameter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 194
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 195
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, -0x1

    .line 202
    :goto_0
    return v1

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeGeofence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestBatchOfLocations()I
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 323
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, -0x1

    .line 331
    :goto_0
    return v1

    .line 327
    :cond_0
    :try_start_0
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 273
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, -0x1

    .line 292
    :goto_0
    return v2

    .line 276
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 277
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, -0x2

    goto :goto_0

    .line 281
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 283
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 284
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 286
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 289
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public startGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 208
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, -0x1

    .line 220
    :goto_0
    return v1

    .line 211
    :cond_0
    if-nez p2, :cond_1

    .line 212
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, -0x2

    goto :goto_0

    .line 217
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/location/ISLocationManager;->startGeofence(ILcom/samsung/location/ISGeofenceListener;Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startGeofence(ILcom/samsung/location/SGeofenceListener;)I
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SGeofenceListener;

    .prologue
    .line 147
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 148
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, -0x1

    .line 166
    :goto_0
    return v2

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    const-string v2, "SLocationManager"

    const-string v3, "listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, -0x2

    goto :goto_0

    .line 156
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mGeoListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mGeoListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$GeoListenerTransport;

    .line 158
    .local v1, "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    if-nez v1, :cond_2

    .line 159
    new-instance v1, Lcom/samsung/location/SLocationManager$GeoListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$GeoListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SGeofenceListener;)V

    .line 161
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mGeoListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    const/4 v4, 0x0

    invoke-interface {v2, p1, v1, v4}, Lcom/samsung/location/ISLocationManager;->startGeofence(ILcom/samsung/location/ISGeofenceListener;Landroid/app/PendingIntent;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 163
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startGeofence: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 297
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 298
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, -0x1

    .line 317
    :goto_0
    return v2

    .line 301
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 302
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, -0x2

    goto :goto_0

    .line 306
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 307
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 308
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, -0x3

    goto :goto_0

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 315
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 226
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, -0x1

    .line 237
    :goto_0
    return v1

    .line 229
    :cond_0
    if-nez p2, :cond_1

    .line 230
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, -0x2

    goto :goto_0

    .line 234
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public stopGeofence(ILcom/samsung/location/SGeofenceListener;)I
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SGeofenceListener;

    .prologue
    .line 171
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 172
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, -0x1

    .line 189
    :goto_0
    return v2

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    const-string v2, "SLocationManager"

    const-string v3, "listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v2, -0x2

    goto :goto_0

    .line 180
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mGeoListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$GeoListenerTransport;

    .line 181
    .local v1, "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    if-nez v1, :cond_2

    .line 182
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, -0x3

    goto :goto_0

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/samsung/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 187
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$GeoListenerTransport;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopGeofence: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public updateBatchingOptions(II)I
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "period"    # I

    .prologue
    .line 336
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 337
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, -0x1

    .line 349
    :goto_0
    return v1

    .line 340
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 341
    :cond_1
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, -0x2

    goto :goto_0

    .line 346
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, -0x4

    goto :goto_0
.end method
