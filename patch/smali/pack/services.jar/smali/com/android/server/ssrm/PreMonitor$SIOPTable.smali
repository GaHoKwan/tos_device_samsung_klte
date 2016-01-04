.class Lcom/android/server/ssrm/PreMonitor$SIOPTable;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PreMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIOPTable"
.end annotation


# instance fields
.field public arm:I

.field public brightness:I

.field public button:Z

.field public duration:I

.field public gpu:I

.field public triggerTemperature:I


# direct methods
.method constructor <init>(IIIIZI)V
    .locals 1
    .param p1, "triggerTemperature"    # I
    .param p2, "arm"    # I
    .param p3, "gpu"    # I
    .param p4, "brightness"    # I
    .param p5, "button"    # Z
    .param p6, "duration"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p1, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->triggerTemperature:I

    .line 258
    iput p2, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    .line 259
    iput p3, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    .line 260
    iput p4, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    .line 261
    iput-boolean p5, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    .line 262
    mul-int/lit16 v0, p6, 0x3e8

    iput v0, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->duration:I

    .line 263
    return-void
.end method
