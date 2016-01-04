.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_CS_FALLBACK:I = 0xce

.field protected static final EVENT_DEFLECT_RESULT:I = 0x65

.field protected static final EVENT_DELAY_DIAL_PENDING_CALL:I = 0xcd

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANGUP_FG_RESUME_BG_RESULT:I = 0xcc

.field protected static final EVENT_IMS_CALL_STATE_CHANGE:I = 0xc9

.field protected static final EVENT_IMS_NEW_RINGING_CALL:I = 0xca

.field protected static final EVENT_MODIFY_CALL:I = 0xcb

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field protected static final EVENT_VOICE_SYSTEM_ID:I = 0x12c

.field static final POLL_DELAY_MSEC:I = 0xfa


# instance fields
.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

.field protected mIsDisposed:Z

.field protected mLastRelevantPoll:Landroid/os/Message;

.field protected mNeedsPoll:Z

.field protected mPendingOperations:I

.field mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field protected mSkipDisableDataConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mSkipDisableDataConnection:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mIsDisposed:Z

    .line 98
    iput-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 102
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 103
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 104
    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addNumberOfCalls(Z)V
    .locals 1
    .param p1, "isIncoming"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-eqz v0, :cond_0

    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    goto :goto_0
.end method

.method protected checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 203
    const-string v2, "ril.test.emergencynumber"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "testEn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForTestEmergencyNumber: values.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 211
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 212
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForTestEmergencyNumber: remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 217
    aget-object p1, v1, v4

    .line 221
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "CallTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastRelevantPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method protected getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 237
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 238
    const/16 v1, 0xa

    .line 246
    :goto_0
    return v1

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    const-string v1, "getCallType(): callDetails is null. default to CALL_TYPE_VOICE."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 153
    return-void
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J
    .param p5, "duration"    # J
    .param p7, "isIncoming"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/DeviceInventory;->addCallsCount(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {v0}, Landroid/sec/enterprise/DeviceInventory;->isCallingCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v4, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/DeviceInventory;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    :cond_0
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->modifyCallConfirm(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V

    .line 227
    return-void
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 167
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 132
    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method
