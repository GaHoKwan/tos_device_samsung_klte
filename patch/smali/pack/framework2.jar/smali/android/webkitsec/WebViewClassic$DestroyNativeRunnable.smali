.class Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyNativeRunnable"
.end annotation


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "nativePtr"    # I

    .prologue
    .line 4373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4374
    iput p1, p0, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    .line 4375
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4380
    iget v0, p0, Landroid/webkitsec/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeDestroy(I)V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3400(I)V

    .line 4381
    return-void
.end method
