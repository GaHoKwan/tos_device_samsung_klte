.class public Landroid/webkitsec/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/JsResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/webkitsec/JsResult$ResultReceiver;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    .line 59
    return-void
.end method

.method private final wakeUp()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    invoke-interface {v0, p0}, Landroid/webkitsec/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkitsec/JsResult;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    .line 43
    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    .line 44
    return-void
.end method

.method public final confirm()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    .line 51
    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    .line 52
    return-void
.end method

.method public final getResult()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    return v0
.end method
