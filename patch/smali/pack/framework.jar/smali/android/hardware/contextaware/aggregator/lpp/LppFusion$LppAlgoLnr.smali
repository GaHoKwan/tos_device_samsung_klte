.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppAlgoLnr"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
    .param p2, "x1"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$1;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public logData(ILjava/lang/String;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 703
    return-void
.end method

.method public onUpdate(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 694
    const-string v0, "LppFusion"

    const-string v1, "LppAlgoLnr: onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-void
.end method

.method public onUpdateLPPtraj(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "listLppLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/LppLocation;>;"
    const-string v2, "LppFusion"

    const-string v3, "onUpdateLPPtraj"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 719
    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    .line 721
    .local v1, "l":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    .end local v1    # "l":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListener:Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$1400(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/ILppDataProvider;->lppUpdate(Ljava/util/ArrayList;)V

    .line 729
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->AddCoordinate(Ljava/util/ArrayList;)V

    .line 730
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mLogManager:Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/log/LppLogManager;->AddGPSCoordinate(Ljava/util/ArrayList;)V

    .line 742
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$500(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 743
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # getter for: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 744
    return-void
.end method

.method public requestLoc()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppFusion;

    # invokes: Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppFusion;->access$2600(Landroid/hardware/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    .line 708
    return-void
.end method
