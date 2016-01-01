.class public Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;
.super Ljava/lang/Object;
.source "WfcSupplimentaryServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USSD_RESPONSE_FAIL:I = 0x0

.field private static final USSD_RESPONSE_SUCCESS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mSSPendingCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper$1;-><init>(Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public registerListener()V
    .locals 3

    .prologue
    .line 53
    sget-object v1, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v1, :cond_0

    .line 56
    sget-object v1, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "mImsInterfaceForVoLTE is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mIMSCallSessionListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    sget-object v1, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 132
    sget-object v3, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSS  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "sessionId":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imscommon/IMSUtility;->packToGsm7bit([BI)[B

    move-result-object v2

    .line 136
    .local v2, "ussd":[B
    iget-object v3, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v3, :cond_1

    .line 137
    sget-object v3, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v4, "mImsInterfaceForVoLTE is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v7, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 140
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mImsInterfaceForVoLTE:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    const/4 v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->sendUSSD(III[B)I

    move-result v1

    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    sget-object v3, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v4, "startSS failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v7, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 154
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    return-void
.end method
