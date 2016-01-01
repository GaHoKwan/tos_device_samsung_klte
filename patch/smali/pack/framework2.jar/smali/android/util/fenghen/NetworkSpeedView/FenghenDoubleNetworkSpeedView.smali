.class public Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;
.super Landroid/widget/TextView;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsNetworkConnected:Z

.field private mIsRequestHideByKeyguard:Z

.field private mLastTime:J

.field private mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

.field private mNetworkSpeedRunnable:Ljava/lang/Runnable;

.field private mNetworkUpdateInterval:I

.field private mTotalBytes:J

.field private mUploadTotalBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mDisabled:Z

    new-instance v0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;

    invoke-direct {v0, p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$1;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V

    iput-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$2;

    invoke-direct {v0, p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$2;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V

    iput-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mIsNetworkConnected:Z

    return p1
.end method

.method static synthetic access$200(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->updateNetworkSpeed()V

    return-void
.end method

.method static synthetic access$302(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mDisabled:Z

    return p1
.end method

.method static synthetic access$402(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;I)I
    .locals 0

    iput p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkUpdateInterval:I

    return p1
.end method

.method private static formatSpeed(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 8

    const-string v1, "K/s"

    long-to-float v6, p1

    const/high16 v7, 0x44800000    # 1024.0f

    div-float v2, v6, v7

    const v6, 0x4479c000    # 999.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    const-string v1, "M/s"

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v2, v6

    :cond_0
    const-string v4, "K/s"

    long-to-float v6, p3

    const/high16 v7, 0x44800000    # 1024.0f

    div-float v5, v6, v7

    const v6, 0x4479c000    # 999.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    const-string v4, "M/s"

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v5, v6

    :cond_1
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    aput-object v1, v0, v6

    const-string v3, ""

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    const-string v6, "%.1f%s \u25bc"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    const-string v6, "%.1f%s \u25bc"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    const-string v6, "%.1f%s \u25bd"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_5

    const-string v6, "%.0f%s \u25bc"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    aput-object v4, v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    const-string v6, "%.1f%s \u25b2"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    const-string v6, "%.1f%s \u25b2"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_8

    const-string v6, "%.1f%s \u25b3"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_9

    const-string v6, "%.0f%s \u25b2"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private updateNetworkSpeed()V
    .locals 14

    iget-boolean v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mDisabled:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mIsNetworkConnected:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mIsRequestHideByKeyguard:Z

    if-eqz v10, :cond_1

    :cond_0
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->setVisibility(I)V

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mTotalBytes:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mUploadTotalBytes:J

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    cmp-long v10, v0, v10

    if-lez v10, :cond_2

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mTotalBytes:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_2

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mTotalBytes:J

    cmp-long v10, v2, v10

    if-lez v10, :cond_2

    const-wide/16 v10, 0x3e8

    iget-wide v12, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mTotalBytes:J

    sub-long v12, v2, v12

    mul-long/2addr v10, v12

    iget-wide v12, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    sub-long v12, v0, v12

    div-long v4, v10, v12

    :cond_2
    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    cmp-long v10, v0, v10

    if-lez v10, :cond_3

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mUploadTotalBytes:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    iget-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mUploadTotalBytes:J

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const-wide/16 v10, 0x3e8

    iget-wide v12, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mUploadTotalBytes:J

    sub-long v12, v8, v12

    mul-long/2addr v10, v12

    iget-wide v12, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    sub-long v12, v0, v12

    div-long v6, v10, v12

    :cond_3
    iget-object v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v5, v6, v7}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->formatSpeed(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {p0, v10}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->setTextSize(F)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->setVisibility(I)V

    iput-wide v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mLastTime:J

    iput-wide v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mTotalBytes:J

    iput-wide v8, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mUploadTotalBytes:J

    iget-object v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v10}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    iget v11, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkUpdateInterval:I

    int-to-long v11, v11

    invoke-virtual {p0, v10, v11, v12}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mAttached:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mAttached:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_pen_hovering_fenghenztlshws_ink_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_inkeffect_fenghenztlshwssxsl_picker"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "db_inkeffect_netspeedcolor_picker"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    invoke-virtual {v1, v5}, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;->onChange(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, "0.00K/s"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mAttached:Z

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedObserver:Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenDoubleNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
