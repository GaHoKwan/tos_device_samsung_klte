.class public Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;
.super Ljava/lang/Object;
.source "SensoryWakeUpEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "Trying to load libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "SensoryWakeUpEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "Loading libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SensoryWakeUpEngine"

    const-string v2, "WARNING: Could not load libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public asyncPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public native phrasespotClose(J)V
.end method

.method public native phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native phrasespotPipe(J[SJJ)Ljava/lang/String;
.end method
