.class public Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;
.super Landroid/widget/TextView;
.source "NetworkSpeedView.java"


# instance fields
.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mDisabled:Z

.field private mIsNetworkConnected:Z

.field private mIsRequestHideByKeyguard:Z

.field private mLastTime:J

.field private mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mNetworkSpeedRunnable:Ljava/lang/Runnable;

.field private mNetworkUpdateInterval:I

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$1;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    new-instance v0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;

    invoke-direct {v0, p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$2;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V

    iput-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$3;

    invoke-direct {v0, p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView$3;-><init>(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V

    iput-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mDisabled:Z

    return p1
.end method

.method static synthetic access$100(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;I)I
    .locals 0

    iput p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkUpdateInterval:I

    return p1
.end method

.method static synthetic access$300(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->updateNetworkSpeed()V

    return-void
.end method

.method static synthetic access$500(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsNetworkConnected:Z

    return p1
.end method

.method private static formatSpeed(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const/high16 v5, 0x44800000    # 1024.0f

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    long-to-float v0, p1

    const-string v1, "K/s"

    div-float/2addr v0, v5

    const v3, 0x4479c000    # 999.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const-string v1, "M/s"

    div-float/2addr v0, v5

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const-string v3, "%.1f%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const-string v3, "%.1f%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "%.0f%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateNetworkSpeed()V
    .locals 12

    const-wide/16 v10, 0x0

    iget-boolean v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mDisabled:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsNetworkConnected:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsRequestHideByKeyguard:Z

    if-eqz v6, :cond_1

    :cond_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->setVisibility(I)V

    iput-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mLastTime:J

    iput-wide v10, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mTotalBytes:J

    :goto_0
    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_inkeffect_fenghenztlwsys_picker"

    const v2, -0x111111

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->setTextColor(I)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v8

    add-long v4, v6, v8

    const-wide/16 v0, 0x0

    iget-wide v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mLastTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-wide v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mLastTime:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    iget-wide v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mTotalBytes:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    iget-wide v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mTotalBytes:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-wide v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mTotalBytes:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-wide v8, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mLastTime:J

    sub-long v8, v2, v8

    div-long v0, v6, v8

    :cond_2
    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->formatSpeed(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->setVisibility(I)V

    iput-wide v2, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mLastTime:J

    iput-wide v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mTotalBytes:J

    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    iget v7, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkUpdateInterval:I

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_pen_hovering_fenghenztlws_ink_effect"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_inkeffect_fenghenztlwssxsl_picker"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_inkeffect_fenghenztlwsys_picker"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mNetworkSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestHideByKeyguard(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsRequestHideByKeyguard:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->mIsRequestHideByKeyguard:Z

    invoke-direct {p0}, Landroid/util/fenghen/NetworkSpeedView/FenghenNetworkSpeedView;->updateNetworkSpeed()V

    :cond_0
    return-void
.end method
