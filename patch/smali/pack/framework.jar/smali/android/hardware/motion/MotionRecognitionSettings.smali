.class public abstract Landroid/hardware/motion/MotionRecognitionSettings;
.super Ljava/lang/Object;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field public static final CONFIG_READ_SETTINGS:Z = true

.field public static final PANNING_ICON:I = 0x1

.field public static final PANNING_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field mCurrentEnabledMotions:I

.field mCurrentMotionSettings:I

.field private final mLock:Ljava/lang/Object;

.field private mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

.field private mRegisteredMotions:I

.field private mRegisteredMotionsforOpen:I

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 54
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    .line 57
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 58
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 63
    new-instance v0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-direct {v0, p0, p2}, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;-><init>(Landroid/hardware/motion/MotionRecognitionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    .line 65
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_shake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_merged_mute_pause"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_zooming"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pan_to_browse_image"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_panning"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_double_tap"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_peek_view_albums_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "motion_peek_chapter_preview"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "master_arc_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "master_side_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mMotionSettingsObserver:Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    .line 116
    return-void
.end method

.method private getregisteredMotionforEvents(I)I
    .locals 2
    .param p1, "motion"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "panningEvent":Z
    const/4 v1, 0x0

    .line 376
    .local v1, "registeredEvents":I
    sparse-switch p1, :sswitch_data_0

    .line 418
    :goto_0
    if-eqz v0, :cond_0

    .line 419
    const v1, 0x80060

    .line 423
    :cond_0
    return v1

    .line 377
    :sswitch_0
    const/16 v1, 0x8

    goto :goto_0

    .line 378
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 381
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :sswitch_4
    const/16 v1, 0x10

    goto :goto_0

    .line 383
    :sswitch_5
    const/4 v1, 0x4

    goto :goto_0

    .line 384
    :sswitch_6
    const v1, 0x8000

    goto :goto_0

    .line 387
    :sswitch_7
    const/16 v1, 0x400

    goto :goto_0

    .line 403
    :sswitch_8
    const/16 v1, 0x5810

    .line 405
    goto :goto_0

    .line 413
    :sswitch_9
    const/high16 v1, 0x80000

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x3d -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_7
        0x48 -> :sswitch_4
        0x4e -> :sswitch_8
        0x4f -> :sswitch_8
        0x50 -> :sswitch_8
        0x51 -> :sswitch_8
        0x52 -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x55 -> :sswitch_8
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5d -> :sswitch_8
        0x62 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
        0x6a -> :sswitch_9
        0x6b -> :sswitch_9
        0x6c -> :sswitch_9
        0x6d -> :sswitch_9
        0x6e -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getSettingMotionSensitivity(II)I
    .locals 4
    .param p1, "motion"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x5

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "setting":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 219
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 220
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 223
    :cond_1
    return v1

    .line 211
    :sswitch_0
    const-string v0, "motion_zooming_sensitivity"

    goto :goto_0

    .line 213
    :sswitch_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "motion_panning_sensitivity"

    goto :goto_0

    .line 214
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v0, "motion_pan_to_browse_image_sensitivity"

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public getUsedSensorForEvents()I
    .locals 4

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 145
    .local v0, "motion_sensors":I
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire sensors : Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 148
    or-int/lit8 v0, v0, 0x3

    .line 151
    :cond_0
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 154
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x13fffb

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 174
    or-int/lit8 v0, v0, 0x1

    .line 178
    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x105ff9

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 192
    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_2
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    and-int/2addr v1, v2

    const v2, 0x100c00

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 200
    or-int/lit8 v0, v0, 0x4

    .line 203
    :cond_3
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired sensors for motion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v0
.end method

.method public isActivatedEvent(I)Z
    .locals 4
    .param p1, "motion"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 429
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSettings;->getregisteredMotionforEvents(I)I

    move-result v0

    .line 434
    .local v0, "registeredEvents":I
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    move v1, v2

    .line 435
    goto :goto_0
.end method

.method public isActivatedMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 444
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEngineEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 357
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 361
    .local v1, "isEnabled":Z
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .isMotionEngineEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    .local v0, "debugEnabled":Z
    if-eqz v0, :cond_1

    .line 364
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .isMotionEngineEnabled : isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  debugEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move v1, v0

    .line 368
    :cond_1
    return v1

    .end local v0    # "debugEnabled":Z
    .end local v1    # "isEnabled":Z
    :cond_2
    move v1, v2

    .line 357
    goto :goto_0
.end method

.method public isOpenAPIMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 453
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingMotion(I)Z
    .locals 1
    .param p1, "motionevent"    # I

    .prologue
    .line 462
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onChangeMotionSettings(II)V
.end method

.method public setRegisteredEvents(I)V
    .locals 0
    .param p1, "registeredmotions"    # I

    .prologue
    .line 119
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 120
    return-void
.end method

.method public setRegisteredEvents(II)V
    .locals 3
    .param p1, "registeredmotions"    # I
    .param p2, "registeredmotionsforopen"    # I

    .prologue
    .line 124
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotions:I

    .line 125
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eq v0, p2, :cond_0

    .line 126
    iput p2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 128
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eqz v0, :cond_1

    .line 129
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 133
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "events for open api = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    return-void

    .line 131
    :cond_1
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    goto :goto_0
.end method

.method public updateCurrentSettings()V
    .locals 12

    .prologue
    const/high16 v11, 0x200000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 253
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 255
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_13

    .line 260
    shl-int v1, v4, v0

    .line 262
    .local v1, "motion_event":I
    const/high16 v3, 0x80000

    if-ne v1, v3, :cond_3

    .line 264
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v4, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 340
    :cond_2
    :goto_2
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_engine"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 341
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    or-int/2addr v3, v11

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    .end local v1    # "motion_event":I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 267
    .restart local v0    # "i":I
    .restart local v1    # "motion_event":I
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_engine"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 268
    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 271
    :sswitch_0
    const/4 v2, 0x0

    .line 273
    .local v2, "result":I
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_merged_mute_pause"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_overturn"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    and-int v2, v3, v7

    .line 275
    const-string v3, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Palm motion, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " motion_event =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    if-eqz v2, :cond_4

    move v3, v4

    :goto_3
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    .line 284
    .end local v2    # "result":I
    :sswitch_1
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_shake"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_4

    .line 287
    :sswitch_2
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_double_tap"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_5
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_6
    move v3, v5

    goto :goto_5

    .line 292
    :sswitch_3
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_zooming"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_6
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 293
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_tilt_to_list_scrolling"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_7
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_7
    move v3, v5

    .line 292
    goto :goto_6

    :cond_8
    move v3, v5

    .line 293
    goto :goto_7

    .line 296
    :sswitch_4
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pan_to_browse_image"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_8
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 298
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_9
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 299
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_a
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 296
    goto :goto_8

    :cond_a
    move v3, v5

    .line 298
    goto :goto_9

    :cond_b
    move v3, v5

    .line 299
    goto :goto_a

    .line 303
    :sswitch_5
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_panning"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_b
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 305
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_c
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    .line 306
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_d
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_c
    move v3, v5

    .line 303
    goto :goto_b

    :cond_d
    move v3, v5

    .line 305
    goto :goto_c

    :cond_e
    move v3, v5

    .line 306
    goto :goto_d

    .line 311
    :sswitch_6
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_unlock_camera_short_cut"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_e
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_f
    move v3, v5

    goto :goto_e

    .line 315
    :sswitch_7
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_f
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_10
    move v3, v5

    goto :goto_f

    .line 318
    :sswitch_8
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_motion_tilt_to_unlock"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_11

    move v3, v4

    :goto_10
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_11
    move v3, v5

    goto :goto_10

    .line 322
    :sswitch_9
    iget v7, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v3, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_11
    shl-int/2addr v3, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    :cond_12
    move v3, v5

    goto :goto_11

    .line 328
    :sswitch_a
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v5, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    .line 332
    :sswitch_b
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    shl-int v7, v4, v0

    or-int/2addr v3, v7

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    goto/16 :goto_2

    .line 345
    .end local v1    # "motion_event":I
    :cond_13
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings updated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 347
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    if-eqz v3, :cond_14

    .line 348
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentMotionSettings:I

    iget v4, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mRegisteredMotionsforOpen:I

    or-int/2addr v3, v4

    or-int/2addr v3, v11

    iput v3, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 349
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open API is using motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_14
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    return-void

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_9
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_a
        0x400 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_7
        0x100000 -> :sswitch_b
    .end sparse-switch
.end method
