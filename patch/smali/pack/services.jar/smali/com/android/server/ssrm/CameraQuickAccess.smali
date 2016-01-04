.class public Lcom/android/server/ssrm/CameraQuickAccess;
.super Ljava/lang/Object;
.source "CameraQuickAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field final mObserver:Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;

.field final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "SSRMv2:CameraQuickAccess"

    iput-object v0, p0, Lcom/android/server/ssrm/CameraQuickAccess;->TAG:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CameraQuickAccess;->mResolver:Landroid/content/ContentResolver;

    .line 36
    new-instance v0, Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;-><init>(Lcom/android/server/ssrm/CameraQuickAccess;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CameraQuickAccess;->mObserver:Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;

    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/CameraQuickAccess;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "camera_quick_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ssrm/CameraQuickAccess;->mObserver:Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    iget-object v0, p0, Lcom/android/server/ssrm/CameraQuickAccess;->mObserver:Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;->onChange(Z)V

    .line 40
    return-void
.end method
