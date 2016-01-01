.class Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;
.super Ljava/lang/Object;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QData"
.end annotation


# instance fields
.field private listAPDR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field private listLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Landroid/location/Location;

.field private msgid:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
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
    .line 91
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    .line 95
    if-nez p2, :cond_1

    .line 118
    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v3, :cond_2

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    .line 102
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .line 103
    .local v0, "apdrdata":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    new-instance v4, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v4, v0}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v0    # "apdrdata":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v3, :cond_3

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v3, :cond_3

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v3, :cond_4

    .line 109
    :cond_3
    new-instance v3, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-direct {v3, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    goto :goto_0

    .line 110
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v3, :cond_5

    sget-object v3, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v3, :cond_0

    .line 113
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    .line 114
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 115
    .local v2, "l":Landroid/location/Location;
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic access$2000(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    return-object v0
.end method
