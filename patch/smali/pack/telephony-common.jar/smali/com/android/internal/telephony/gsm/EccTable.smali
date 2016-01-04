.class public final Lcom/android/internal/telephony/gsm/EccTable;
.super Ljava/lang/Object;
.source "EccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    }
.end annotation


# static fields
.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclists.dat"

.field private static final LOCAL_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field static updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 77
    sput-boolean v2, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z

    .line 602
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    .line 633
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "LYS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MRT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 636
    .local v0, "isLYSMIDMRT":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, ""

    const-string v5, "08,112,911"

    const-string v6, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "450"

    const-string v5, "112,911,119"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "234"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "235"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "272"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "204"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "724"

    const-string v5, "112,911,190"

    const-string v6, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "33402"

    const-string v5, "112,911,060"

    const-string v6, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "334020"

    const-string v5, "112,911,060"

    const-string v6, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "33403"

    const-string v5, "112,911,066"

    const-string v6, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "334050"

    const-string v5, "112,911,066"

    const-string v6, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "33405"

    const-string v5, "112,911,066"

    const-string v6, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "334090"

    const-string v5, "112,911,066"

    const-string v6, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "33409"

    const-string v5, "112,911,066"

    const-string v6, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "748"

    const-string v5, "112,911,104,109"

    const-string v6, "112,911,999,000,08,110,118,119,104,109"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "732101"

    const-string v5, "112,911"

    const-string v6, "112,911"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "732123"

    const-string v5, "112,123"

    const-string v6, "112,123"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73212"

    const-string v5, "112,123"

    const-string v6, "112,123"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "732103"

    const-string v5, "112,123"

    const-string v6, "112,123"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "732111"

    const-string v5, "112,123"

    const-string v6, "112,123"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "730"

    const-string v5, "112,911,133"

    const-string v6, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "736"

    const-string v5, "112,911,110"

    const-string v6, "112,911,999,000,08,110,118,119,110"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "71606"

    const-string v5, "112,911,105"

    const-string v6, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73406"

    const-string v5, "112,911,*1,*171,171"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73401"

    const-string v5, "112,911,171"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73402"

    const-string v5, "112,911,171"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73403"

    const-string v5, "112,911,171"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "73404"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "70403"

    const-string v5, "112,911,122"

    const-string v6, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "70604"

    const-string v5, "112,911,122"

    const-string v6, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "71030"

    const-string v5, "112,911,122"

    const-string v6, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "710300"

    const-string v5, "112,911,122"

    const-string v6, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "71401"

    const-string v5, "112,911,104"

    const-string v6, "112,911,999,000,08,110,118,119,104"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310026"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310160"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310170"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310200"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310210"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310220"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310230"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310240"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310250"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310260"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310270"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310280"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310290"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310310"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310330"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310490"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310580"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310660"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310800"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310026"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "310026"

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "454"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "505"

    const-string v5, "112,911,000"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "530"

    const-string v5, "112,911,000,111"

    const-string v6, "112,911,999,000,08,110,118,119,111"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "460"

    const-string v5, "112,911,999,000,08,110,118,119,120,122"

    const-string v6, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "466"

    const-string v5, "112,911,110,119"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "440"

    const-string v5, "112,911,110,118,119"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "441"

    const-string v5, "112,911,110,118,119"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "424"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "430"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "431"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "434"

    const-string v5, "112,911,1050"

    const-string v6, "112,911,999,000,08,110,118,119,1050"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "42501"

    const-string v5, "112,911,100"

    const-string v6, "112,911,100"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "42502"

    const-string v5, "112,911"

    const-string v6, "112,911"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "42503"

    const-string v5, "112,911,100"

    const-string v6, "112,911,100"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "42505"

    const-string v5, "112,911,08"

    const-string v6, "112,911"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "42506"

    const-string v5, "112,911,08"

    const-string v6, "112,911"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "416"

    const-string v5, "112,911,08"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "415"

    const-string v5, "112,911,08"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "418"

    const-string v5, "112,911,08"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "502"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "609"

    const-string v5, "112,911,08"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "606"

    const-string v5, "112,911,08"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, "620"

    const-string v5, "112,911,999"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1104
    return-void

    .line 639
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v4, ""

    const-string v5, "112,911"

    const-string v6, "112,911,999,000,08,110,118,119"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "withSIM"    # Z

    .prologue
    .line 197
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccTable;->entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    move-result-object v0

    .line 201
    .local v0, "entry":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    if-nez v0, :cond_0

    .line 203
    const-string v1, ""

    .line 213
    :goto_0
    return-object v1

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    goto :goto_0
.end method

