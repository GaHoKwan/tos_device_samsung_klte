.class public Landroid/view/HapticPreDrawListener;
.super Ljava/lang/Object;
.source "HapticPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public mSkipHapticCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 14
    const/4 v0, 0x1

    return v0
.end method
