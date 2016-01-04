.class Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;
.super Ljava/lang/Object;
.source "SmartTaskControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartTaskControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartTaskControllerConfiguration"
.end annotation


# static fields
.field public static final BLUE:I = 0x4

.field public static final FREE:I = 0x63

.field public static final GREEN:I = 0x5

.field public static final RED:I = 0x2

.field public static final YELLOW:I = 0x3


# instance fields
.field public BLUE_MEMORY:J

.field public GREEN_MEMORY:J

.field public HEAVY_PROCESS:J

.field public MIN_FREE_MEMORY:J

.field public RED_MEMORY:J

.field final REMAIN_TASK_COUNT:I

.field final REMAIN_TASK_WITH_PROCESS_COUNT:I

.field public YELLOW_MEMORY:J

.field final mBlue:J

.field final mGreen:J

.field final mRed:J

.field final mYellow:J

.field final synthetic this$0:Lcom/android/server/am/SmartTaskControler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SmartTaskControler;)V
    .locals 2

    .prologue
    .line 410
    const-wide/16 v0, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;-><init>(Lcom/android/server/am/SmartTaskControler;J)V

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/SmartTaskControler;J)V
    .locals 4
    .param p2, "minFree"    # J

    .prologue
    const-wide/16 v2, 0x400

    .line 413
    iput-object p1, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->this$0:Lcom/android/server/am/SmartTaskControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const-string v0, "persist.sys.stc_green"

    const-string v1, "98"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mGreen:J

    .line 399
    const-string v0, "persist.sys.stc_blue"

    const-string v1, "78"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mBlue:J

    .line 400
    const-string v0, "persist.sys.stc_yellow"

    const-string v1, "38"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mYellow:J

    .line 401
    const-string v0, "persist.sys.stc_red"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mRed:J

    .line 403
    const-string v0, "persist.sys.remaintask_margin"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_COUNT:I

    .line 404
    const-string v0, "persist.sys.remain_process"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_WITH_PROCESS_COUNT:I

    .line 407
    const-string v0, "persist.sys.stc_heavy"

    const-string v1, "50"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->HEAVY_PROCESS:J

    .line 414
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->setMemoryValues(J)V

    .line 415
    return-void
.end method


# virtual methods
.method public getMemoryLevels(J)I
    .locals 2
    .param p1, "availableMem"    # J

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->YELLOW_MEMORY:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 436
    const/4 v0, 0x3

    .line 440
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getRemainTaskCount(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 428
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_COUNT:I

    goto :goto_0

    .line 422
    :pswitch_1
    iget v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_COUNT:I

    goto :goto_0

    .line 424
    :pswitch_2
    iget v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_COUNT:I

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 426
    :pswitch_3
    iget v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->REMAIN_TASK_WITH_PROCESS_COUNT:I

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMemoryValues(J)V
    .locals 2
    .param p1, "minFree"    # J

    .prologue
    .line 446
    iput-wide p1, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->MIN_FREE_MEMORY:J

    .line 447
    iget-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mGreen:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->GREEN_MEMORY:J

    .line 448
    iget-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mBlue:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->BLUE_MEMORY:J

    .line 449
    iget-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mYellow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->YELLOW_MEMORY:J

    .line 450
    iget-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->mRed:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskControler$SmartTaskControllerConfiguration;->RED_MEMORY:J

    .line 452
    return-void
.end method
