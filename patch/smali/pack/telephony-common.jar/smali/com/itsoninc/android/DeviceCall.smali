.class public Lcom/itsoninc/android/DeviceCall;
.super Ljava/lang/Object;
.source "DeviceCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/DeviceCall$CallState;
    }
.end annotation


# instance fields
.field isVoice:Z

.field number:Ljava/lang/String;

.field state:Lcom/itsoninc/android/DeviceCall$CallState;


# direct methods
.method public constructor <init>(ZLcom/itsoninc/android/DeviceCall$CallState;Ljava/lang/String;)V
    .locals 0
    .param p1, "isVoice"    # Z
    .param p2, "state"    # Lcom/itsoninc/android/DeviceCall$CallState;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    .line 20
    iput-object p2, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 21
    iput-object p3, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/itsoninc/android/DeviceCall$CallState;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    return-object v0
.end method

.method public isVoice()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    return v0
.end method
