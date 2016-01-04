.class abstract Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MarkingPolicy"
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->mHeight:I

    .line 419
    iput p2, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->mWidth:I

    .line 420
    return-void
.end method


# virtual methods
.method public abstract calulate(II)I
.end method
