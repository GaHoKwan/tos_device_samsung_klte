.class public Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.super Ljava/lang/Thread;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;,
        Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;
    }
.end annotation


# static fields
.field private static final PASSIVE_LOC_COLL_FREQ:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "LppFusion"

.field static final vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;


# instance fields
.field LogFromAPDR:Ljava/lang/String;

.field LogFromLocM:Ljava/lang/String;

.field private apdrStepNumber:J

.field flagGPSAlwaysOn:Z

.field private final locReqType:J

.field private locRequestInterval:J

.field private final lppQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfg:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

.field private final mLMLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;

.field private final mLPPAloLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

.field private final mListGPSPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

.field private final mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

.field private final mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

.field private final mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

.field private mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

.field strAlgo:Ljava/lang/String;

.field strLM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    sput-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->vals:[Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    .line 22
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    .line 23
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    .line 28
    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 31
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    .line 34
    const-string v0, "\n<<LPosition>>\n\n"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    .line 35
    const-string v0, "\n<<LoManager>>\n\n"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    .line 38
    const-string v0, "0   0   0   0   0   0"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->LogFromAPDR:Ljava/lang/String;

    .line 39
    const-string v0, "0   0   0   0"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->LogFromLocM:Ljava/lang/String;

    .line 43
    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->locReqType:J

    .line 44
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 45
    const-wide/16 v0, 0x2d

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    .line 62
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    .line 600
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;

    invoke-direct {v0, p0, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;

    .line 689
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-direct {v0, p0, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    .line 122
    const-string v0, "LppFusion"

    const-string v1, "LppFusion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->init(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V

    .line 128
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->init(Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;)V

    .line 132
    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 133
    iget v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    .line 135
    iget-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    .line 141
    :goto_0
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mCfg:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    .line 142
    return-void

    .line 138
    :cond_0
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mCfg:Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LocManListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 1
    .param p1, "msgid"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method private addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 4
    .param p1, "msgid"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    invoke-direct {v2, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 565
    .local v0, "res":Z
    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 566
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ, array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 575
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->interrupt()V

    .line 577
    :cond_1
    return-void
.end method

.method private apdrlogData(CLjava/lang/String;)V
    .locals 1
    .param p1, "type"    # C
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 775
    return-void
.end method

.method private threadSleep()V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    const-string v1, "LppFusion"

    const-string v2, "Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->sleep(J)V

    .line 215
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep! 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLppFusionStatus()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method private updateLppFusionStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 767
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 769
    return-void
.end method

.method private waitOnQ()V
    .locals 9

    .prologue
    .line 455
    const/4 v3, 0x1

    .line 456
    .local v3, "polling":Z
    const/4 v4, 0x0

    .line 458
    .local v4, "qdata":Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;
    :goto_0
    if-eqz v3, :cond_0

    .line 461
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :try_start_1
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    move-object v4, v0

    .line 463
    const-string v5, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in Q:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v5, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$android$hardware$contextaware$aggregator$lpp$LppFusion$QMsg:[I

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 536
    const-string v5, "LppFusion"

    const-string v6, "unspecified msg id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_1
    :pswitch_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "LppFusion"

    const-string v6, "IE in q"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 548
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v5, "LppFusion"

    const-string v6, "polling stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 468
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->threadSleep()V

    goto :goto_1

    .line 479
    :pswitch_2
    const/4 v3, 0x0

    .line 480
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    goto :goto_1

    .line 484
    :pswitch_3
    const-string v5, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size of APDR data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v2, 0x0

    .local v2, "inx":I
    :goto_2
    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 488
    const-string v6, "LppFusion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location request MovingStatus "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v5, v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 496
    add-int/lit8 v5, v2, 0x1

    int-to-long v5, v5

    iget-wide v7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v5, v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 499
    :cond_1
    const-string v5, "LppFusion"

    const-string v6, "Location request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v5, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v5, v5, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v6, v7, v5}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(II)V

    .line 507
    :cond_2
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverAPDRData(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 487
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 511
    .end local v2    # "inx":I
    :pswitch_4
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 516
    :pswitch_5
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 521
    :pswitch_6
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 526
    :pswitch_7
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 531
    :pswitch_8
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public Debug_LogString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public getLogHandle()Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method public notifyApdrData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "apdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    const-string v1, "LppFusion"

    const-string v2, "notifyApdrData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 583
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v3, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDR data from sensor Hub - moving status : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v1, v1, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method public notifyStayArea(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 594
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    .line 597
    :cond_0
    return-void
.end method

.method public pauseLPP()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "LppFusion"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, pause()"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public registerListener(Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;)V
    .locals 1
    .param p1, "lnr"    # Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    .line 186
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->setILppDataProviderListener(Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;)V

    .line 188
    return-void
.end method

.method public resumeLPP()V
    .locals 3

    .prologue
    .line 174
    const-string v0, "LppFusion"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, resume()"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 180
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "LppFusion"

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "LPPThread"

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->setName(Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const-string v1, "LppFusion"

    invoke-direct {v0, p0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 151
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-virtual {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->start()V

    .line 152
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v1, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    .line 154
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->waitOnQ()V

    .line 155
    return-void
.end method

.method public setLppResolution(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLppLm:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;->setLppResolution(I)V

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set property command from APP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->Debug_LogString(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public stopLpp()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "LppFusion"

    const-string v1, "LPP stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->addQ(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    .line 162
    return-void
.end method
