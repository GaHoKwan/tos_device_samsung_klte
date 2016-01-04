.class Landroid/webkitsec/WebViewCore$FindAllRequest;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindAllRequest"
.end annotation


# instance fields
.field public mMatchCount:I

.field public mMatchIndex:I

.field public final mSearchText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    .line 1558
    iput v0, p0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    .line 1559
    iput v0, p0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 1560
    return-void
.end method
