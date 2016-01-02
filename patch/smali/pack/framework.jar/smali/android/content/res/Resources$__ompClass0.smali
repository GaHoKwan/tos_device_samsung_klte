.class Landroid/content/res/Resources$__ompClass0;
.super Lcom/samsung/javaomp/runtime/__OMPWorkItem;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "__ompClass0"
.end annotation


# instance fields
.field volatile mALDC_openmp:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field volatile mTypedValue_openmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field volatile res_openmp:Landroid/content/res/Resources;

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Landroid/content/res/Resources$__ompClass0;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/samsung/javaomp/runtime/__OMPWorkItem;-><init>()V

    return-void
.end method


# virtual methods
.method public __doWork(I)V
    .locals 15
    .param p1, "__ompThreadId"    # I

    .prologue
    .line 1037
    const/4 v10, 0x0

    .line 1040
    .local v10, "i":I
    new-instance v8, Lcom/samsung/javaomp/runtime/__OMPLoop;

    invoke-direct {v8}, Lcom/samsung/javaomp/runtime/__OMPLoop;-><init>()V

    .line 1041
    .local v8, "__loopData0":Lcom/samsung/javaomp/runtime/__OMPLoop;
    const-wide/16 v11, 0x0

    iput-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    .line 1042
    iget-object v1, p0, Landroid/content/res/Resources$__ompClass0;->mTypedValue_openmp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v11, v1

    iput-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    .line 1043
    const-wide/16 v11, 0x1

    iput-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    .line 1044
    const-wide/16 v11, 0x1

    iput-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    .line 1045
    sget-object v1, Lcom/samsung/javaomp/runtime/OMPSched;->DYNAMIC:Lcom/samsung/javaomp/runtime/OMPSched;

    iput-object v1, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    .line 1046
    invoke-static {v8}, Lcom/samsung/javaomp/runtime/OMP;->__workshareStart(Lcom/samsung/javaomp/runtime/__OMPLoop;)V

    .line 1047
    :cond_0
    invoke-static {v8}, Lcom/samsung/javaomp/runtime/OMP;->__loopNext(Lcom/samsung/javaomp/runtime/__OMPLoop;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1048
    iget-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    long-to-int v10, v11

    :goto_0
    iget-wide v11, v8, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    long-to-int v1, v11

    if-ge v10, v1, :cond_0

    .line 1053
    iget-object v1, p0, Landroid/content/res/Resources$__ompClass0;->mTypedValue_openmp:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TypedValue;

    .line 1056
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, "file":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1059
    .local v7, "isColorDrawable":Z
    iget v1, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1

    iget v1, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_1

    .line 1061
    const/4 v7, 0x1

    .line 1063
    :cond_1
    if-eqz v7, :cond_3

    iget v1, v2, Landroid/util/TypedValue;->data:I

    int-to-long v5, v1

    .line 1065
    .local v5, "key":J
    :goto_1
    const-wide/16 v11, 0x0

    cmp-long v1, v5, v11

    if-ltz v1, :cond_2

    if-eqz v3, :cond_2

    .line 1066
    iget-object v1, p0, Landroid/content/res/Resources$__ompClass0;->mALDC_openmp:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1067
    .local v9, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v9, :cond_2

    .line 1068
    new-instance v0, Landroid/content/res/Resources$CRunnable_openmp;

    iget-object v1, p0, Landroid/content/res/Resources$__ompClass0;->this$0:Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/content/res/Resources$__ompClass0;->res_openmp:Landroid/content/res/Resources;

    invoke-direct/range {v0 .. v7}, Landroid/content/res/Resources$CRunnable_openmp;-><init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;JZ)V

    .line 1069
    .local v0, "cr_openmp":Landroid/content/res/Resources$CRunnable_openmp;
    invoke-virtual {v0}, Landroid/content/res/Resources$CRunnable_openmp;->doOpenMP()V

    .line 1048
    .end local v0    # "cr_openmp":Landroid/content/res/Resources$CRunnable_openmp;
    .end local v3    # "file":Ljava/lang/String;
    .end local v5    # "key":J
    .end local v7    # "isColorDrawable":Z
    .end local v9    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1063
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v7    # "isColorDrawable":Z
    :cond_3
    iget v1, v2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v11, v1

    const/16 v1, 0x20

    shl-long/2addr v11, v1

    iget v1, v2, Landroid/util/TypedValue;->data:I

    int-to-long v13, v1

    or-long v5, v11, v13

    goto :goto_1

    .line 1078
    .end local v2    # "value":Landroid/util/TypedValue;
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "isColorDrawable":Z
    :cond_4
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__doBarrier()V

    .line 1085
    return-void
.end method
