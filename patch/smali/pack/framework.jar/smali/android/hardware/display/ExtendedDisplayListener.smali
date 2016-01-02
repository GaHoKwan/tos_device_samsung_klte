.class public Landroid/hardware/display/ExtendedDisplayListener;
.super Ljava/lang/Object;
.source "ExtendedDisplayListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedDisplayListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 18
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onBridgeStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public onConnectionStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 10
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onConnectionStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public onQoSLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 14
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onQoSLevelChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method
