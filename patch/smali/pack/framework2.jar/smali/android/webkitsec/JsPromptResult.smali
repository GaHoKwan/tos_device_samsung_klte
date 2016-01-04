.class public Landroid/webkitsec/JsPromptResult;
.super Landroid/webkitsec/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/webkitsec/JsResult$ResultReceiver;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/webkitsec/JsResult;-><init>(Landroid/webkitsec/JsResult$ResultReceiver;)V

    .line 44
    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Landroid/webkitsec/JsResult;->confirm()V

    .line 37
    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
