.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$2;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field last_Ke:Landroid/view/KeyEvent;

.field private mCameraOrientation:I

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mEventReaderThread:Ljava/lang/Thread;

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyUpTime:J

.field private mLandscapeOrientation:Z

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRepeatCnt:I

.field private mSPCOrientation:Z

.field private mTouchDownTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 73
    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventReaderThread:Ljava/lang/Thread;

    .line 74
    iput-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 76
    iput-boolean v0, p0, Landroid/media/WFDUibcManager;->mLandscapeOrientation:Z

    .line 77
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mSPCOrientation:Z

    .line 79
    iput v3, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    .line 81
    iput v1, p0, Landroid/media/WFDUibcManager;->CAMERA_0:I

    .line 82
    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_90:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_180:I

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager;->CAMERA_270:I

    .line 90
    iput v3, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    .line 91
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 96
    iput v3, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    .line 97
    iput v1, p0, Landroid/media/WFDUibcManager;->mFlag:I

    .line 98
    iput-object v2, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 100
    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 101
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 105
    iput-object p1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/media/WFDUibcManager$1;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$1000(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    return p1
.end method

.method static synthetic access$1008(Landroid/media/WFDUibcManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    return v0
.end method

.method static synthetic access$1100(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return p1
.end method

.method static synthetic access$1176(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic access$400(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic access$502(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mSPCOrientation:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$612(Landroid/media/WFDUibcManager;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method

.method static synthetic access$800(Landroid/media/WFDUibcManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/media/WFDUibcManager;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/media/WFDUibcManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    return-wide v0
.end method

.method static synthetic access$902(Landroid/media/WFDUibcManager;J)J
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    return-wide p1
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .param p1, "isCoupleShot"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 238
    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0
    .param p1, "negRs_X"    # F
    .param p2, "negRs_Y"    # F

    .prologue
    .line 230
    iput p1, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 231
    iput p2, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 232
    return-void
.end method

.method public start()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 180
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 182
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 183
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 187
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    .line 188
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    .line 189
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 194
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 4
    .param p1, "mSessionId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 123
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 126
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 128
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 131
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    .line 132
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    .line 133
    iput-wide v2, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/WFDUibcManager;->mFlag:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    .line 138
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 204
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    .line 226
    :goto_0
    return v7

    .line 205
    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v6, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 206
    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    .line 208
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 217
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 219
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    .line 220
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    .line 221
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    .line 222
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    .line 223
    iput v6, p0, Landroid/media/WFDUibcManager;->mFlag:I

    .line 224
    iput-object v3, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stop(I)Z
    .locals 8
    .param p1, "mSessionId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 149
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return v7

    .line 150
    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v6, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 152
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 161
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 163
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mTouchDownTime:J

    .line 164
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mKeyDownTime:J

    .line 165
    iput-wide v4, p0, Landroid/media/WFDUibcManager;->mKeyUpTime:J

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/WFDUibcManager;->mRepeatCnt:I

    .line 167
    iput v6, p0, Landroid/media/WFDUibcManager;->mFlag:I

    .line 168
    iput-object v3, p0, Landroid/media/WFDUibcManager;->last_Ke:Landroid/view/KeyEvent;

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public test(Z)V
    .locals 0
    .param p1, "isCoupleShot"    # Z

    .prologue
    .line 243
    return-void
.end method
