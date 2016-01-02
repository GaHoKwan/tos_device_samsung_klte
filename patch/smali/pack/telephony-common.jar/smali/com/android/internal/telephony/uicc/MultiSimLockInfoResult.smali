.class public Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;
.super Lcom/android/internal/telephony/uicc/SimLockInfoResult;
.source "MultiSimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "MultiSimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field public static final PIN:I = 0x1

.field public static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field public static final PUK:I = 0x2

.field public static final PUK2:I = 0x4

.field static Pin2_Retry:[I

.field static Pin_Retry:[I

.field static Puk2_Retry:[I

.field static Puk_Retry:[I

.field static isPermBlocked:[I

.field static lockKey:[I

.field static lockPin2Key:[I

.field static lockPinKey:[I

.field static lockType:[I

.field static numRetry:[I

.field static num_lock_type:[I

.field static simSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:[I

    .line 47
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:[I

    .line 48
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:[I

    .line 49
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    .line 50
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    .line 51
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:[I

    .line 52
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    .line 53
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    .line 54
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    .line 55
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    .line 56
    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:[I

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    .line 62
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:[I

    .line 63
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:[I

    .line 64
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:[I

    .line 65
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    .line 66
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    .line 67
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:[I

    .line 68
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    .line 69
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    .line 70
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    .line 71
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    .line 72
    sget v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->simSlotCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:[I

    .line 73
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "simSlot"    # I
    .param p2, "num_lock_type"    # I
    .param p3, "lockType"    # I
    .param p4, "lockKey"    # I
    .param p5, "numRetry"    # I

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    .line 80
    const/4 p1, 0x0

    .line 82
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:[I

    aput p2, v0, p1

    .line 83
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:[I

    aput p3, v0, p1

    .line 84
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:[I

    aput p4, v0, p1

    .line 85
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:[I

    aput p5, v0, p1

    .line 86
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput p5, v0, p1

    .line 146
    :goto_0
    return-void

    .line 92
    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput p5, v0, p1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aput p4, v0, p1

    .line 97
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput p5, v0, p1

    .line 102
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aput p4, v0, p1

    .line 103
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :pswitch_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 109
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput v3, v0, p1

    .line 110
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aput v3, v0, p1

    .line 111
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 112
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aput p4, v0, p1

    .line 120
    :cond_1
    :goto_1
    const-string v0, "MultiSimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    const/16 v0, 0x9

    if-ne p3, v0, :cond_1

    .line 115
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aput v3, v0, p1

    .line 116
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput v3, v0, p1

    .line 117
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    aput p4, v0, p1

    goto :goto_1

    .line 124
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aput p5, v0, p1

    .line 125
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aput p4, v0, p1

    .line 126
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aput p5, v0, p1

    .line 132
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    aput p4, v0, p1

    .line 133
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput p5, v0, p1

    .line 138
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    aput p4, v0, p1

    .line 139
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLockPin2Key(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 285
    const/4 p1, 0x0

    .line 287
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    aget v0, v0, p1

    return v0
.end method

.method public getLockPinKey(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 278
    const/4 p1, 0x0

    .line 280
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 300
    const/4 p1, 0x0

    .line 302
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPinRetry(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 292
    const/4 p1, 0x0

    .line 294
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPuk2Retry(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 316
    const/4 p1, 0x0

    .line 318
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPukRetry(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 308
    const/4 p1, 0x0

    .line 310
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aget v0, v0, p1

    return v0
.end method

.method public isSimBlocked(I)I
    .locals 1
    .param p1, "simSlot"    # I

    .prologue
    .line 325
    const/4 p1, 0x0

    .line 327
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:[I

    aget v0, v0, p1

    return v0
.end method

.method public setLockInfoResult(IIIII)V
    .locals 4
    .param p1, "simSlot"    # I
    .param p2, "Pin_Retry"    # I
    .param p3, "Puk_Retry"    # I
    .param p4, "Pin2_Retry"    # I
    .param p5, "Puk2_Retry"    # I

    .prologue
    const/4 v3, -0x1

    .line 220
    const/4 p1, 0x0

    .line 222
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eq p2, v3, :cond_0

    .line 226
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput p2, v0, p1

    .line 229
    :cond_0
    if-eq p3, v3, :cond_1

    .line 231
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aput p3, v0, p1

    .line 234
    :cond_1
    if-eq p4, v3, :cond_2

    .line 236
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aput p4, v0, p1

    .line 239
    :cond_2
    if-eq p5, v3, :cond_3

    .line 241
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput p5, v0, p1

    .line 243
    :cond_3
    return-void
.end method

.method public setLockInfoResult(IIIIIII)V
    .locals 4
    .param p1, "simSlot"    # I
    .param p2, "Pin_Retry"    # I
    .param p3, "Puk_Retry"    # I
    .param p4, "Pin2_Retry"    # I
    .param p5, "Puk2_Retry"    # I
    .param p6, "lockKey"    # I
    .param p7, "lockKey2"    # I

    .prologue
    const/4 v3, -0x1

    .line 248
    const/4 p1, 0x0

    .line 250
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eq p2, v3, :cond_0

    .line 254
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput p2, v0, p1

    .line 257
    :cond_0
    if-eq p3, v3, :cond_1

    .line 259
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aput p3, v0, p1

    .line 262
    :cond_1
    if-eq p4, v3, :cond_2

    .line 264
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aput p4, v0, p1

    .line 267
    :cond_2
    if-eq p5, v3, :cond_3

    .line 269
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput p5, v0, p1

    .line 271
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    aput p6, v0, p1

    .line 272
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    aput p7, v0, p1

    .line 273
    return-void
.end method

.method setLockInfoResult(ILcom/android/internal/telephony/uicc/SimLockInfoResult;)V
    .locals 4
    .param p1, "simSlot"    # I
    .param p2, "simLockInfoResult"    # Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 p1, 0x0

    .line 153
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->num_lock_type:I

    aput v1, v0, p1

    .line 154
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    aput v1, v0, p1

    .line 155
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 156
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 157
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->num_lock_type:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockType:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockKey:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->numRetry:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 160
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 215
    :goto_0
    return-void

    .line 163
    :cond_0
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 167
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 168
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 173
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 174
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :pswitch_2
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 179
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin_Retry:[I

    aput v3, v0, p1

    .line 180
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    aput v3, v0, p1

    .line 181
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->isPermBlocked:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 182
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 190
    :cond_1
    :goto_1
    const-string v0, "MultiSimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    sget v0, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 185
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    aput v3, v0, p1

    .line 186
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    aput v3, v0, p1

    .line 187
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    goto :goto_1

    .line 193
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 194
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPinKey:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 195
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 200
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 201
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Pin2_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 202
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->Puk2_Retry:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->numRetry:I

    aput v1, v0, p1

    .line 207
    sget-object v0, Lcom/android/internal/telephony/uicc/MultiSimLockInfoResult;->lockPin2Key:[I

    sget v1, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->lockKey:I

    aput v1, v0, p1

    .line 208
    const-string v0, "MultiSimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
