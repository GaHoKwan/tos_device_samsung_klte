.class Lcom/android/internal/telephony/uicc/SIMRecords$EfIsimImpiLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimImpiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    const-string v0, "EF_ISIM_IMPI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHasIsim:Z

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfIsimImpiLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v1, "EF_IMPI read"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 731
    return-void
.end method
