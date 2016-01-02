.class public Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMAS_AMBER:I = 0x1003

.field public static final CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final CMAS_CATEGORY_ENV:I = 0x7

.field public static final CMAS_CATEGORY_FIRE:I = 0x5

.field public static final CMAS_CATEGORY_GEO:I = 0x0

.field public static final CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final CMAS_CATEGORY_INFRA:I = 0x9

.field public static final CMAS_CATEGORY_MET:I = 0x1

.field public static final CMAS_CATEGORY_OTHER:I = 0xb

.field public static final CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final CMAS_SERVICE_EXTREME_THREAT_LIFE_PROPERTY:I = 0x1001

.field public static final CMAS_SERVICE_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final CMAS_SERVICE_SEVERE_THREAT_LIFE_PROPERTY:I = 0x1002

.field public static final CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final CMAS_TEST_MESSAGE:I = 0x1004

.field public static final CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EUALERT_CLASS_EU_INFO:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SmsCbCmasInfo"


# instance fields
.field private mAlertHandling:I

.field private mCategory:I

.field private mCertainty:I

.field private mLanguage:I

.field private final mMessageClass:I

.field private mMessageID:I

.field private mMsgExpires:J

.field private mRecordType:I

.field private mResponseType:I

.field private mSeverity:I

.field private mUrgency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 445
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 239
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 240
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 241
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 242
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 243
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 244
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "recordTypeAll"    # I

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 249
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 250
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 251
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 252
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 253
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 254
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 255
    return-void
.end method

.method public constructor <init>(IIIIIIIIJII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "messageID"    # I
    .param p8, "alertHandling"    # I
    .param p9, "msgExpires"    # J
    .param p11, "language"    # I
    .param p12, "recordTypeAll"    # I

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 269
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 270
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 271
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 272
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 273
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 274
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 275
    iput p8, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 276
    iput-wide p9, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 277
    iput p11, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 278
    iput p12, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 279
    return-void
.end method

.method public constructor <init>(IIIJII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "messageID"    # I
    .param p3, "alertHandling"    # I
    .param p4, "msgExpires"    # J
    .param p6, "language"    # I
    .param p7, "recordTypeAll"    # I

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 259
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 260
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 261
    iput-wide p4, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 262
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 263
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 264
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 296
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getAlertHandling()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    return v0
.end method

.method public getCMASRecordTypeFirstExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 400
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeSecondExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 408
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeThirdExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 416
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeZeroExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    :try_start_0
    iget v3, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    .line 394
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 392
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    move v1, v2

    .line 394
    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    return v0
.end method

.method public getMessageClass()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    return v0
.end method

.method public getMsgExpires()J
    .locals 3

    .prologue
    .line 379
    :try_start_0
    iget-wide v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-wide v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SmsCbCmasInfo"

    const-string v2, "Null pointer exception in getMsgExpires"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getResponseType()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbCmasInfo{messageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alertHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMsgExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 306
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return-void
.end method