.method private static entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x0

    .line 135
    .local v0, "index":I
    if-eqz p0, :cond_1

    .line 137
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v1, p0, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 145
    if-gez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 149
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .restart local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 159
    :cond_0
    if-gez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 171
    .end local v1    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    return-object v2
.end method

.method public static printEccTable()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public static declared-synchronized updateEccTable(Ljava/lang/String;)V
    .locals 14
    .param p0, "customerSpec"    # Ljava/lang/String;

    .prologue
    .line 366
    const-class v10, Lcom/android/internal/telephony/gsm/EccTable;

    monitor-enter v10

    const/4 v6, 0x0

    .line 368
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 370
    .local v8, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 372
    .local v5, "plmn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 374
    .local v2, "emergencyNumberWithSIM":Ljava/lang/String;
    const/4 v3, 0x0

    .line 382
    .local v3, "emergencyNumberWithoutSIM":Ljava/lang/String;
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_0

    if-nez p0, :cond_2

    .line 542
    :cond_0
    if-eqz v6, :cond_1

    .line 544
    :try_start_1
    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :cond_1
    :goto_0
    monitor-exit v10

    return-void

    .line 396
    :cond_2
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    if-nez v7, :cond_4

    .line 542
    if-eqz v7, :cond_3

    .line 544
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_1
    move-object v6, v7

    .line 400
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 406
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_4
    const-string v9, "\n"

    const/4 v11, 0x3

    invoke-virtual {p0, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "conventionalSpec":[Ljava/lang/String;
    array-length v9, v0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    .line 412
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 414
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 416
    const-string v9, ""

    invoke-static {v9, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    :cond_5
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 542
    if-eqz v7, :cond_6

    .line 544
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    :goto_2
    move-object v6, v7

    .line 556
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 422
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 424
    const/4 v2, 0x0

    .line 426
    const/4 v3, 0x0

    .line 432
    move-object v5, v8

    .line 446
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 448
    if-eqz v8, :cond_8

    .line 452
    move-object v2, v8

    .line 468
    :cond_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 470
    if-eqz v8, :cond_9

    .line 474
    move-object v3, v8

    .line 488
    :cond_9
    invoke-static {v5, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 510
    .end local v0    # "conventionalSpec":[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v6, v7

    .line 542
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v6, :cond_1

    .line 544
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 548
    :catch_1
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    monitor-exit v10

    throw v9

    .line 524
    :catch_2
    move-exception v4

    .line 528
    .local v4, "ioe":Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 542
    if-eqz v6, :cond_1

    .line 544
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 548
    :catch_3
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 538
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 542
    :goto_7
    if-eqz v6, :cond_a

    .line 544
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 538
    :cond_a
    :goto_8
    :try_start_d
    throw v9

    .line 548
    :catch_4
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateEccTable() Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 548
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "conventionalSpec":[Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_2

    .line 538
    .end local v0    # "conventionalSpec":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 524
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 510
    :catch_9
    move-exception v9

    goto/16 :goto_4
.end method

.method public static updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "emergencyNumberWithSIM"    # Ljava/lang/String;
    .param p2, "emergencyNumberWithoutSIM"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 237
    if-nez p0, :cond_0

    move v4, v5

    .line 351
    :goto_0
    return v4

    .line 243
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v2, p0, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v2, "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 249
    .local v3, "updateIndex":I
    const/4 v0, 0x0

    .line 251
    .local v0, "defaultIndex":I
    if-lez v3, :cond_3

    .line 253
    move v0, v3

    .line 271
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p1, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 285
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 287
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p2, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 315
    :goto_3
    if-gez v3, :cond_7

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    move v4, v5

    .line 319
    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 257
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v2    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .restart local v2    # "m":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 263
    if-gez v0, :cond_1

    .line 265
    const/4 v0, 0x0

    goto :goto_1

    .line 279
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 293
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 323
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 351
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 331
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .line 335
    .local v1, "entry":Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 337
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 339
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 341
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 345
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
