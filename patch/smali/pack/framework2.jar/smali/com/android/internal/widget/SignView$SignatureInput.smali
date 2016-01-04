.class public Lcom/android/internal/widget/SignView$SignatureInput;
.super Ljava/lang/Object;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SignView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignatureInput"
.end annotation


# instance fields
.field public mPressure:F

.field public mTag:I

.field public mTime:J

.field public mX:F

.field public mY:F

.field final synthetic this$0:Lcom/android/internal/widget/SignView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SignView;FFJIF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "time"    # J
    .param p6, "tag"    # I
    .param p7, "pressure"    # F

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->this$0:Lcom/android/internal/widget/SignView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    iput p2, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 1285
    iput p3, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 1286
    iput-wide p4, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    .line 1287
    iput p7, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    .line 1288
    iput p6, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    .line 1289
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pressure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
