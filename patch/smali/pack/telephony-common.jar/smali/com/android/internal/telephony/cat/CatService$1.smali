.class Lcom/android/internal/telephony/cat/CatService$1;
.super Ljava/lang/Object;
.source "CatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    .line 3421
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3423
    # getter for: Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->access$000()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->refreshUiccVer()V

    .line 3424
    return-void
.end method
