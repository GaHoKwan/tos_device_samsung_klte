.class Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveViewStateRequest"
.end annotation


# instance fields
.field public mCallback:Landroid/webkitsec/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .param p1, "s"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p2, "cb":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1568
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    .line 1569
    iput-object p2, p0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkitsec/ValueCallback;

    .line 1570
    return-void
.end method
