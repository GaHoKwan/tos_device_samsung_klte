.class Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;
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
    name = "EfOcsglLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    const-string v0, "EF_OCSGL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x81

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 690
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 691
    .local v3, "ocsglList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 693
    .local v0, "csgIdCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 694
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 695
    .local v1, "data":[B
    const/4 v4, 0x0

    .line 696
    .local v4, "skipLen":I
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 697
    aget-byte v5, v1, v8

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v9, :cond_1

    .line 698
    const/4 v5, 0x4

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v4, v5, 0x80

    .line 699
    add-int/lit8 v4, v4, 0x3

    .line 705
    :goto_1
    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v9, :cond_0

    .line 706
    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    if-le v5, v7, :cond_0

    .line 707
    add-int/lit8 v0, v0, 0x1

    .line 693
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    :cond_1
    aget-byte v5, v1, v8

    and-int/lit16 v4, v5, 0xff

    .line 702
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 713
    .end local v1    # "data":[B
    .end local v4    # "skipLen":I
    :cond_2
    if-lez v0, :cond_3

    .line 714
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    .line 719
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_OCSGL record count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 720
    return-void

    .line 716
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    goto :goto_2
.end method
