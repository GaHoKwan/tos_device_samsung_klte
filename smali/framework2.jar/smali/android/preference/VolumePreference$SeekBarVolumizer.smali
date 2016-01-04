.class public Landroid/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mOriginalLastAudibleStreamVolume:I

.field private mOriginalMusicStreamVolumeHPH:I

.field private mOriginalNotificationVolume:I

.field private mOriginalRingerMode:I

.field private mOriginalStreamVolume:I

.field private mOriginalSystemVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    .line 378
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 381
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 339
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 340
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 353
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 382
    iput-object p2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 383
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 384
    iput p4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 385
    iput-object p3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 387
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VolumePreference.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 391
    invoke-direct {p0, p3, p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 392
    return-void
.end method

.method static synthetic access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method static synthetic access$500(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 323
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 763
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 764
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 765
    const-string v1, "VolumePreference"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 395
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v6, :cond_6

    .line 396
    const-string v3, "VolumePreference"

    const-string v4, "initSeekBar: waiting tone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 398
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_waiting_tone"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 399
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 401
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    if-nez p2, :cond_0

    .line 406
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_3

    .line 407
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 410
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 411
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 413
    const-string v3, "android.resource://com.android.phone/raw/low_power_ringtone"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 414
    .local v1, "emergencyRingtoneUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 415
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 416
    .local v2, "r":Landroid/media/Ringtone;
    if-eqz v2, :cond_0

    .line 417
    move-object p2, v1

    .line 433
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v1    # "emergencyRingtoneUri":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 434
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_1

    .line 435
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 438
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 439
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 502
    :cond_2
    :goto_1
    return-void

    .line 424
    :cond_3
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v9, :cond_4

    .line 425
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 426
    :cond_4
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v6, :cond_5

    .line 427
    const/4 p2, 0x0

    goto :goto_0

    .line 429
    :cond_5
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 441
    :cond_6
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 442
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CMCC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 445
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBarSetVolume(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    goto :goto_1

    .line 447
    :cond_8
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSeekBar : mStreamType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 450
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 452
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 453
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 454
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 456
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 460
    if-nez p2, :cond_9

    .line 461
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_b

    .line 462
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 465
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 466
    .restart local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 467
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    .line 468
    const-string v3, "android.resource://com.android.phone/raw/low_power_ringtone"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 469
    .restart local v1    # "emergencyRingtoneUri":Landroid/net/Uri;
    if-eqz v1, :cond_9

    .line 470
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 471
    .restart local v2    # "r":Landroid/media/Ringtone;
    if-eqz v2, :cond_9

    .line 472
    move-object p2, v1

    .line 486
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v1    # "emergencyRingtoneUri":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :cond_9
    :goto_2
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 488
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_a

    .line 489
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 492
    :cond_a
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v9, :cond_d

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 493
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    goto/16 :goto_1

    .line 479
    :cond_b
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v9, :cond_c

    .line 480
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_2

    .line 482
    :cond_c
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 494
    :cond_d
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 495
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalSystemVolume:I

    goto/16 :goto_1

    .line 496
    :cond_e
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_2

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto/16 :goto_1
.end method

.method private initSeekBarSetVolume(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 23
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .prologue
    .line 815
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v4}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v4

    if-nez v4, :cond_7

    .line 816
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : seekBar.setMax : mAudioManager.getStreamMaxVolume(mStreamType) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 822
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 823
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 824
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 830
    if-nez p2, :cond_0

    .line 831
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 832
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 840
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 846
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    .line 965
    :cond_2
    :goto_1
    return-void

    .line 833
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 834
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 836
    :cond_4
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 848
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalSystemVolume:I

    goto :goto_1

    .line 850
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    goto :goto_1

    .line 855
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sound_profile_edit_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 857
    .local v19, "editMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sound_profile_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 860
    .local v17, "currentMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 861
    .local v20, "isMusicHPH":Ljava/lang/String;
    const/16 v22, 0x0

    .line 862
    .local v22, "useEarPhone":Z
    const-string v4, "HPH"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 863
    const/16 v22, 0x1

    .line 866
    :cond_8
    const-string v8, "com.android.settings"

    .line 867
    .local v8, "AUTHORITY":Ljava/lang/String;
    const-string/jumbo v16, "profile"

    .line 868
    .local v16, "PROFILE_TABLE":Ljava/lang/String;
    const-string v4, "content://com.android.settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 869
    .local v3, "PROFILE_CONTENT_URI":Landroid/net/Uri;
    const-string/jumbo v14, "profile_ring_volume"

    .line 870
    .local v14, "PROFILE_RING_VOLUME":Ljava/lang/String;
    const-string/jumbo v15, "profile_system_volume"

    .line 871
    .local v15, "PROFILE_SYSTEM_VOLUME":Ljava/lang/String;
    const-string/jumbo v10, "profile_music_volume"

    .line 872
    .local v10, "PROFILE_MUSIC_VOLUME":Ljava/lang/String;
    const-string/jumbo v12, "profile_notification_volume"

    .line 873
    .local v12, "PROFILE_NOTIFICATION_VOLUME":Ljava/lang/String;
    const-string/jumbo v9, "profile_hph_music_volume"

    .line 874
    .local v9, "PROFILE_HPH_MUSIC_VOLUME":Ljava/lang/String;
    const-string/jumbo v13, "profile_ringtone"

    .line 875
    .local v13, "PROFILE_RINGTONE":Ljava/lang/String;
    const-string/jumbo v11, "profile_notification_tone"

    .line 877
    .local v11, "PROFILE_NOTIFICATION_TONE":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 878
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 879
    .local v18, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    .line 883
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 884
    const-string/jumbo v4, "profile_ring_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 885
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 894
    :cond_9
    :goto_2
    const-string/jumbo v4, "profile_hph_music_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalMusicStreamVolumeHPH:I

    .line 896
    const-string v4, "VolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSeekBar : mStreamType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  volume :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 908
    :cond_a
    :goto_3
    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    .line 909
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalMusicStreamVolumeHPH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 913
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 914
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 922
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    packed-switch v4, :pswitch_data_0

    .line 959
    :cond_b
    :goto_5
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    goto/16 :goto_1

    .line 886
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 887
    const-string/jumbo v4, "profile_system_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 888
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 889
    const-string/jumbo v4, "profile_music_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 890
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 891
    const-string/jumbo v4, "profile_notification_volume"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    goto/16 :goto_2

    .line 900
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3

    .line 902
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_11

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3

    .line 904
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_3

    .line 911
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_4

    .line 924
    :pswitch_1
    const-string/jumbo v4, "profile_ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 925
    .local v21, "ringtoneName":Ljava/lang/String;
    if-eqz v21, :cond_13

    .line 926
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 930
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 928
    :cond_13
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_6

    .line 937
    .end local v21    # "ringtoneName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "profile_notification_tone"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 938
    .restart local v21    # "ringtoneName":Ljava/lang/String;
    if-eqz v21, :cond_14

    .line 939
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 943
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 941
    :cond_14
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_7

    .line 950
    .end local v21    # "ringtoneName":Ljava/lang/String;
    :pswitch_3
    if-eqz p2, :cond_b

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto/16 :goto_5

    .line 922
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onStartSample()V
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 538
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 539
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 540
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 543
    :cond_0
    return-void
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 556
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 530
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    return-void

    .line 531
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 547
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 693
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 699
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 779
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 780
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 781
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    .line 782
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 783
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 513
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 524
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 515
    :pswitch_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 521
    :pswitch_2
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 786
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 787
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 788
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 789
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    .line 790
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 797
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 793
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 794
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    .line 795
    invoke-virtual {p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 968
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onKeyDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    packed-switch p1, :pswitch_data_0

    .line 986
    :cond_0
    :goto_0
    return v3

    .line 972
    :pswitch_0
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    goto :goto_0

    .line 977
    :pswitch_1
    const-string v0, "VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    goto :goto_0

    .line 969
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 601
    if-nez p3, :cond_0

    .line 688
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-nez v3, :cond_4

    .line 606
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_3

    .line 607
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CMCC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    :cond_1
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 611
    if-ge p2, v6, :cond_2

    .line 612
    const/4 p2, 0x1

    .line 616
    :cond_2
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 618
    :cond_3
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 621
    :cond_4
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopToneGenerator()V

    .line 623
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v8, :cond_7

    .line 624
    const-string v3, "CTC"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "CMCC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 627
    :cond_5
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 628
    if-ge p2, v6, :cond_6

    .line 629
    const/4 p2, 0x1

    .line 635
    :cond_6
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v8, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 636
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->setSeekBarVolume(I)V

    goto/16 :goto_0

    .line 637
    :cond_7
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v7, :cond_a

    .line 638
    if-nez p2, :cond_8

    .line 639
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v5, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 640
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 646
    :goto_1
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0

    .line 641
    :cond_8
    if-eqz p2, :cond_9

    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 642
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 644
    :cond_9
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 647
    :cond_a
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v6, :cond_e

    .line 648
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v3, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 649
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 651
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 653
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 655
    :cond_b
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v3, "VolumePreference"

    const-string v4, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_2
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    :cond_c
    :try_start_1
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # invokes: Landroid/preference/VolumePreference;->requestAudioFocus()Z
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$900(Landroid/preference/VolumePreference;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 661
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xa

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 662
    const-string v3, "VolumePreference"

    const-string/jumbo v4, "sample : playSoundEffect()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "VolumePreference"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 664
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_d
    :try_start_2
    const-string v3, "VolumePreference"

    const-string v4, "fail to request Audio Focus"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 671
    .end local v1    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_10

    .line 672
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volume_waiting_tone"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_f

    .line 677
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 679
    :cond_f
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    add-int/lit8 v5, p2, -0x2

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v2, v3

    .line 680
    .local v2, "volFloat":F
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, "situation=15;device=0"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 681
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x16

    const/16 v5, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto/16 :goto_0

    .line 682
    .end local v2    # "volFloat":F
    :cond_10
    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v3, v9, :cond_11

    .line 683
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v9, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 684
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0

    .line 686
    :cond_11
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 807
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 808
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 809
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 810
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 812
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 800
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 801
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 802
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 804
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 710
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x1

    .line 713
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    .line 715
    const-string v0, "CTC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CMCC"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mDisplayType:I
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$200(Landroid/preference/VolumePreference;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 719
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 720
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ge v0, v2, :cond_1

    .line 721
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 722
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 727
    :cond_1
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 703
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 704
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/16 v4, 0x200

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 574
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastWaitingToneVolume:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    :goto_0
    return-void

    .line 576
    :cond_0
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # getter for: Landroid/preference/VolumePreference;->mVoiceCapable:Z
    invoke-static {v0}, Landroid/preference/VolumePreference;->access$800(Landroid/preference/VolumePreference;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_2

    .line 578
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 581
    :cond_1
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 585
    :cond_3
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 588
    :cond_4
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v2, :cond_6

    .line 589
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    .line 590
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 592
    :cond_5
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 594
    :cond_6
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method public setSeekBarVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 506
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 507
    invoke-virtual {p0, p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 508
    return-void
.end method

.method public startSample()V
    .locals 5

    .prologue
    .line 734
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 735
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 737
    :try_start_0
    const-string v2, "VolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v2, "VolumePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffhook : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    :cond_0
    const-string v2, "VolumePreference"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "VolumePreference"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStartSample()V

    .line 748
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_1

    .line 749
    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 752
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    # invokes: Landroid/preference/VolumePreference;->requestAudioFocus()Z
    invoke-static {v2}, Landroid/preference/VolumePreference;->access$900(Landroid/preference/VolumePreference;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 754
    const-string v2, "VolumePreference"

    const-string/jumbo v3, "sample : mRingtone.play()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :cond_3
    const-string v2, "VolumePreference"

    const-string v3, "fail to request Audio Focus"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    .line 560
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopToneGenerator()V

    .line 563
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 565
    iput-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 569
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 570
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V

    .line 571
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V

    .line 772
    return-void
.end method
