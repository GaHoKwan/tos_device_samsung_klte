.class final Lcom/android/server/ConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    # ++operator for: Lcom/android/server/ConnectivityService;->mRouteIdCtr:I
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$004(Lcom/android/server/ConnectivityService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 634
    return-void
.end method


# virtual methods
.method public getMetric()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    return v0
.end method

.method public getTableId()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->tableId:I

    return v0
.end method

.method public setMetric(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->metric:I

    .line 646
    return-void
.end method
