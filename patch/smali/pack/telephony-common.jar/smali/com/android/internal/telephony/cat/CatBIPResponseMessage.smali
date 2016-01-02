.class public Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
.super Ljava/lang/Object;
.source "CatBIPResponseMessage.java"


# instance fields
.field AdditionalInfo:I

.field data:Lcom/android/internal/telephony/cat/ResponseData;

.field hasAdditionalInfo:Z

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field resCode:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p1, "cmd"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "r"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "AddInfoPresent"    # Z
    .param p4, "AddInfo"    # I
    .param p5, "d"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 47
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 49
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 52
    return-void
.end method
