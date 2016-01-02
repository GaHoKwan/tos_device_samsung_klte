.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsBatch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;
    }
.end annotation


# instance fields
.field private deliveredT:J

.field private exit:Z

.field private final mBatchListener:Lcom/samsung/location/SLocationListener;

.field private final mListBatchLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private period:I

.field private requestId:I

.field private sLm:Lcom/samsung/location/SLocationManager;

.field final synthetic this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private walk:Z


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 925
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 927
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    .line 928
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    .line 929
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$ISLocationListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mBatchListener:Lcom/samsung/location/SLocationListener;

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    .line 932
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    .line 933
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    .line 1118
    return-void
.end method

.method static synthetic access$6800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    .prologue
    .line 925
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 937
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sec_location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/location/SLocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    .line 941
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-nez v0, :cond_3

    .line 942
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    .line 949
    :goto_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mBatchListener:Lcom/samsung/location/SLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/location/SLocationManager;->startBatching(ILcom/samsung/location/SLocationListener;)I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    .line 953
    :cond_0
    iget v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    if-nez v0, :cond_2

    .line 954
    :cond_1
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in start batch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    .line 959
    :cond_2
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$5600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_STARTED:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    .line 961
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsBatchStarted()V

    .line 962
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    .line 963
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    .line 964
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    .line 966
    return-void

    .line 943
    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 944
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0

    .line 946
    :cond_4
    iput v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0
.end method

.method public exit()V
    .locals 6

    .prologue
    .line 1097
    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    .line 1101
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mBatchListener:Lcom/samsung/location/SLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/location/SLocationManager;->stopBatching(ILcom/samsung/location/SLocationListener;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1102
    const-string v0, "LppLocationManager"

    const-string v1, "stop batching failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsBatchStopped()V

    .line 1107
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsOffBatchStopped()V

    .line 1115
    :goto_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$5600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    .line 1116
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1112
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 971
    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v10, p1, Landroid/os/Message;->what:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

    sget-object v8, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1089
    :pswitch_0
    const/4 v7, 0x0

    .line 1092
    :goto_0
    return v7

    .line 975
    :pswitch_1
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    if-nez v7, :cond_0

    .line 976
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    invoke-virtual {v7}, Lcom/samsung/location/SLocationManager;->requestBatchOfLocations()I

    move-result v7

    if-gez v7, :cond_1

    .line 977
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    .line 978
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    .line 1092
    :cond_0
    :goto_1
    :pswitch_2
    const/4 v7, 0x1

    goto :goto_0

    .line 980
    :cond_1
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 987
    :pswitch_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v3, "listAllLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5800(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    .line 990
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 991
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 992
    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "num of batch locs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$5900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 994
    monitor-enter p0

    .line 995
    :try_start_0
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$5900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 996
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$5900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 997
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_2
    new-instance v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;

    invoke-direct {v7, p0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1015
    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliveredT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1018
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 1022
    :cond_3
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 1023
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1022
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 997
    .end local v0    # "i":I
    .end local v2    # "j":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1017
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1027
    .restart local v2    # "j":I
    :cond_5
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 1028
    .local v5, "recentLoc":Landroid/location/Location;
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 1029
    .local v4, "loc":Landroid/location/Location;
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    .line 1030
    move-object v5, v4

    goto :goto_4

    .line 1033
    .end local v4    # "loc":Landroid/location/Location;
    :cond_7
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1035
    .end local v5    # "recentLoc":Landroid/location/Location;
    .local v6, "recentLoc":Landroid/location/Location;
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1038
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocUpdate(Landroid/location/Location;)V

    .line 1039
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocListUpdate(Ljava/util/ArrayList;)V

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    .line 1041
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1042
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1043
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6000(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1045
    :cond_8
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1055
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "j":I
    .end local v3    # "listAllLoc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    .end local v6    # "recentLoc":Landroid/location/Location;
    :pswitch_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    .line 1058
    :pswitch_5
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    invoke-virtual {v7}, Lcom/samsung/location/SLocationManager;->requestBatchOfLocations()I

    move-result v7

    if-gez v7, :cond_9

    .line 1059
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6200(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1061
    :cond_9
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    .line 1062
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    .line 1063
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    goto/16 :goto_1

    .line 1068
    :pswitch_6
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mListener:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    .line 1069
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 1070
    iget-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1071
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1073
    :cond_a
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$900(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6500(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1076
    :cond_b
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$700(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v8

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6600(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1082
    :pswitch_7
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->sLm:Lcom/samsung/location/SLocationManager;

    iget v8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mBatchListener:Lcom/samsung/location/SLocationListener;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/location/SLocationManager;->stopBatching(ILcom/samsung/location/SLocationListener;)I

    move-result v7

    if-gez v7, :cond_c

    .line 1083
    const-string v7, "LppLocationManager"

    const-string v8, "stop batching failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_c
    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v7

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V
    invoke-static {v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2400(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    goto/16 :goto_1

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
