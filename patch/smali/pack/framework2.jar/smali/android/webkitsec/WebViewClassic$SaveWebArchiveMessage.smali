.class Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveWebArchiveMessage"
.end annotation


# instance fields
.field final mAutoname:Z

.field final mBasename:Ljava/lang/String;

.field final mCallback:Landroid/webkitsec/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResultFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    iput-object p3, p0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkitsec/ValueCallback;

    return-void
.end method
