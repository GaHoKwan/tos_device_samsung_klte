.class Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7377
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7378
    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 7379
    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 7377
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 7396
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .locals 1

    .prologue
    .line 7403
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 7381
    iput p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 7382
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7384
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7385
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7386
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3700(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7387
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3800(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7391
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 7393
    :cond_1
    return-void
.end method

.method public setTargetAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 7400
    iput p1, p0, Landroid/webkitsec/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    .line 7401
    return-void
.end method
