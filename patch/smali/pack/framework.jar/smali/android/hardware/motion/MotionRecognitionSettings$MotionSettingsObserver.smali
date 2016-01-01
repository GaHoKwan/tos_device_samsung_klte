.class final Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSettings;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionSettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    .line 229
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 230
    const/4 v0, 0x0

    iput v0, p1, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    .line 231
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 241
    .local v0, "motion_sensors":I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    .line 244
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSettings;->getUsedSensorForEvents()I

    move-result v0

    .line 246
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    iget v2, v2, Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I

    invoke-virtual {v1, v0, v2}, Landroid/hardware/motion/MotionRecognitionSettings;->onChangeMotionSettings(II)V

    .line 248
    return-void
.end method
