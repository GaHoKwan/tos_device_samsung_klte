.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProvider:Landroid/hardware/scontext/SContextProvider;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 597
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 592
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 593
    const-class v0, Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextProvider;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 594
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextActivityBatch;

    return-object v0
.end method

.method public getActivityLocationLoggingContext()Landroid/hardware/scontext/SContextActivityLocationLogging;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    return-object v0
.end method

.method public getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotification;

    return-object v0
.end method

.method public getActivityNotificationExContext()Landroid/hardware/scontext/SContextActivityNotificationEx;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    return-object v0
.end method

.method public getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextActivityTracker;

    return-object v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    return-object v0
.end method

.method public getBounceShortMotionContext()Landroid/hardware/scontext/SContextBounceShortMotion;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    return-object v0
.end method

.method public getCallMotionContext()Landroid/hardware/scontext/SContextCallMotion;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextCallMotion;

    return-object v0
.end method

.method public getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method public getCaptureMotionContext()Landroid/hardware/scontext/SContextCaptureMotion;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextCaptureMotion;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getDoubleTapMotionContext()Landroid/hardware/scontext/SContextDoubleTapMotion;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextDoubleTapMotion;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextFlatMotion;

    return-object v0
.end method

.method public getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementAlertContext()Landroid/hardware/scontext/SContextMovementAlert;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextMovementAlert;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public getSidePressMotionContext()Landroid/hardware/scontext/SContextSidePressMotion;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextSidePressMotion;

    return-object v0
.end method

.method public getSleepMonitorContext()Landroid/hardware/scontext/SContextSleepMonitor;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextSleepMonitor;

    return-object v0
.end method

.method public getSpecificPoseAlertContext()Landroid/hardware/scontext/SContextSpecificPoseAlert;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public getTemperatureAlertContext()Landroid/hardware/scontext/SContextTemperatureAlert;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    return-object v0
.end method

.method public getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextTestFlatMotion;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method public getWristUpMotionContext()Landroid/hardware/scontext/SContextWristUpMotion;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    check-cast v0, Landroid/hardware/scontext/SContextWristUpMotion;

    return-object v0
.end method

.method setSContextEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 385
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 386
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 390
    :pswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 391
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 395
    :pswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 396
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 400
    :pswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 401
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 405
    :pswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 406
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 410
    :pswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 411
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 415
    :pswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 416
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 420
    :pswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 421
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 425
    :pswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 426
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 430
    :pswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 431
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto :goto_0

    .line 435
    :pswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 436
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 440
    :pswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallPose;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 441
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 445
    :pswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 446
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 450
    :pswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 451
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 455
    :pswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 456
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 460
    :pswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 461
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 465
    :pswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 466
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 470
    :pswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 471
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 475
    :pswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 476
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 480
    :pswitch_12
    new-instance v0, Landroid/hardware/scontext/SContextWristUpMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWristUpMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 481
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 485
    :pswitch_13
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 486
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 490
    :pswitch_14
    new-instance v0, Landroid/hardware/scontext/SContextMovementAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 491
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 495
    :pswitch_15
    new-instance v0, Landroid/hardware/scontext/SContextTestFlatMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTestFlatMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 496
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 500
    :pswitch_16
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 501
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 505
    :pswitch_17
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 506
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 510
    :pswitch_18
    new-instance v0, Landroid/hardware/scontext/SContextActivityTracker;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 511
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 515
    :pswitch_19
    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 516
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 520
    :pswitch_1a
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotification;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotification;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 521
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 525
    :pswitch_1b
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 526
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 530
    :pswitch_1c
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 531
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 535
    :pswitch_1d
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationEx;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 536
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 540
    :pswitch_1e
    new-instance v0, Landroid/hardware/scontext/SContextCaptureMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCaptureMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 541
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 545
    :pswitch_1f
    new-instance v0, Landroid/hardware/scontext/SContextCallMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 546
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 550
    :pswitch_20
    new-instance v0, Landroid/hardware/scontext/SContextDoubleTapMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDoubleTapMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 551
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 555
    :pswitch_21
    new-instance v0, Landroid/hardware/scontext/SContextSidePressMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSidePressMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    .line 556
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 580
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 581
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 582
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mProvider:Landroid/hardware/scontext/SContextProvider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 583
    return-void
.end method
