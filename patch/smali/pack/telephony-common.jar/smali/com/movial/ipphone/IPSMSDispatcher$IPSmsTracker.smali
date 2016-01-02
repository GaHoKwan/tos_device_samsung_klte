.class Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
.super Ljava/lang/Object;
.source "IPSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IPSmsTracker"
.end annotation


# instance fields
.field public Serial:I

.field private mSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field private mSwitcher:Landroid/os/Message;

.field final synthetic this$0:Lcom/movial/ipphone/IPSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPSMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/os/Message;I)V
    .locals 0
    .param p2, "smsTracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p3, "switcher"    # Landroid/os/Message;
    .param p4, "serial"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->this$0:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 119
    iput p4, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    .line 120
    iput-object p3, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSwitcher:Landroid/os/Message;

    .line 121
    return-void
.end method


# virtual methods
.method send(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSwitcher:Landroid/os/Message;

    iget-object v3, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    const-string v2, "IPSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serial = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p1, :cond_0

    .line 130
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    const-string v3, "test PDU"

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 131
    .local v1, "response":Lcom/android/internal/telephony/SmsResponse;
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 137
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    :goto_0
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSwitcher:Landroid/os/Message;

    invoke-static {v2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 138
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->mSwitcher:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void

    .line 134
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "response":Lcom/android/internal/telephony/SmsResponse;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p0, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    const-string v3, "test PDU"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 135
    .restart local v1    # "response":Lcom/android/internal/telephony/SmsResponse;
    const/4 v0, 0x0

    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method
