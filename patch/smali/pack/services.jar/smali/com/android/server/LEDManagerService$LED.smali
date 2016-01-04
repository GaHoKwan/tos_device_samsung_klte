.class public final Lcom/android/server/LEDManagerService$LED;
.super Ljava/lang/Object;
.source "LEDManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LEDManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LED"
.end annotation


# instance fields
.field private mColor:I

.field private mId:I

.field public final mLED:Landroid/os/IBinder;

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/LEDManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LEDManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p2, "lock"    # Landroid/os/IBinder;
    .param p3, "id"    # I

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p3, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    .line 108
    iput-object p2, p0, Lcom/android/server/LEDManagerService$LED;->mLED:Landroid/os/IBinder;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LEDManagerService$LED;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LEDManagerService$LED;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LEDManagerService$LED;->setLEDState(IIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LEDManagerService$LED;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService$LED;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LEDManagerService$LED;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService$LED;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LEDManagerService$LED;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService$LED;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mOnMS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/LEDManagerService$LED;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LEDManagerService$LED;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mOffMS:I

    return v0
.end method

.method private setLEDState(IIII)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/LEDManagerService$LED;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/server/LEDManagerService$LED;->mColor:I

    .line 124
    iput p2, p0, Lcom/android/server/LEDManagerService$LED;->mMode:I

    .line 125
    iput p3, p0, Lcom/android/server/LEDManagerService$LED;->mOnMS:I

    .line 126
    iput p4, p0, Lcom/android/server/LEDManagerService$LED;->mOffMS:I

    .line 128
    iget-object v0, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # invokes: Lcom/android/server/LEDManagerService;->setSvcLEDLocked()V
    invoke-static {v0}, Lcom/android/server/LEDManagerService;->access$300(Lcom/android/server/LEDManagerService;)V

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # getter for: Lcom/android/server/LEDManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LEDManagerService;->access$100(Lcom/android/server/LEDManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    const-string v0, "LEDManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] binderDied. this.mId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # getter for: Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;
    invoke-static {v0}, Lcom/android/server/LEDManagerService;->access$200(Lcom/android/server/LEDManagerService;)[Lcom/android/server/LEDManagerService$LED;

    move-result-object v0

    iget v2, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/LEDManagerService$LED;->setLEDState(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # getter for: Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;
    invoke-static {v0}, Lcom/android/server/LEDManagerService;->access$200(Lcom/android/server/LEDManagerService;)[Lcom/android/server/LEDManagerService$LED;

    move-result-object v0

    iget v2, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/server/LEDManagerService$LED;->mLED:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # getter for: Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;
    invoke-static {v2}, Lcom/android/server/LEDManagerService;->access$200(Lcom/android/server/LEDManagerService;)[Lcom/android/server/LEDManagerService$LED;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/LEDManagerService$LED;->this$0:Lcom/android/server/LEDManagerService;

    # getter for: Lcom/android/server/LEDManagerService;->mLEDList:[Lcom/android/server/LEDManagerService$LED;
    invoke-static {v0}, Lcom/android/server/LEDManagerService;->access$200(Lcom/android/server/LEDManagerService;)[Lcom/android/server/LEDManagerService$LED;

    move-result-object v0

    iget v2, p0, Lcom/android/server/LEDManagerService$LED;->mId:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
