.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$DumpZ;,
        Landroid/view/ViewDebug$ViewOperation;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$ExportedProperty;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_Z:Ljava/lang/String; = "DUMPZ"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 330
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 331
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1080
    instance-of v6, p1, Landroid/view/View;

    if-nez v6, :cond_0

    .line 1081
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1101
    :goto_0
    return-object v6

    :cond_0
    move-object v5, p1

    .line 1084
    check-cast v5, Landroid/view/View;

    .line 1085
    .local v5, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$7;

    invoke-direct {v0, p0, v5}, Landroid/view/ViewDebug$7;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1091
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1093
    .local v2, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1095
    .local v3, "handler":Landroid/os/Handler;
    if-nez v3, :cond_1

    .line 1096
    new-instance v3, Landroid/os/Handler;

    .end local v3    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1098
    .restart local v3    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    :goto_1
    const-wide/16 v6, 0xfa0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1104
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v6, v4, Ljava/lang/IllegalAccessException;

    if-eqz v6, :cond_2

    .line 1105
    check-cast v4, Ljava/lang/IllegalAccessException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1107
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v6, v4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_3

    .line 1108
    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 1110
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected exception"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1113
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1114
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected cancellation exception"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1111
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 770
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 772
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 773
    const-string v3, "View"

    const-string v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 780
    :cond_0
    const/4 v1, 0x0

    .line 782
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 784
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 786
    if-eqz v2, :cond_1

    .line 787
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 789
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 791
    return-void

    .line 786
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_2

    .line 787
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 789
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    throw v3

    .line 786
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 765
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .local v0, "outRect":Landroid/graphics/Rect;
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 690
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 692
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 694
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 698
    return-void

    .line 696
    .end local v0    # "outRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    throw v1

    .line 685
    .restart local v0    # "outRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    if-eqz p2, :cond_3

    const/4 v6, 0x1

    .line 705
    .local v6, "localVisible":Z
    :goto_0
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_2

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 707
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 712
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 713
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 714
    if-eqz v6, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 716
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 718
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 720
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 721
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 722
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 724
    const/4 v10, 0x1

    invoke-static {p0, v10}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 725
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 726
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 728
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 729
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 730
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 732
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 735
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_2
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    move-object v3, p0

    .line 736
    check-cast v3, Landroid/view/ViewGroup;

    .line 737
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 739
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 740
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 739
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 703
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    .end local v6    # "localVisible":Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 714
    .restart local v5    # "id":I
    .restart local v6    # "localVisible":Z
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 744
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_6

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 746
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 748
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1484
    const-string/jumbo v7, "null"

    .line 1512
    :goto_0
    return-object v7

    .line 1487
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1488
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1490
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v3

    .line 1491
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1492
    aget-object v1, v3, v4

    .line 1494
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1496
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    if-eqz v2, :cond_1

    .line 1501
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, "\\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1502
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    .end local v6    # "value":Ljava/lang/String;
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1491
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1504
    .restart local v2    # "fieldValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1507
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1512
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1441
    const-string/jumbo v9, "null"

    .line 1479
    :goto_0
    return-object v9

    .line 1444
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1447
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v0, v4

    .line 1448
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1449
    aget-object v2, v4, v1

    .line 1451
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_0
    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1452
    .local v3, "methodValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 1454
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1455
    .local v5, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v9}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1459
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const-string v9, "()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    if-eqz v3, :cond_2

    .line 1464
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, "\\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1465
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    .end local v8    # "value":Ljava/lang/String;
    :goto_3
    const-string v9, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1471
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1467
    .restart local v3    # "methodValue":Ljava/lang/Object;
    .restart local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1474
    .end local v3    # "methodValue":Ljava/lang/Object;
    .end local v5    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    goto :goto_2

    .line 1479
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1378
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1379
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1381
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1383
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1384
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 1403
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v3, "fields":[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1388
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1391
    array-length v0, v2

    .line 1392
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 1393
    aget-object v1, v2, v5

    .line 1394
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1395
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1396
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1400
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1401
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1403
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1408
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1410
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1412
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1413
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 1434
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1417
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1420
    array-length v0, v5

    .line 1421
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1422
    aget-object v4, v5, v2

    .line 1423
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    const-class v7, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_2

    .line 1426
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1427
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1431
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1432
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1434
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 452
    const-string v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v1, "dump_s"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    invoke-static {p0, v3, v4, p3}, Landroid/view/ViewDebug;->dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V

    goto :goto_0

    .line 457
    :cond_2
    const-string v1, "DUMPZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    # invokes: Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V
    invoke-static {p0, p3}, Landroid/view/ViewDebug$DumpZ;->access$000(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 459
    :cond_3
    const-string v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 462
    :cond_4
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "params":[Ljava/lang/String;
    const-string v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 464
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_5
    const-string v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 466
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_6
    const-string v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 468
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_7
    const-string v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_8
    const-string v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    aget-object v1, v0, v3

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v8, 0x0

    .line 831
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 833
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 834
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 835
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 838
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 847
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 840
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    move-object v3, v8

    .line 841
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v1, "View"

    const-string v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 843
    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 843
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    move-object v3, v8

    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 844
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v1

    .line 843
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 840
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 1523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1524
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 945
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 957
    :cond_0
    return-void

    .line 949
    :cond_1
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 950
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_3

    .line 951
    check-cast v1, Landroid/view/IGLViewGroup;

    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_0

    .line 953
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, Landroid/view/IGLView;

    if-eqz v2, :cond_2

    .line 954
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_0
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 931
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 936
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_0

    .line 937
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 938
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p4}, Landroid/view/ViewDebug;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;IZ)V

    goto :goto_0
.end method

.method private static dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 963
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 964
    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 963
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "className":Ljava/lang/String;
    const-string v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 968
    const-string v0, "ViewOverlay"

    .line 970
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 971
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 972
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 973
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 974
    if-eqz p4, :cond_2

    .line 975
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 977
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    const/4 v3, 0x1

    .end local v0    # "className":Ljava/lang/String;
    :goto_1
    return v3

    .line 978
    :catch_0
    move-exception v1

    .line 979
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "View"

    const-string v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .prologue
    .line 897
    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    .end local p1    # "group":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 901
    .restart local p1    # "group":Landroid/view/ViewGroup;
    :cond_1
    if-nez p4, :cond_0

    .line 905
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 906
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_5

    .line 907
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 908
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v1, v9

    .line 909
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 916
    :goto_2
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_2

    .line 917
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    .line 918
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 919
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 906
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 911
    :cond_3
    instance-of v0, v9, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_4

    move-object v0, v9

    .line 912
    check-cast v0, Landroid/opengl/GLSurfaceView;

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2, p5}, Landroid/view/ViewDebug;->dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;IZ)V

    goto :goto_2

    .line 914
    :cond_4
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_2

    .line 923
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_0

    .line 924
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    goto :goto_0
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    if-nez p1, :cond_0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1071
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1072
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1074
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method public static dump_s(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 141
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2278
    const/16 v91, 0x0

    .line 2281
    .local v91, "out":Ljava/io/BufferedWriter;
    const/16 v107, 0x1

    .line 2282
    .local v107, "screenOn":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v136

    const-string/jumbo v137, "power"

    invoke-virtual/range {v136 .. v137}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/os/PowerManager;

    .line 2283
    .local v98, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v98 .. v98}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v107

    .line 2285
    new-instance v93, Ljava/lang/StringBuilder;

    invoke-direct/range {v93 .. v93}, Ljava/lang/StringBuilder;-><init>()V

    .line 2286
    .local v93, "outString":Ljava/lang/StringBuilder;
    const/16 v84, 0x3

    .line 2288
    .local v84, "newlineReplacement":C
    const/16 v117, 0x0

    .line 2289
    .local v117, "tempString":Ljava/lang/String;
    const/16 v115, 0x0

    .line 2290
    .local v115, "tempResources":Landroid/content/res/Resources;
    const/16 v26, 0x0

    .line 2292
    .local v26, "currentView":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 2293
    .local v24, "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    .line 2294
    .local v23, "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v18, 0x0

    .line 2295
    .local v18, "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v22, 0x0

    .line 2296
    .local v22, "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x0

    .line 2297
    .local v19, "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    .line 2298
    .local v20, "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v21, 0x0

    .line 2300
    .local v21, "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v16, 0x0

    .line 2301
    .local v16, "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 2302
    .local v14, "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 2303
    .local v15, "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 2306
    .local v13, "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 2307
    .local v12, "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    .line 2309
    .local v17, "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v31, 0x0

    .line 2312
    .local v31, "field":Ljava/lang/reflect/Field;
    new-instance v111, Ljava/util/ArrayList;

    invoke-direct/range {v111 .. v111}, Ljava/util/ArrayList;-><init>()V

    .line 2313
    .local v111, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v128, Ljava/util/ArrayList;

    invoke-direct/range {v128 .. v128}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    .local v128, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v50, Ljava/util/Hashtable;

    invoke-direct/range {v50 .. v50}, Ljava/util/Hashtable;-><init>()V

    .line 2316
    .local v50, "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v26

    .line 2318
    .local v26, "currentView":Landroid/view/View;
    move-object/from16 v0, v26

    check-cast v0, Landroid/view/View;

    move-object/from16 v136, v0

    invoke-virtual/range {v136 .. v136}, Landroid/view/View;->getVisibility()I

    move-result v136

    if-nez v136, :cond_0

    .line 2320
    move-object/from16 v0, v111

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2321
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    const/16 v137, 0x0

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    .end local v26    # "currentView":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    if-lez v136, :cond_2b

    .line 2326
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v44, v136, -0x1

    .line 2327
    .local v44, "indexToRemove":I
    move-object/from16 v0, v111

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v26

    .line 2329
    .local v26, "currentView":Ljava/lang/Object;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 2330
    .local v49, "level":I
    move-object/from16 v0, v128

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v136, v0

    if-eqz v136, :cond_2

    .line 2334
    move-object/from16 v0, v26

    check-cast v0, Landroid/view/ViewGroup;

    move-object/from16 v126, v0

    .line 2335
    .local v126, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v126 .. v126}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v136

    add-int/lit8 v39, v136, -0x1

    .local v39, "i":I
    :goto_1
    if-ltz v39, :cond_0

    .line 2337
    move-object/from16 v0, v126

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v118

    .line 2338
    .local v118, "tempView":Landroid/view/View;
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getVisibility()I

    move-result v136

    if-nez v136, :cond_1

    .line 2340
    move-object/from16 v0, v111

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    :cond_1
    add-int/lit8 v39, v39, -0x1

    goto :goto_1

    .line 2345
    .end local v39    # "i":I
    .end local v118    # "tempView":Landroid/view/View;
    .end local v126    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    move/from16 v136, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v136, :cond_17

    .line 2348
    :try_start_1
    move-object/from16 v0, v26

    check-cast v0, Landroid/view/View;

    move-object/from16 v136, v0

    invoke-virtual/range {v136 .. v136}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v115

    .line 2351
    const-class v136, Landroid/opengl/GLSurfaceView;

    const-string/jumbo v137, "mRenderer"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2352
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2353
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v113

    .line 2356
    .local v113, "tempObj":Ljava/lang/Object;
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.samsung.gallery.glview.GlRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_b

    .line 2358
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mContentView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2359
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2360
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 2361
    .local v60, "mContentView":Ljava/lang/Object;
    if-eqz v60, :cond_4

    .line 2363
    move-object/from16 v0, v111

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    if-nez v12, :cond_0

    .line 2368
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2369
    .local v95, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v95, :cond_0

    .line 2371
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GLView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_3

    .line 2373
    move-object/from16 v12, v95

    .line 2374
    goto/16 :goto_0

    .line 2376
    :cond_3
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_2

    .line 2382
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mGLObjectZ"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2383
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2384
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v114

    .line 2385
    .local v114, "tempObject":Ljava/lang/Object;
    if-eqz v114, :cond_9

    .line 2387
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "What: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v114 .. v114}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    move-object/from16 v0, v114

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v54, v0

    .line 2390
    .local v54, "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_0

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    .line 2392
    .local v90, "object":Ljava/lang/Object;
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Array: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    if-nez v14, :cond_6

    .line 2396
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2397
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v95, :cond_6

    .line 2399
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlObject"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_8

    .line 2401
    move-object/from16 v14, v95

    .line 2408
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-eqz v14, :cond_5

    const-string v136, "getVisibility"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v90

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Boolean;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v136

    if-eqz v136, :cond_5

    .line 2409
    move-object/from16 v0, v111

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 2509
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v90    # "object":Ljava/lang/Object;
    .end local v113    # "tempObj":Ljava/lang/Object;
    .end local v114    # "tempObject":Ljava/lang/Object;
    :catch_0
    move-exception v27

    .line 2510
    .local v27, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v136, "TDK"

    const-string v137, "Problem: "

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 3533
    .end local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v31    # "field":Ljava/lang/reflect/Field;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    .end local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v84    # "newlineReplacement":C
    .end local v93    # "outString":Ljava/lang/StringBuilder;
    .end local v98    # "pm":Landroid/os/PowerManager;
    .end local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v115    # "tempResources":Landroid/content/res/Resources;
    .end local v117    # "tempString":Ljava/lang/String;
    .end local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_1
    move-exception v27

    .line 3534
    .restart local v27    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string v136, "TDK"

    const-string v137, "Problem dumping the view:"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3536
    if-eqz v91, :cond_7

    .line 3537
    invoke-virtual/range {v91 .. v91}, Ljava/io/BufferedWriter;->close()V

    .line 3540
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_6
    return-void

    .line 2404
    .restart local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "currentView":Ljava/lang/Object;
    .restart local v31    # "field":Ljava/lang/reflect/Field;
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v44    # "indexToRemove":I
    .restart local v49    # "level":I
    .restart local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v60    # "mContentView":Ljava/lang/Object;
    .restart local v84    # "newlineReplacement":C
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v93    # "outString":Ljava/lang/StringBuilder;
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v98    # "pm":Landroid/os/PowerManager;
    .restart local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v113    # "tempObj":Ljava/lang/Object;
    .restart local v114    # "tempObject":Ljava/lang/Object;
    .restart local v115    # "tempResources":Landroid/content/res/Resources;
    .restart local v117    # "tempString":Ljava/lang/String;
    .restart local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_8
    :try_start_4
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto/16 :goto_4

    .line 2416
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v54    # "listObjectZ":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v90    # "object":Ljava/lang/Object;
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    const-string v136, "TDK"

    const-string v137, "mGLObjectZ is null"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3536
    .end local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v31    # "field":Ljava/lang/reflect/Field;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    .end local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v84    # "newlineReplacement":C
    .end local v93    # "outString":Ljava/lang/StringBuilder;
    .end local v98    # "pm":Landroid/os/PowerManager;
    .end local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v113    # "tempObj":Ljava/lang/Object;
    .end local v114    # "tempObject":Ljava/lang/Object;
    .end local v115    # "tempResources":Landroid/content/res/Resources;
    .end local v117    # "tempString":Ljava/lang/String;
    .end local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v136

    :goto_7
    if-eqz v91, :cond_a

    .line 3537
    invoke-virtual/range {v91 .. v91}, Ljava/io/BufferedWriter;->close()V

    :cond_a
    throw v136

    .line 2422
    .restart local v12    # "classGLViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "classGlImageViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "classGlObjectSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "classGlTextViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "classGlViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "classSlotViewSec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classTwGLButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "classTwGLItem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "classTwGLItemDataCheckbox":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "classTwGLModeSwitchButton":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "classTwGLText":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "classTwGLView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "classTwGLViewGroup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "currentView":Ljava/lang/Object;
    .restart local v31    # "field":Ljava/lang/reflect/Field;
    .restart local v44    # "indexToRemove":I
    .restart local v49    # "level":I
    .restart local v50    # "levelMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v84    # "newlineReplacement":C
    .restart local v93    # "outString":Ljava/lang/StringBuilder;
    .restart local v98    # "pm":Landroid/os/PowerManager;
    .restart local v111    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v113    # "tempObj":Ljava/lang/Object;
    .restart local v115    # "tempResources":Landroid/content/res/Resources;
    .restart local v117    # "tempString":Ljava/lang/String;
    .restart local v128    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_b
    :try_start_5
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.android.glview.TwGLContext"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_13

    .line 2425
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2426
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2427
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    .line 2429
    .local v71, "mRootView":Ljava/lang/Object;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .line 2430
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v23

    .line 2432
    move-object/from16 v0, v111

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v116, v136, -0x1

    .line 2437
    .local v116, "tempStackCutLine":I
    :cond_c
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    move/from16 v0, v136

    move/from16 v1, v116

    if-le v0, v1, :cond_0

    .line 2438
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->size()I

    move-result v136

    add-int/lit8 v44, v136, -0x1

    .line 2439
    move-object/from16 v0, v111

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v26

    .line 2441
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .line 2442
    .local v51, "levelOfGL":I
    move-object/from16 v0, v128

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_c

    .line 2446
    const-string v136, "mGLViews"

    move-object/from16 v0, v24

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2447
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2448
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/List;

    .line 2449
    .local v53, "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v136

    add-int/lit8 v39, v136, -0x1

    .restart local v39    # "i":I
    :goto_8
    if-ltz v39, :cond_c

    .line 2451
    move-object/from16 v0, v53

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v118

    .line 2453
    .local v118, "tempView":Ljava/lang/Object;
    if-nez v18, :cond_d

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLButton"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_d

    .line 2454
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 2456
    :cond_d
    if-nez v22, :cond_e

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLText"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_e

    .line 2457
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    .line 2459
    :cond_e
    if-nez v19, :cond_f

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLItem"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_f

    .line 2460
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 2462
    :cond_f
    if-nez v20, :cond_10

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLItemDataCheckbox"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_10

    .line 2463
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 2465
    :cond_10
    if-nez v21, :cond_11

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "TwGLModeSwitchButton"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_11

    .line 2466
    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .line 2469
    :cond_11
    const-string/jumbo v136, "mVisibility"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2470
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2472
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v136

    and-int/lit8 v136, v136, 0xc

    if-nez v136, :cond_12

    .line 2474
    move-object/from16 v0, v111

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v51, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    :cond_12
    add-int/lit8 v39, v39, -0x1

    goto/16 :goto_8

    .line 2481
    .end local v39    # "i":I
    .end local v51    # "levelOfGL":I
    .end local v53    # "listGLViews":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v71    # "mRootView":Ljava/lang/Object;
    .end local v116    # "tempStackCutLine":I
    .end local v118    # "tempView":Ljava/lang/Object;
    :cond_13
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "com.sec.android.gallery3d.ui.GLRootView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_16

    .line 2483
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mContentView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2484
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2485
    move-object/from16 v0, v31

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    .line 2486
    .restart local v60    # "mContentView":Ljava/lang/Object;
    if-eqz v60, :cond_14

    .line 2488
    move-object/from16 v0, v111

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    :cond_14
    if-nez v12, :cond_0

    .line 2494
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2495
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v95, :cond_0

    .line 2497
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GLView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_15

    .line 2499
    move-object/from16 v12, v95

    .line 2500
    goto/16 :goto_0

    .line 2502
    :cond_15
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_9

    .line 2507
    .end local v60    # "mContentView":Ljava/lang/Object;
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> Unknown class in GLSurfaceView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2513
    .end local v113    # "tempObj":Ljava/lang/Object;
    :cond_17
    :try_start_6
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/View;

    move/from16 v136, v0

    if-nez v136, :cond_0

    .line 2518
    if-eqz v14, :cond_1b

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1b

    .line 2519
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "instance of GlObject : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const-string v136, "getView"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    .line 2521
    .local v64, "mGlView":Ljava/lang/Object;
    if-eqz v64, :cond_1a

    .line 2522
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "got GlView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    move-object/from16 v0, v111

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    if-nez v16, :cond_18

    .line 2528
    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2529
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    if-eqz v95, :cond_18

    .line 2531
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_19

    .line 2533
    move-object/from16 v16, v95

    .line 2539
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "got classGlView: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2536
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto :goto_a

    .line 2542
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    const-string v136, "TDK"

    const-string v137, "got GlView: mGlView is null"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2547
    .end local v64    # "mGlView":Ljava/lang/Object;
    :cond_1b
    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1e

    .line 2548
    if-nez v15, :cond_1c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlTextView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1c

    .line 2549
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 2550
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Got ClassGlTextView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_1c
    if-nez v13, :cond_1d

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "GlImageView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_1d

    .line 2553
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 2554
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Got classGlImageView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :cond_1d
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "instance of GlView : "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const-string v136, "getChildCount"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2559
    .local v11, "childCount":I
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "Child Count :  "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    add-int/lit8 v39, v11, -0x1

    .restart local v39    # "i":I
    :goto_b
    if-ltz v39, :cond_0

    .line 2561
    const-string v136, "getChild"

    const/16 v137, 0x1

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x1

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v139

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v26

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2562
    .local v10, "child":Ljava/lang/Object;
    move-object/from16 v0, v111

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    add-int/lit8 v39, v39, -0x1

    goto :goto_b

    .line 2566
    .end local v10    # "child":Ljava/lang/Object;
    .end local v11    # "childCount":I
    .end local v39    # "i":I
    :cond_1e
    if-eqz v12, :cond_2a

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_2a

    .line 2568
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "FilmStripView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v136

    if-eqz v136, :cond_1f

    .line 2570
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mAlbumView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v56

    .line 2571
    .local v56, "mAlbumView":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2572
    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2573
    .local v5, "albumView":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 2574
    move-object/from16 v0, v111

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2577
    .end local v5    # "albumView":Ljava/lang/Object;
    .end local v56    # "mAlbumView":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v27

    .line 2578
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_8
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2579
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v27

    .line 2580
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2583
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1f
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "AlbumView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-nez v136, :cond_20

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "AlbumSetView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_27

    .line 2588
    :cond_20
    if-nez v17, :cond_21

    .line 2590
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 2591
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-eqz v95, :cond_21

    .line 2593
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "SlotView"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_23

    .line 2595
    move-object/from16 v17, v95

    .line 2602
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    if-eqz v17, :cond_0

    .line 2606
    new-instance v121, Ljava/util/HashMap;

    invoke-direct/range {v121 .. v121}, Ljava/util/HashMap;-><init>()V

    .line 2608
    .local v121, "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v136, "mItems"

    move-object/from16 v0, v17

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v66

    .line 2609
    .local v66, "mItems":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v66

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2610
    move-object/from16 v0, v66

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/HashMap;

    .line 2612
    .local v47, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    .line 2613
    .local v30, "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 2614
    .local v45, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_22
    :goto_d
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_25

    .line 2615
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    .line 2616
    .local v46, "itemEnty":Ljava/lang/Object;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v112

    .line 2617
    .local v112, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v112 .. v112}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v6

    move/from16 v48, v0

    .local v48, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    :goto_e
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_22

    aget-object v119, v6, v40

    .line 2618
    .local v119, "tfield":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v119

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2619
    move-object/from16 v0, v119

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v122

    .line 2621
    .local v122, "tobject":Ljava/lang/Object;
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v136

    const-string v137, "LabelDisplayItem"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v136

    if-eqz v136, :cond_24

    .line 2623
    :try_start_9
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mTitle"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v77

    .line 2624
    .local v77, "mTitle":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v77

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2625
    move-object/from16 v0, v77

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Ljava/lang/String;

    .line 2627
    .local v120, "title":Ljava/lang/String;
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mSlotIndex"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v74

    .line 2628
    .local v74, "mSlotIndex":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2629
    move-object/from16 v0, v74

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v43

    .line 2631
    .local v43, "index":I
    invoke-virtual/range {v122 .. v122}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mCount"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v61

    .line 2632
    .local v61, "mCount":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v61

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2633
    move-object/from16 v0, v61

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2636
    .local v25, "count":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    new-instance v137, Landroid/util/Pair;

    move-object/from16 v0, v137

    move-object/from16 v1, v120

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_d

    .line 2637
    .end local v25    # "count":Ljava/lang/String;
    .end local v43    # "index":I
    .end local v61    # "mCount":Ljava/lang/reflect/Field;
    .end local v74    # "mSlotIndex":Ljava/lang/reflect/Field;
    .end local v77    # "mTitle":Ljava/lang/reflect/Field;
    .end local v120    # "title":Ljava/lang/String;
    :catch_4
    move-exception v27

    .line 2638
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_a
    const-string v136, "TDK"

    const-string v137, "No field: mTitle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 2598
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v40    # "i$":I
    .end local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v46    # "itemEnty":Ljava/lang/Object;
    .end local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v48    # "len$":I
    .end local v66    # "mItems":Ljava/lang/reflect/Field;
    .end local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v119    # "tfield":Ljava/lang/reflect/Field;
    .end local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v122    # "tobject":Ljava/lang/Object;
    .restart local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v95

    goto/16 :goto_c

    .line 2639
    .end local v95    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v40    # "i$":I
    .restart local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v46    # "itemEnty":Ljava/lang/Object;
    .restart local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .restart local v48    # "len$":I
    .restart local v66    # "mItems":Ljava/lang/reflect/Field;
    .restart local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v119    # "tfield":Ljava/lang/reflect/Field;
    .restart local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v122    # "tobject":Ljava/lang/Object;
    :catch_5
    move-exception v27

    .line 2640
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mTitle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_d

    .line 2617
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_24
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_e

    .line 2649
    .end local v6    # "arr$":[Ljava/lang/reflect/Field;
    .end local v40    # "i$":I
    .end local v46    # "itemEnty":Ljava/lang/Object;
    .end local v48    # "len$":I
    .end local v112    # "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v119    # "tfield":Ljava/lang/reflect/Field;
    .end local v122    # "tobject":Ljava/lang/Object;
    :cond_25
    const/16 v108, 0x0

    .line 2650
    .local v108, "scrollX":I
    const/16 v109, 0x0

    .line 2653
    .local v109, "scrollY":I
    :try_start_b
    const-string/jumbo v136, "mScrollX"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v72

    .line 2654
    .local v72, "mScrollX":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v72

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2655
    move-object/from16 v0, v72

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v108

    .line 2656
    const-string/jumbo v136, "mScrollY"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v73

    .line 2657
    .local v73, "mScrollY":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v73

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2658
    move-object/from16 v0, v73

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v109

    .line 2665
    .end local v72    # "mScrollX":Ljava/lang/reflect/Field;
    .end local v73    # "mScrollY":Ljava/lang/reflect/Field;
    :goto_f
    :try_start_c
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v138, "mScrollX/mScrollY: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ", "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2669
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getVisibleStart"

    const/16 v138, 0x0

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v36

    .line 2670
    .local v36, "getVisibleStart":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getVisibleEnd"

    const/16 v138, 0x0

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v35

    .line 2671
    .local v35, "getVisibleEnd":Ljava/lang/reflect/Method;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "getSlotRect"

    const/16 v138, 0x1

    move/from16 v0, v138

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v138, v0

    const/16 v139, 0x0

    sget-object v140, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v140, v138, v139

    invoke-virtual/range {v136 .. v138}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v33

    .line 2673
    .local v33, "getSlotRect":Ljava/lang/reflect/Method;
    const/16 v136, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v82

    .line 2674
    .local v82, "nStart":I
    const/16 v136, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v81

    .line 2676
    .local v81, "nEnd":I
    add-int/lit8 v39, v81, -0x1

    .restart local v39    # "i":I
    :goto_10
    move/from16 v0, v39

    move/from16 v1, v82

    if-lt v0, v1, :cond_0

    .line 2677
    const/16 v136, 0x1

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/graphics/Rect;

    .line 2678
    .local v103, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v136, v0

    sub-int v136, v136, v108

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v137, v0

    sub-int v137, v137, v109

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v138, v0

    sub-int v138, v138, v108

    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v139, v0

    sub-int v139, v139, v109

    move-object/from16 v0, v103

    move/from16 v1, v136

    move/from16 v2, v137

    move/from16 v3, v138

    move/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2680
    new-instance v83, Ljava/lang/StringBuilder;

    invoke-direct/range {v83 .. v83}, Ljava/lang/StringBuilder;-><init>()V

    .line 2681
    .local v83, "newSlot":Ljava/lang/StringBuilder;
    const-string v117, "Slot"

    .line 2682
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->hashCode()I

    move-result v136

    add-int v136, v136, v39

    add-int/lit8 v136, v136, 0x1

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 2685
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    const-string/jumbo v117, "true"

    .line 2688
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    const-string/jumbo v117, "true"

    .line 2691
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "pos_relative="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v134, v0

    .line 2694
    .local v134, "x":I
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v135, v0

    .line 2695
    .local v135, "y":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->width()I

    move-result v133

    .line 2696
    .local v133, "width":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->height()I

    move-result v38

    .line 2698
    .local v38, "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_26

    .line 2704
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v136

    move-object/from16 v0, v121

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/util/Pair;

    .line 2706
    .local v94, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v136, v0

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 2707
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v136, v0

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 2710
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    .end local v94    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    const-string/jumbo v117, "true"

    .line 2714
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    const-string/jumbo v117, "true"

    .line 2717
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v83

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    invoke-virtual/range {v83 .. v83}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2721
    move-object/from16 v0, v111

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v117 .. v117}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2676
    add-int/lit8 v39, v39, -0x1

    goto/16 :goto_10

    .line 2659
    .end local v33    # "getSlotRect":Ljava/lang/reflect/Method;
    .end local v35    # "getVisibleEnd":Ljava/lang/reflect/Method;
    .end local v36    # "getVisibleStart":Ljava/lang/reflect/Method;
    .end local v38    # "height":I
    .end local v39    # "i":I
    .end local v81    # "nEnd":I
    .end local v82    # "nStart":I
    .end local v83    # "newSlot":Ljava/lang/StringBuilder;
    .end local v103    # "rect":Landroid/graphics/Rect;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_6
    move-exception v27

    .line 2660
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_e
    const-string v136, "TDK"

    const-string v137, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 2661
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_7
    move-exception v27

    .line 2662
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No field: mScrollX or mScrollY"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 2724
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_8
    move-exception v27

    .line 2725
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2726
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_9
    move-exception v27

    .line 2727
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "No field: mAlbumView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 2733
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v30    # "entry":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v45    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v47    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .end local v66    # "mItems":Ljava/lang/reflect/Field;
    .end local v108    # "scrollX":I
    .end local v109    # "scrollY":I
    .end local v121    # "titleMapWithSlotIndex":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_27
    :try_start_f
    const-string v136, "mComponents"

    move-object/from16 v0, v136

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v59

    .line 2734
    .local v59, "mComponents":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2735
    move-object/from16 v0, v59

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/ArrayList;
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2736
    .local v52, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v52, :cond_0

    .line 2738
    :try_start_10
    const-string v136, "getVisibility"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v34

    .line 2739
    .local v34, "getVisibility":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2741
    new-instance v105, Ljava/util/ArrayList;

    invoke-direct/range {v105 .. v105}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    .local v105, "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_28

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    .line 2743
    .local v85, "obj":Ljava/lang/Object;
    const/16 v136, 0x0

    move-object/from16 v0, v105

    move/from16 v1, v136

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_11

    .line 2753
    .end local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v85    # "obj":Ljava/lang/Object;
    .end local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_a
    move-exception v27

    .line 2754
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_11
    const-string v136, "TDK"

    const-string v137, "No method: getVisibility"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 2759
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v59    # "mComponents":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v27

    .line 2760
    .restart local v27    # "e":Ljava/lang/SecurityException;
    :try_start_12
    const-string v136, "TDK"

    const-string v137, "No field: mComponents"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 2746
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v59    # "mComponents":Ljava/lang/reflect/Field;
    .restart local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_28
    :try_start_13
    invoke-virtual/range {v105 .. v105}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_29
    :goto_12
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_0

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    .line 2747
    .restart local v85    # "obj":Ljava/lang/Object;
    const/16 v136, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v85

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v132

    .line 2748
    .local v132, "visibility":I
    if-nez v132, :cond_29

    .line 2749
    move-object/from16 v0, v111

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    add-int/lit8 v137, v49, 0x1

    invoke-static/range {v137 .. v137}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v137

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_12

    .line 2755
    .end local v34    # "getVisibility":Ljava/lang/reflect/Method;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v85    # "obj":Ljava/lang/Object;
    .end local v105    # "reversedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v132    # "visibility":I
    :catch_c
    move-exception v27

    .line 2756
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    :try_start_14
    const-string v136, "TDK"

    const-string v137, "No method: getVisibility"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 2761
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v52    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v59    # "mComponents":Ljava/lang/reflect/Field;
    :catch_d
    move-exception v27

    .line 2762
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_15
    const-string v136, "TDK"

    const-string v137, "No field: mComponents"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2766
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2a
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v136, v0

    if-nez v136, :cond_0

    .line 2770
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "!!!!!!!!!! In while Unknown classes: "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2774
    .end local v26    # "currentView":Ljava/lang/Object;
    .end local v44    # "indexToRemove":I
    .end local v49    # "level":I
    :cond_2b
    const-string v136, "TDK"

    const-string v137, ">> Start traversing the viewList!"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    invoke-virtual/range {v128 .. v128}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v136

    if-eqz v136, :cond_66

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    .line 2784
    .restart local v90    # "object":Ljava/lang/Object;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v50

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 2785
    .restart local v49    # "level":I
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_14
    move/from16 v0, v39

    move/from16 v1, v49

    if-ge v0, v1, :cond_2c

    .line 2787
    const/16 v136, 0x20

    move-object/from16 v0, v93

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2785
    add-int/lit8 v39, v39, 0x1

    goto :goto_14

    .line 2790
    :cond_2c
    if-nez v49, :cond_2d

    .line 2792
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v125

    .line 2795
    .local v125, "viewContext":Landroid/content/Context;
    invoke-virtual/range {v125 .. v125}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v117

    .line 2796
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "package="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    invoke-virtual/range {v125 .. v125}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 2801
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "activity="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2804
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "screenon="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    .end local v125    # "viewContext":Landroid/content/Context;
    :cond_2d
    move-object/from16 v0, v90

    instance-of v0, v0, Landroid/view/View;

    move/from16 v136, v0

    if-eqz v136, :cond_4c

    .line 2808
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (View) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 2811
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 2814
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    move-object/from16 v0, v90

    check-cast v0, Landroid/view/View;

    move-object/from16 v124, v0

    .line 2818
    .local v124, "view":Landroid/view/View;
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getId()I

    move-result v41

    .line 2819
    .local v41, "id":I
    if-ltz v41, :cond_30

    .line 2821
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v115

    .line 2823
    :try_start_16
    move-object/from16 v0, v115

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 2824
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_2f

    .line 2825
    :goto_15
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_2e

    .line 2826
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_15

    .line 2828
    :cond_2e
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_2f
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "id="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2838
    :cond_30
    :goto_16
    const/16 v136, 0x2

    :try_start_17
    move/from16 v0, v136

    new-array v0, v0, [I

    move-object/from16 v55, v0

    .line 2839
    .local v55, "location":[I
    move-object/from16 v0, v124

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2841
    const/16 v136, 0x0

    aget v136, v55, v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2842
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2843
    const/16 v136, 0x1

    aget v136, v55, v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2844
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getWidth()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2847
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getHeight()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 2849
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v136

    if-eqz v136, :cond_33

    .line 2853
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2854
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_32

    .line 2855
    :goto_17
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_31

    .line 2856
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_17

    .line 2858
    :cond_31
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> getContentDescription - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_32
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "contentdesc="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    :cond_33
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isEnabled()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_3a

    .line 2864
    const-string/jumbo v117, "true"

    .line 2865
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isLongClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_34

    .line 2869
    const-string/jumbo v117, "true"

    .line 2870
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "longclickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    :cond_34
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_35

    .line 2875
    const-string/jumbo v117, "true"

    .line 2876
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    :cond_35
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isLongClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_36

    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isClickable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_37

    .line 2881
    :cond_36
    const-string/jumbo v117, "true"

    .line 2882
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    :cond_37
    :goto_18
    invoke-virtual/range {v124 .. v124}, Landroid/view/View;->isFocusable()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_38

    .line 2893
    const-string/jumbo v117, "true"

    .line 2894
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hasfocus="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    :cond_38
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/AdapterView;

    move/from16 v136, v0

    if-eqz v136, :cond_39

    .line 2900
    const-string/jumbo v117, "true"

    .line 2901
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "adapter="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    :cond_39
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v136, v0

    if-eqz v136, :cond_3e

    .line 2907
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v118, v0

    .line 2909
    .local v118, "tempView":Landroid/widget/TextView;
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2910
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_3c

    .line 2911
    :goto_19
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_3b

    .line 2912
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v117

    goto :goto_19

    .line 2887
    .end local v118    # "tempView":Landroid/widget/TextView;
    :cond_3a
    const-string v117, "false"

    .line 2888
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 2914
    .restart local v118    # "tempView":Landroid/widget/TextView;
    :cond_3b
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_3c
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> textview - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v136

    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v136 .. v137}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v110

    .line 2920
    .local v110, "size":F
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v110

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2921
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    invoke-virtual/range {v118 .. v118}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v136

    if-eqz v136, :cond_3d

    .line 2925
    const-string/jumbo v117, "true"

    .line 2926
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "editable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    :cond_3d
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v136

    if-eqz v136, :cond_3e

    .line 2932
    :try_start_18
    const-class v136, Landroid/widget/TextView;

    const-string/jumbo v137, "mResource"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2933
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2934
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result v104

    .line 2935
    .local v104, "resource":I
    if-eqz v104, :cond_44

    .line 2938
    :try_start_19
    invoke-virtual/range {v118 .. v118}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 2939
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_19} :catch_10
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 2982
    .end local v104    # "resource":I
    .end local v110    # "size":F
    .end local v118    # "tempView":Landroid/widget/TextView;
    :cond_3e
    :goto_1a
    :try_start_1a
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v136, v0

    if-eqz v136, :cond_3f

    .line 2984
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/Checkable;

    move-object v9, v0

    .line 2985
    .local v9, "checkable":Landroid/widget/Checkable;
    invoke-interface {v9}, Landroid/widget/Checkable;->isChecked()Z

    move-result v136

    const/16 v137, 0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-ne v0, v1, :cond_47

    .line 2986
    const-string/jumbo v117, "true"

    .line 2990
    :goto_1b
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "checked="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    .end local v9    # "checkable":Landroid/widget/Checkable;
    :cond_3f
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v136, v0

    if-eqz v136, :cond_40

    .line 2995
    const-string/jumbo v117, "true"

    .line 2996
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progressbar="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v100, v0

    .line 2999
    .local v100, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v100 .. v100}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v136

    if-nez v136, :cond_48

    .line 3001
    invoke-virtual/range {v100 .. v100}, Landroid/widget/ProgressBar;->getMax()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result v80

    .line 3002
    .local v80, "max":I
    if-eqz v80, :cond_40

    .line 3008
    :try_start_1b
    const-class v136, Landroid/widget/ProgressBar;

    const-string/jumbo v137, "mProgress"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3009
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3010
    move-object/from16 v0, v31

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v99

    .line 3011
    .local v99, "progress":I
    mul-int/lit8 v136, v99, 0x64

    div-int v136, v136, v80

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 3012
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progress="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 3020
    .end local v99    # "progress":I
    :goto_1c
    :try_start_1c
    const-class v136, Landroid/widget/ProgressBar;

    const-string/jumbo v137, "mSecondaryProgress"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3021
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3022
    move-object/from16 v0, v31

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v99

    .line 3023
    .restart local v99    # "progress":I
    mul-int/lit8 v136, v99, 0x64

    div-int v136, v136, v80

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v117

    .line 3024
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "progress2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_1c} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 3039
    .end local v80    # "max":I
    .end local v99    # "progress":I
    .end local v100    # "progressBar":Landroid/widget/ProgressBar;
    :cond_40
    :goto_1d
    :try_start_1d
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v136, v0

    if-eqz v136, :cond_41

    .line 3041
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v42, v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 3043
    .local v42, "imageView":Landroid/widget/ImageView;
    :try_start_1e
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mResource"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3044
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3045
    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e .. :try_end_1e} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-result v104

    .line 3046
    .restart local v104    # "resource":I
    if-eqz v104, :cond_49

    .line 3049
    :try_start_1f
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 3050
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_1f} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 3092
    .end local v42    # "imageView":Landroid/widget/ImageView;
    .end local v104    # "resource":I
    :cond_41
    :goto_1e
    :try_start_20
    move-object/from16 v0, v124

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v136, v0

    if-eqz v136, :cond_43

    .line 3094
    move-object/from16 v0, v124

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v28, v0

    .line 3095
    .local v28, "editText":Landroid/widget/EditText;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v136

    if-eqz v136, :cond_42

    .line 3096
    const-string v136, "TDK"

    const-string v137, "editText: editText1"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3098
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hint="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    :cond_42
    const-string v136, "TDK"

    const-string v137, "editText: editText2"

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    .end local v28    # "editText":Landroid/widget/EditText;
    .end local v41    # "id":I
    .end local v55    # "location":[I
    .end local v90    # "object":Ljava/lang/Object;
    .end local v124    # "view":Landroid/view/View;
    :cond_43
    :goto_1f
    const/16 v136, 0xa

    move-object/from16 v0, v93

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_13

    .line 2940
    .restart local v41    # "id":I
    .restart local v55    # "location":[I
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v104    # "resource":I
    .restart local v110    # "size":F
    .restart local v118    # "tempView":Landroid/widget/TextView;
    .restart local v124    # "view":Landroid/view/View;
    :catch_e
    move-exception v27

    .line 2941
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_21
    const-string v136, "TDK"

    const-string v137, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_21} :catch_10
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_1a

    .line 2974
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v104    # "resource":I
    :catch_f
    move-exception v27

    .line 2975
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_22
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_1a

    .line 2946
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v104    # "resource":I
    :cond_44
    :try_start_23
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mUri"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 2947
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2948
    move-object/from16 v0, v31

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/net/Uri;

    .line 2949
    .local v123, "uri":Landroid/net/Uri;
    if-eqz v123, :cond_3e

    .line 2951
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v106

    .line 2952
    .local v106, "scheme":Ljava/lang/String;
    const-string v136, "android.resource"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_45

    .line 2958
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2959
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_23} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_23} :catch_10
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_1a

    .line 2976
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    :catch_10
    move-exception v27

    .line 2977
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_24
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_1a

    .line 2960
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v104    # "resource":I
    .restart local v106    # "scheme":Ljava/lang/String;
    .restart local v123    # "uri":Landroid/net/Uri;
    :cond_45
    :try_start_25
    const-string v136, "content"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_46

    .line 2966
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2967
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 2969
    :cond_46
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 2970
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "background="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_25 .. :try_end_25} :catch_10
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto/16 :goto_1a

    .line 2988
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v110    # "size":F
    .end local v118    # "tempView":Landroid/widget/TextView;
    .end local v123    # "uri":Landroid/net/Uri;
    .restart local v9    # "checkable":Landroid/widget/Checkable;
    :cond_47
    :try_start_26
    const-string v117, "false"

    goto/16 :goto_1b

    .line 3013
    .end local v9    # "checkable":Landroid/widget/Checkable;
    .restart local v80    # "max":I
    .restart local v100    # "progressBar":Landroid/widget/ProgressBar;
    :catch_11
    move-exception v27

    .line 3014
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 3015
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_12
    move-exception v27

    .line 3016
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 3025
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_13
    move-exception v27

    .line 3026
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 3027
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_14
    move-exception v27

    .line 3028
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Reflection Failed. ProgressBar:mSecondaryProgress"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 3034
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v80    # "max":I
    :cond_48
    const-string/jumbo v117, "true"

    .line 3035
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "indeterminate="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_1d

    .line 3051
    .end local v100    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v42    # "imageView":Landroid/widget/ImageView;
    .restart local v104    # "resource":I
    :catch_15
    move-exception v27

    .line 3052
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_27
    const-string v136, "TDK"

    const-string v137, "Failed to get Resoruce Entry Name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_27} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_27 .. :try_end_27} :catch_17
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_1e

    .line 3085
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v104    # "resource":I
    :catch_16
    move-exception v27

    .line 3086
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_28
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto/16 :goto_1e

    .line 3057
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v104    # "resource":I
    :cond_49
    :try_start_29
    const-class v136, Landroid/widget/ImageView;

    const-string/jumbo v137, "mUri"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3058
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3059
    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/net/Uri;

    .line 3060
    .restart local v123    # "uri":Landroid/net/Uri;
    if-eqz v123, :cond_41

    .line 3062
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v106

    .line 3063
    .restart local v106    # "scheme":Ljava/lang/String;
    const-string v136, "android.resource"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_4a

    .line 3069
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3070
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_29} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_29} :catch_17
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_1e

    .line 3087
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    :catch_17
    move-exception v27

    .line 3088
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2a
    const-string v136, "TDK"

    const-string v137, "No mResource for entry of ImageView"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_1e

    .line 3071
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v104    # "resource":I
    .restart local v106    # "scheme":Ljava/lang/String;
    .restart local v123    # "uri":Landroid/net/Uri;
    :cond_4a
    :try_start_2b
    const-string v136, "content"

    move-object/from16 v0, v136

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_4b

    .line 3077
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3078
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    .line 3080
    :cond_4b
    invoke-virtual/range {v123 .. v123}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3081
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_2b} :catch_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2b .. :try_end_2b} :catch_17
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_1e

    .line 3103
    .end local v41    # "id":I
    .end local v42    # "imageView":Landroid/widget/ImageView;
    .end local v55    # "location":[I
    .end local v104    # "resource":I
    .end local v106    # "scheme":Ljava/lang/String;
    .end local v123    # "uri":Landroid/net/Uri;
    .end local v124    # "view":Landroid/view/View;
    :cond_4c
    if-eqz v23, :cond_5d

    :try_start_2c
    move-object/from16 v0, v23

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_5d

    .line 3104
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (TwGLView) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    move-object/from16 v32, v90

    .line 3108
    .local v32, "gLView":Ljava/lang/Object;
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3109
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3112
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 3115
    const/16 v29, 0x0

    .line 3117
    .local v29, "enable":Z
    :try_start_2d
    const-string v136, "mOnClickListener"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3118
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3119
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    if-eqz v136, :cond_4d

    .line 3120
    const/16 v29, 0x1

    .line 3121
    const-string/jumbo v117, "true"

    .line 3122
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "clickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    const-string v117, "false"

    .line 3124
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "longclickable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    const-string/jumbo v117, "true"

    .line 3126
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "touchable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_2d} :catch_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d .. :try_end_2d} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 3133
    :cond_4d
    :goto_20
    const/16 v136, 0x1

    move/from16 v0, v29

    move/from16 v1, v136

    if-ne v0, v1, :cond_4e

    :try_start_2e
    const-string/jumbo v117, "true"

    .line 3134
    :goto_21
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 3138
    :try_start_2f
    const-string/jumbo v136, "mTitle"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3139
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3140
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3141
    if-eqz v117, :cond_51

    .line 3142
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_50

    .line 3143
    :goto_22
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_4f

    .line 3144
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_2f} :catch_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2f .. :try_end_2f} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move-result-object v117

    goto :goto_22

    .line 3128
    :catch_18
    move-exception v27

    .line 3129
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_30
    const-string v136, "TDK"

    const-string v137, "No mOnClickListener for touch"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 3130
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_19
    move-exception v27

    .line 3131
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mOnClickListener for touch"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 3133
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_4e
    const-string v117, "false"
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_1
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto/16 :goto_21

    .line 3146
    :cond_4f
    :try_start_31
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_50
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "id="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_31} :catch_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_31} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 3158
    :cond_51
    :goto_23
    :try_start_32
    const-string v136, "mClipRect"

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3159
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3160
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/graphics/Rect;

    .line 3161
    .local v58, "mClipRect":Landroid/graphics/Rect;
    if-eqz v58, :cond_53

    .line 3162
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3163
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3165
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3166
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3168
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v137, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v138, v0

    sub-int v137, v137, v138

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3169
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3171
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v137, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v138, v0

    sub-int v137, v137, v138

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3172
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_32} :catch_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_32} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_1
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 3195
    .end local v58    # "mClipRect":Landroid/graphics/Rect;
    :goto_24
    const/16 v31, 0x0

    .line 3196
    if-eqz v18, :cond_54

    :try_start_33
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    move-result v136

    if-eqz v136, :cond_54

    .line 3198
    :try_start_34
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v18

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3199
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_34} :catch_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_34 .. :try_end_34} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 3218
    :cond_52
    :goto_25
    if-eqz v31, :cond_57

    if-eqz v22, :cond_57

    .line 3219
    :try_start_35
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    move-result-object v76

    .line 3220
    .local v76, "mText":Ljava/lang/Object;
    if-eqz v76, :cond_57

    .line 3222
    :try_start_36
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v22

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3223
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3224
    move-object/from16 v0, v31

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3225
    if-eqz v117, :cond_57

    .line 3226
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_56

    .line 3227
    :goto_26
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_55

    .line 3228
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_36} :catch_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_36} :catch_23
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    move-result-object v117

    goto :goto_26

    .line 3150
    .end local v76    # "mText":Ljava/lang/Object;
    :catch_1a
    move-exception v27

    .line 3151
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_37
    const-string v136, "TDK"

    const-string v137, "No mTile for ID"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 3152
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1b
    move-exception v27

    .line 3153
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mTile for ID"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    goto/16 :goto_23

    .line 3174
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v58    # "mClipRect":Landroid/graphics/Rect;
    :cond_53
    :try_start_38
    const-string v136, "getCurrentArea"

    const/16 v137, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v32

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/graphics/RectF;

    .line 3176
    .local v62, "mCurrentArea":Landroid/graphics/RectF;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v137, v0

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3177
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v137, v0

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3180
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v137, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v138, v0

    sub-float v137, v137, v138

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3183
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v137, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v138, v0

    sub-float v137, v137, v138

    move/from16 v0, v137

    float-to-int v0, v0

    move/from16 v137, v0

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3186
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_38} :catch_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_38} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    goto/16 :goto_24

    .line 3188
    .end local v58    # "mClipRect":Landroid/graphics/Rect;
    .end local v62    # "mCurrentArea":Landroid/graphics/RectF;
    :catch_1c
    move-exception v27

    .line 3189
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_39
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 3190
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1d
    move-exception v27

    .line 3191
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 3200
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1e
    move-exception v27

    .line 3201
    .local v27, "e":Ljava/lang/SecurityException;
    const/16 v31, 0x0

    .line 3202
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 3203
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_1f
    move-exception v27

    .line 3204
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 3207
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_54
    if-eqz v19, :cond_52

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    move-result v136

    if-eqz v136, :cond_52

    .line 3209
    :try_start_3a
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v19

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3210
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_3a .. :try_end_3a} :catch_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3a .. :try_end_3a} :catch_21
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    goto/16 :goto_25

    .line 3211
    :catch_20
    move-exception v27

    .line 3212
    .local v27, "e":Ljava/lang/SecurityException;
    const/16 v31, 0x0

    .line 3213
    :try_start_3b
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 3214
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_21
    move-exception v27

    .line 3215
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText to get TwGLText"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    goto/16 :goto_25

    .line 3230
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v76    # "mText":Ljava/lang/Object;
    :cond_55
    :try_start_3c
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_56
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_3c} :catch_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3c .. :try_end_3c} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 3243
    .end local v76    # "mText":Ljava/lang/Object;
    :cond_57
    :goto_27
    if-eqz v22, :cond_5a

    :try_start_3d
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    move-result v136

    if-eqz v136, :cond_5a

    .line 3245
    :try_start_3e
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v22

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3246
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3247
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    move-object/from16 v0, v136

    check-cast v0, Ljava/lang/String;

    move-object/from16 v117, v0

    .line 3248
    if-eqz v117, :cond_5a

    .line 3249
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_59

    .line 3250
    :goto_28
    const/16 v136, 0xa

    move-object/from16 v0, v117

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v136

    const/16 v137, -0x1

    move/from16 v0, v136

    move/from16 v1, v137

    if-eq v0, v1, :cond_58

    .line 3251
    const/16 v136, 0xa

    const/16 v137, 0x3

    move-object/from16 v0, v117

    move/from16 v1, v136

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_3e} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3e .. :try_end_3e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    move-result-object v117

    goto :goto_28

    .line 3234
    .restart local v76    # "mText":Ljava/lang/Object;
    :catch_22
    move-exception v27

    .line 3235
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_3f
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 3236
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_23
    move-exception v27

    .line 3237
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_1
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    goto :goto_27

    .line 3253
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v76    # "mText":Ljava/lang/Object;
    :cond_58
    :try_start_40
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, ">> newlineReplacement - "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    move-object/from16 v0, v137

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    :cond_59
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_40} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_40 .. :try_end_40} :catch_26
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 3265
    :cond_5a
    :goto_29
    if-eqz v20, :cond_5b

    :try_start_41
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_1
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    move-result v136

    if-eqz v136, :cond_5b

    .line 3267
    :try_start_42
    const-string v136, "mChecked"

    move-object/from16 v0, v20

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3268
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3269
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v57

    .line 3270
    .local v57, "mChecked":Z
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3271
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "checked="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_42} :catch_27
    .catch Ljava/lang/NoSuchFieldException; {:try_start_42 .. :try_end_42} :catch_28
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    .line 3280
    .end local v57    # "mChecked":Z
    :cond_5b
    :goto_2a
    if-eqz v21, :cond_43

    :try_start_43
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_1
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    move-result v136

    if-eqz v136, :cond_43

    .line 3282
    :try_start_44
    const-string/jumbo v136, "mSwitchBallPosition"

    move-object/from16 v0, v21

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3283
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3284
    invoke-virtual/range {v31 .. v32}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v75

    .line 3285
    .local v75, "mSwitchBallPosition":I
    if-nez v75, :cond_5c

    .line 3286
    const-string v117, "Camera"

    .line 3290
    :goto_2b
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_44} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_44 .. :try_end_44} :catch_29
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_1
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    goto/16 :goto_1f

    .line 3291
    .end local v75    # "mSwitchBallPosition":I
    :catch_24
    move-exception v27

    .line 3292
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_45
    const-string v136, "TDK"

    const-string v137, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 3257
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_25
    move-exception v27

    .line 3258
    .restart local v27    # "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 3259
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_26
    move-exception v27

    .line 3260
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 3272
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :catch_27
    move-exception v27

    .line 3273
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mChecked for check"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 3274
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_28
    move-exception v27

    .line 3275
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mChecked for check"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_1
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    goto/16 :goto_2a

    .line 3288
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v75    # "mSwitchBallPosition":I
    :cond_5c
    :try_start_46
    const-string v117, "Camcorder"
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_46} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_46 .. :try_end_46} :catch_29
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_1
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    goto/16 :goto_2b

    .line 3293
    .end local v75    # "mSwitchBallPosition":I
    :catch_29
    move-exception v27

    .line 3294
    .restart local v27    # "e":Ljava/lang/NoSuchFieldException;
    :try_start_47
    const-string v136, "TDK"

    const-string v137, "No mSwitchBallPosition for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 3298
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .end local v29    # "enable":Z
    .end local v32    # "gLView":Ljava/lang/Object;
    :cond_5d
    if-eqz v16, :cond_61

    move-object/from16 v0, v16

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_61

    .line 3300
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GlView-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3303
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3306
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3308
    if-eqz v13, :cond_5e

    move-object/from16 v0, v90

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    move-result v136

    if-eqz v136, :cond_5e

    .line 3310
    :try_start_48
    const-string/jumbo v136, "mResourceID"

    move-object/from16 v0, v136

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3311
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3312
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_48} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_48 .. :try_end_48} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_1
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    move-result v70

    .line 3313
    .local v70, "mResourceID":I
    if-eqz v70, :cond_5e

    if-eqz v115, :cond_5e

    .line 3315
    :try_start_49
    move-object/from16 v0, v115

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v117

    .line 3316
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "entry="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_49} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_49 .. :try_end_49} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_1
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    .line 3328
    .end local v70    # "mResourceID":I
    :cond_5e
    :goto_2c
    const/16 v63, 0x0

    .line 3331
    .local v63, "mGlObject":Ljava/lang/Object;
    :try_start_4a
    const-string/jumbo v136, "mRect"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v69

    .line 3332
    .local v69, "mRect":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3333
    move-object/from16 v0, v69

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 3335
    .local v37, "glRect":Ljava/lang/Object;
    const-string v136, "mGlObject"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3336
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3337
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4a} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4a .. :try_end_4a} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_1
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    move-result-object v63

    .line 3341
    :try_start_4b
    const-string v136, "checkPosIn"

    const/16 v137, 0x2

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    const/16 v138, 0x1

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3342
    .local v8, "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3343
    const/16 v136, 0x2

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    const/16 v137, 0x1

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v63

    move-object/from16 v1, v136

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_4b} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4b .. :try_end_4b} :catch_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4b .. :try_end_4b} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    .line 3350
    .end local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_2d
    :try_start_4c
    const-string/jumbo v136, "mXlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3351
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3352
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v88

    .line 3353
    .local v88, "objX":F
    const-string/jumbo v136, "mYlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3354
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3355
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v89

    .line 3357
    .local v89, "objY":F
    const-string/jumbo v136, "mXrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3358
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3359
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    sub-float v87, v136, v88

    .line 3360
    .local v87, "objWidth":F
    const-string/jumbo v136, "mYrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3361
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3362
    move-object/from16 v0, v31

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    sub-float v86, v136, v89

    .line 3365
    .local v86, "objHeight":F
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3366
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height2="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mLeft"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v67

    .line 3371
    .local v67, "mLeft":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3372
    move-object/from16 v0, v67

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v134

    .line 3373
    .restart local v134    # "x":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mTop"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v78

    .line 3374
    .local v78, "mTop":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v78

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3375
    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v135

    .line 3377
    .restart local v135    # "y":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string/jumbo v137, "mWidth"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 3378
    .local v79, "mWidth":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v79

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3379
    move-object/from16 v0, v79

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v133

    .line 3380
    .restart local v133    # "width":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    const-string v137, "mHeight"

    invoke-virtual/range {v136 .. v137}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3381
    .local v65, "mHeight":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v65

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3382
    move-object/from16 v0, v65

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v38

    .line 3387
    .restart local v38    # "height":I
    const-string/jumbo v136, "mParent"

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3388
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3389
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v68

    .line 3390
    .local v68, "mParent":Ljava/lang/Object;
    if-eqz v68, :cond_60

    .line 3391
    const-string v136, "getWidth"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v68

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v97

    .line 3392
    .local v97, "parentWidth":I
    const-string v136, "getHeight"

    const/16 v137, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v68

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v136

    check-cast v136, Ljava/lang/Integer;

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Integer;->intValue()I

    move-result v96

    .line 3393
    .local v96, "parentHeight":I
    move/from16 v0, v97

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v101, v87, v136

    .line 3394
    .local v101, "rateX":F
    move/from16 v0, v96

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v102, v86, v136

    .line 3400
    .end local v96    # "parentHeight":I
    .end local v97    # "parentWidth":I
    .local v102, "rateY":F
    :goto_2e
    move/from16 v0, v134

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v101

    add-float v136, v136, v88

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v130, v0

    .line 3401
    .local v130, "viewX":I
    move/from16 v0, v135

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v102

    add-float v136, v136, v89

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v131, v0

    .line 3402
    .local v131, "viewY":I
    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v101

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v129, v0

    .line 3403
    .local v129, "viewWidth":I
    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v136, v0

    mul-float v136, v136, v102

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v127, v0

    .line 3405
    .local v127, "viewHeight":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3408
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_4c} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4c .. :try_end_4c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_1
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    .line 3416
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v38    # "height":I
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v68    # "mParent":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v86    # "objHeight":F
    .end local v87    # "objWidth":F
    .end local v88    # "objX":F
    .end local v89    # "objY":F
    .end local v101    # "rateX":F
    .end local v102    # "rateY":F
    .end local v127    # "viewHeight":I
    .end local v129    # "viewWidth":I
    .end local v130    # "viewX":I
    .end local v131    # "viewY":I
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :goto_2f
    if-eqz v15, :cond_5f

    :try_start_4d
    move-object/from16 v0, v90

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_1
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    move-result v136

    if-eqz v136, :cond_5f

    .line 3418
    :try_start_4e
    const-string/jumbo v136, "mText"

    move-object/from16 v0, v136

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 3419
    const/16 v136, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3420
    move-object/from16 v0, v31

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    .line 3421
    .local v76, "mText":Ljava/lang/String;
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "text="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_4e} :catch_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4e .. :try_end_4e} :catch_32
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_1
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 3429
    .end local v76    # "mText":Ljava/lang/String;
    :cond_5f
    :goto_30
    const/16 v29, 0x1

    .line 3430
    .restart local v29    # "enable":Z
    :try_start_4f
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v136

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ""

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v117

    .line 3431
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_1
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0

    goto/16 :goto_1f

    .line 3317
    .end local v29    # "enable":Z
    .restart local v70    # "mResourceID":I
    :catch_2a
    move-exception v27

    .line 3318
    .local v27, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_50
    const-string v136, "TDK"

    const-string v137, "Failed to get Resource entry name"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_50} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_50 .. :try_end_50} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_1
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    goto/16 :goto_2c

    .line 3321
    .end local v27    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v70    # "mResourceID":I
    :catch_2b
    move-exception v27

    .line 3322
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_51
    const-string v136, "TDK"

    const-string v137, "No mResourceID for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 3323
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_2c
    move-exception v27

    .line 3324
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mResourceID for entry"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_1
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    goto/16 :goto_2c

    .line 3344
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_2d
    move-exception v27

    .line 3345
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_52
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_52} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_52 .. :try_end_52} :catch_30
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1
    .catchall {:try_start_52 .. :try_end_52} :catchall_0

    goto/16 :goto_2d

    .line 3410
    .end local v27    # "e":Ljava/lang/SecurityException;
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_2e
    move-exception v27

    .line 3411
    .restart local v27    # "e":Ljava/lang/SecurityException;
    :try_start_53
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_1
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    goto/16 :goto_2f

    .line 3346
    .end local v27    # "e":Ljava/lang/SecurityException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_2f
    move-exception v27

    .line 3347
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    :try_start_54
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_54} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_54 .. :try_end_54} :catch_30
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_1
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    goto/16 :goto_2d

    .line 3412
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    :catch_30
    move-exception v27

    .line 3413
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    :try_start_55
    const-string v136, "TDK"

    const-string v137, "Failed to get a rectangle"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 3396
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v37    # "glRect":Ljava/lang/Object;
    .restart local v38    # "height":I
    .restart local v63    # "mGlObject":Ljava/lang/Object;
    .restart local v65    # "mHeight":Ljava/lang/reflect/Field;
    .restart local v67    # "mLeft":Ljava/lang/reflect/Field;
    .restart local v68    # "mParent":Ljava/lang/Object;
    .restart local v69    # "mRect":Ljava/lang/reflect/Field;
    .restart local v78    # "mTop":Ljava/lang/reflect/Field;
    .restart local v79    # "mWidth":Ljava/lang/reflect/Field;
    .restart local v86    # "objHeight":F
    .restart local v87    # "objWidth":F
    .restart local v88    # "objX":F
    .restart local v89    # "objY":F
    .restart local v133    # "width":I
    .restart local v134    # "x":I
    .restart local v135    # "y":I
    :cond_60
    move/from16 v0, v133

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v101, v87, v136

    .line 3397
    .restart local v101    # "rateX":F
    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v136, v0

    div-float v102, v86, v136

    .restart local v102    # "rateY":F
    goto/16 :goto_2e

    .line 3422
    .end local v37    # "glRect":Ljava/lang/Object;
    .end local v38    # "height":I
    .end local v63    # "mGlObject":Ljava/lang/Object;
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v68    # "mParent":Ljava/lang/Object;
    .end local v69    # "mRect":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v86    # "objHeight":F
    .end local v87    # "objWidth":F
    .end local v88    # "objX":F
    .end local v89    # "objY":F
    .end local v101    # "rateX":F
    .end local v102    # "rateY":F
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_31
    move-exception v27

    .line 3423
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 3424
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_32
    move-exception v27

    .line 3425
    .local v27, "e":Ljava/lang/NoSuchFieldException;
    const-string v136, "TDK"

    const-string v137, "No mText for text"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 3433
    .end local v27    # "e":Ljava/lang/NoSuchFieldException;
    :cond_61
    if-eqz v14, :cond_62

    move-object/from16 v0, v90

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_62

    .line 3435
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GlObject-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3438
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3441
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    const-string/jumbo v117, "true"

    .line 3444
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1
    .catchall {:try_start_55 .. :try_end_55} :catchall_0

    .line 3448
    :try_start_56
    const-string v136, "checkPosIn"

    const/16 v137, 0x2

    move/from16 v0, v137

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v137, v0

    const/16 v138, 0x0

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    const/16 v138, 0x1

    sget-object v139, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v139, v137, v138

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3449
    .restart local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3450
    const/16 v136, 0x2

    move/from16 v0, v136

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v136, v0

    const/16 v137, 0x0

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    const/16 v137, 0x1

    const/16 v138, 0x0

    invoke-static/range {v138 .. v138}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v138

    aput-object v138, v136, v137

    move-object/from16 v0, v90

    move-object/from16 v1, v136

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_56} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_56} :catch_34
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    .line 3457
    .end local v8    # "checkPosIn":Ljava/lang/reflect/Method;
    :goto_31
    :try_start_57
    const-string/jumbo v136, "mXlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v67

    .line 3458
    .restart local v67    # "mLeft":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v67

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3459
    move-object/from16 v0, v67

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v134, v0

    .line 3460
    .restart local v134    # "x":I
    const-string/jumbo v136, "mYlt"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v78

    .line 3461
    .restart local v78    # "mTop":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v78

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3462
    move-object/from16 v0, v78

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v135, v0

    .line 3464
    .restart local v135    # "y":I
    const-string/jumbo v136, "mXrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v79

    .line 3465
    .restart local v79    # "mWidth":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v79

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3466
    move-object/from16 v0, v79

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v136, v0

    sub-int v133, v136, v134

    .line 3467
    .restart local v133    # "width":I
    const-string/jumbo v136, "mYrb"

    move-object/from16 v0, v136

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v65

    .line 3468
    .restart local v65    # "mHeight":Ljava/lang/reflect/Field;
    const/16 v136, 0x1

    move-object/from16 v0, v65

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3469
    move-object/from16 v0, v65

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v136

    move/from16 v0, v136

    float-to-int v0, v0

    move/from16 v136, v0

    sub-int v38, v136, v135

    .line 3471
    .restart local v38    # "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 3451
    .end local v38    # "height":I
    .end local v65    # "mHeight":Ljava/lang/reflect/Field;
    .end local v67    # "mLeft":Ljava/lang/reflect/Field;
    .end local v78    # "mTop":Ljava/lang/reflect/Field;
    .end local v79    # "mWidth":Ljava/lang/reflect/Field;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_33
    move-exception v27

    .line 3452
    .local v27, "e":Ljava/lang/SecurityException;
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 3453
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_34
    move-exception v27

    .line 3454
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "No method: checkPosIn"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 3477
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    :cond_62
    if-eqz v12, :cond_64

    move-object/from16 v0, v90

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v136

    if-eqz v136, :cond_64

    .line 3478
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (GLView-Sec) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v117

    .line 3481
    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->isEmpty()Z

    move-result v136

    if-eqz v136, :cond_63

    .line 3482
    const-string v117, "$"

    .line 3484
    :cond_63
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "class="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->hashCode()I

    move-result v136

    invoke-static/range {v136 .. v136}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v117

    .line 3487
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "hash="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    const-string/jumbo v117, "true"

    .line 3490
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "enable="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_1
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    .line 3493
    :try_start_58
    const-string v136, "bounds"

    const/16 v137, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3494
    .local v7, "bounds":Ljava/lang/reflect/Method;
    const/16 v136, 0x1

    move/from16 v0, v136

    invoke-virtual {v7, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3496
    const/16 v136, 0x0

    move-object/from16 v0, v90

    move-object/from16 v1, v136

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/graphics/Rect;

    .line 3497
    .restart local v103    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v134, v0

    .line 3498
    .restart local v134    # "x":I
    move-object/from16 v0, v103

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v135, v0

    .line 3499
    .restart local v135    # "y":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->width()I

    move-result v133

    .line 3500
    .restart local v133    # "width":I
    invoke-virtual/range {v103 .. v103}, Landroid/graphics/Rect;->height()I

    move-result v38

    .line 3503
    .restart local v38    # "height":I
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "x="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "y="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3505
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "width="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string v137, "height="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v137

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v137

    const-string v138, ""

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    const-string/jumbo v117, "true"

    .line 3509
    new-instance v136, Ljava/lang/StringBuilder;

    invoke-direct/range {v136 .. v136}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v137, "pos_relative="

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v137

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, ","

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    move-object/from16 v0, v136

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    const-string v137, " "

    invoke-virtual/range {v136 .. v137}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v136

    invoke-virtual/range {v136 .. v136}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v93

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_58} :catch_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_58} :catch_36
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_1
    .catchall {:try_start_58 .. :try_end_58} :catchall_0

    goto/16 :goto_1f

    .line 3510
    .end local v7    # "bounds":Ljava/lang/reflect/Method;
    .end local v38    # "height":I
    .end local v103    # "rect":Landroid/graphics/Rect;
    .end local v133    # "width":I
    .end local v134    # "x":I
    .end local v135    # "y":I
    :catch_35
    move-exception v27

    .line 3511
    .local v27, "e":Ljava/lang/SecurityException;
    :try_start_59
    const-string v136, "TDK"

    const-string v137, "Failed to get a boundary"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 3514
    .end local v27    # "e":Ljava/lang/SecurityException;
    :catch_36
    move-exception v27

    .line 3515
    .local v27, "e":Ljava/lang/NoSuchMethodException;
    const-string v136, "TDK"

    const-string v137, "Failed to get a boundary"

    move-object/from16 v0, v136

    move-object/from16 v1, v137

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 3518
    .end local v27    # "e":Ljava/lang/NoSuchMethodException;
    :cond_64
    move-object/from16 v0, v90

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v136, v0

    if-eqz v136, :cond_65

    .line 3519
    check-cast v90, Ljava/lang/String;

    .end local v90    # "object":Ljava/lang/Object;
    move-object/from16 v0, v93

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 3523
    .restart local v90    # "object":Ljava/lang/Object;
    :cond_65
    const-string v136, "TDK"

    new-instance v137, Ljava/lang/StringBuilder;

    invoke-direct/range {v137 .. v137}, Ljava/lang/StringBuilder;-><init>()V

    const-string v138, "ViewList: (Unknown) "

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v90 .. v90}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v138

    invoke-virtual/range {v138 .. v138}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v138

    invoke-virtual/range {v137 .. v138}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v137

    invoke-virtual/range {v137 .. v137}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v137

    invoke-static/range {v136 .. v137}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 3529
    .end local v39    # "i":I
    .end local v49    # "level":I
    .end local v90    # "object":Ljava/lang/Object;
    :cond_66
    new-instance v92, Ljava/io/BufferedWriter;

    new-instance v136, Ljava/io/OutputStreamWriter;

    const-string/jumbo v137, "utf-8"

    move-object/from16 v0, v136

    move-object/from16 v1, p3

    move-object/from16 v2, v137

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v137, 0x8000

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    move/from16 v2, v137

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_1
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    .line 3530
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .local v92, "out":Ljava/io/BufferedWriter;
    :try_start_5a
    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v136

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3531
    const-string v136, "DONE."

    move-object/from16 v0, v92

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3532
    invoke-virtual/range {v92 .. v92}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_37
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1

    .line 3536
    if-eqz v92, :cond_67

    .line 3537
    invoke-virtual/range {v92 .. v92}, Ljava/io/BufferedWriter;->close()V

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_6

    .line 3536
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v136

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_7

    .line 3533
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :catch_37
    move-exception v27

    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_5

    .line 2831
    .restart local v39    # "i":I
    .restart local v41    # "id":I
    .restart local v49    # "level":I
    .restart local v90    # "object":Ljava/lang/Object;
    .restart local v124    # "view":Landroid/view/View;
    :catch_38
    move-exception v136

    goto/16 :goto_16

    .end local v39    # "i":I
    .end local v41    # "id":I
    .end local v49    # "level":I
    .end local v90    # "object":Ljava/lang/Object;
    .end local v91    # "out":Ljava/io/BufferedWriter;
    .end local v124    # "view":Landroid/view/View;
    .restart local v92    # "out":Ljava/io/BufferedWriter;
    :cond_67
    move-object/from16 v91, v92

    .end local v92    # "out":Ljava/io/BufferedWriter;
    .restart local v91    # "out":Ljava/io/BufferedWriter;
    goto/16 :goto_6
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1195
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 1197
    .local v12, "fields":[Ljava/lang/reflect/Field;
    array-length v9, v12

    .line 1198
    .local v9, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_9

    .line 1199
    aget-object v10, v12, v14

    .line 1203
    .local v10, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 1204
    .local v11, "fieldValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    .line 1205
    .local v22, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1206
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1209
    .local v8, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_8

    .line 1210
    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    .line 1211
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 1212
    .local v15, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v11

    .line 1256
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v15    # "id":I
    :cond_1
    :goto_2
    if-nez v11, :cond_2

    .line 1257
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1260
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v11}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1206
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v8, ""

    goto :goto_1

    .line 1214
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v13

    .line 1215
    .local v13, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v13

    if-lez v2, :cond_5

    .line 1216
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1217
    .local v16, "intValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1219
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1222
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v16    # "intValue":I
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v19

    .line 1223
    .local v19, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_1

    .line 1224
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 1225
    .restart local v16    # "intValue":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 1226
    .local v20, "mappingCount":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 1227
    aget-object v18, v19, v17

    .line 1228
    .local v18, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 1229
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v11

    .line 1234
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_6
    if-nez v11, :cond_1

    .line 1235
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, "fieldValue":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1226
    .local v11, "fieldValue":Ljava/lang/Object;
    .restart local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1239
    .end local v13    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v16    # "intValue":I
    .end local v17    # "j":I
    .end local v18    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v19    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v20    # "mappingCount":I
    :cond_8
    const-class v2, [I

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_a

    .line 1240
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v5, v0

    .line 1241
    .local v5, "array":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1242
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string v21, ""

    .line 1244
    .local v21, "suffix":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v21    # "suffix":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    return-void

    .line 1248
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v8    # "categoryPrefix":Ljava/lang/String;
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1250
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1261
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v8    # "categoryPrefix":Ljava/lang/String;
    .end local v11    # "fieldValue":Ljava/lang/Object;
    .end local v22    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1124
    .local v22, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v10, v0

    .line 1125
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_7

    .line 1126
    aget-object v20, v22, v12

    .line 1129
    .local v20, "method":Ljava/lang/reflect/Method;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1130
    .local v21, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    .line 1131
    .local v23, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1132
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1135
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 1137
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p0, :cond_2

    .line 1138
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1139
    .local v13, "id":I
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v21

    .line 1184
    .end local v13    # "id":I
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1132
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v9, ""

    goto :goto_1

    .line 1141
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v11

    .line 1142
    .local v11, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v11

    if-lez v3, :cond_3

    .line 1143
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1144
    .local v14, "intValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1146
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v11, v14, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1149
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v14    # "intValue":I
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v18

    .line 1150
    .local v18, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1151
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1152
    .restart local v14    # "intValue":I
    const/16 v16, 0x0

    .line 1153
    .local v16, "mapped":Z
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 1154
    .local v19, "mappingCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 1155
    aget-object v17, v18, v15

    .line 1156
    .local v17, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    if-ne v3, v14, :cond_5

    .line 1157
    invoke-interface/range {v17 .. v17}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v21

    .line 1158
    .local v21, "methodValue":Ljava/lang/String;
    const/16 v16, 0x1

    .line 1163
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v21    # "methodValue":Ljava/lang/String;
    :cond_4
    if-nez v16, :cond_0

    .line 1164
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "methodValue":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 1154
    .restart local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .local v21, "methodValue":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1168
    .end local v11    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v14    # "intValue":I
    .end local v15    # "j":I
    .end local v16    # "mapped":Z
    .end local v17    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v18    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v19    # "mappingCount":I
    :cond_6
    const-class v3, [I

    move-object/from16 v0, v23

    if-ne v0, v3, :cond_8

    .line 1169
    check-cast v21, [I

    .end local v21    # "methodValue":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v6, v0

    .line 1170
    .local v6, "array":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1171
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string v24, "()"

    .line 1173
    .local v24, "suffix":Ljava/lang/String;
    const-string v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    .line 1190
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v20    # "method":Ljava/lang/reflect/Method;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "suffix":Ljava/lang/String;
    :cond_7
    return-void

    .line 1177
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v20    # "method":Ljava/lang/reflect/Method;
    .restart local v21    # "methodValue":Ljava/lang/Object;
    .restart local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1178
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1185
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v21    # "methodValue":Ljava/lang/Object;
    .end local v23    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 1187
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 1186
    :catch_2
    move-exception v3

    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1299
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1301
    .local v3, "hasIndexMapping":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1302
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1304
    .local v4, "hasMapping":Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1305
    .local v13, "resolveId":Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1307
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1309
    const/4 v14, 0x0

    .line 1311
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    .line 1313
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1314
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1315
    array-length v11, v5

    .line 1316
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1317
    aget-object v9, v5, v8

    .line 1318
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1319
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1325
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1326
    array-length v11, v10

    .line 1327
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1328
    aget-object v9, v10, v8

    .line 1329
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1330
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1336
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_1
    if-eqz v13, :cond_8

    .line 1337
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "value":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1342
    .restart local v14    # "value":Ljava/lang/String;
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1307
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1299
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "valuesCount":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1302
    .restart local v3    # "hasIndexMapping":Z
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1304
    .restart local v4    # "hasMapping":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1316
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "resolveId":Z
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1327
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1339
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 1344
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 10
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    array-length v0, p1

    .line 1281
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1282
    aget-object v1, p1, v3

    .line 1283
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1284
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1285
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_3

    const/4 v6, 0x1

    .line 1286
    .local v6, "test":Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-nez v2, :cond_2

    .line 1287
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1289
    .local v7, "value":Ljava/lang/String;
    const-string v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1281
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1285
    .end local v6    # "test":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1292
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 480
    const/16 v6, 0x40

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 481
    const-string v6, "@"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 483
    .local v0, "className":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 485
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 486
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 487
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    .line 495
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_0
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 850
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, p0

    .line 880
    :cond_0
    :goto_0
    return-object v1

    .line 854
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 855
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 856
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 857
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    move-object v4, v3

    .line 858
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 859
    .local v1, "found":Landroid/view/View;
    if-nez v1, :cond_0

    .line 865
    .end local v1    # "found":Landroid/view/View;
    :cond_2
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_3

    .line 866
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 868
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_0

    .line 872
    .end local v1    # "found":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_4

    .line 873
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 875
    .restart local v1    # "found":Landroid/view/View;
    if-nez v1, :cond_0

    .line 855
    .end local v1    # "found":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 862
    .restart local v3    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 863
    goto :goto_0

    .line 880
    .end local v3    # "view":Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 987
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 989
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 990
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 993
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 995
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 996
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 1016
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v3, "fields":[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 1000
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v4, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1003
    array-length v0, v2

    .line 1004
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 1005
    aget-object v1, v2, v5

    .line 1006
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1007
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1008
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1013
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1014
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1016
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 1021
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1023
    :cond_0
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 1024
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1027
    :cond_1
    sget-object v3, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1029
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1030
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 1052
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v6, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 1034
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1037
    array-length v0, v5

    .line 1038
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1039
    aget-object v4, v5, v2

    .line 1040
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-eq v7, v8, :cond_3

    .line 1043
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1044
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    sget-object v7, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v8, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1049
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1050
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 1052
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 385
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 396
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 503
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1540
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1541
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1542
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1544
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$8;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$8;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1560
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1561
    :catch_0
    move-exception v7

    .line 1562
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1569
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 884
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 885
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "viewClassName":Ljava/lang/String;
    const-string v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    const-string v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 892
    .end local v0    # "viewClassName":Ljava/lang/String;
    :goto_0
    return v1

    .line 889
    .restart local v0    # "viewClassName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 892
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 758
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 753
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .prologue
    const/4 v3, 0x1

    .line 794
    if-eqz p0, :cond_0

    .line 795
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 796
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 798
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v0, p0, p1, v2}, Landroid/view/ViewDebug$6;-><init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 812
    const-wide/16 v3, 0xfa0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 813
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-object v3

    .line 814
    .restart local v0    # "cache":[Landroid/graphics/Bitmap;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 820
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 520
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 522
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_1

    .line 525
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 530
    :goto_0
    const-string v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    if-eqz v2, :cond_3

    .line 536
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    move-object v1, v2

    .line 539
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 527
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_2
    const-string v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 533
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v4, "View"

    const-string v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 536
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v4

    .line 535
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 532
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_3
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 545
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const-wide/16 v1, 0x0

    .line 550
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_4

    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v5

    .line 577
    .local v5, "durationMeasure":J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_5

    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v3

    .line 591
    .local v3, "durationLayout":J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v1

    .line 622
    .local v1, "durationDraw":J
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 624
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1, v10}, Ljava/io/BufferedWriter;->write(I)V

    .line 626
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 628
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v7, p0

    .line 629
    check-cast v7, Landroid/view/ViewGroup;

    .line 630
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 631
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v0, :cond_6

    .line 632
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 631
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0    # "count":I
    .end local v1    # "durationDraw":J
    .end local v3    # "durationLayout":J
    .end local v5    # "durationMeasure":J
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    :cond_4
    move-wide v5, v1

    .line 550
    goto :goto_0

    .restart local v5    # "durationMeasure":J
    :cond_5
    move-wide v3, v1

    .line 577
    goto :goto_1

    .line 635
    .restart local v1    # "durationDraw":J
    .restart local v3    # "durationLayout":J
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 644
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 645
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v5, [J

    .line 647
    .local v0, "duration":[J
    new-instance v5, Landroid/view/ViewDebug$5;

    invoke-direct {v5, p1, v0, v2}, Landroid/view/ViewDebug$5;-><init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 664
    const-wide/16 v5, 0xfa0

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 665
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    return-wide v3

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "View"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not complete the profiling of the view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    goto :goto_0
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 507
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 508
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 514
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1349
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1351
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1359
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1353
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 1357
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1577
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1578
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1579
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 1580
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1584
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1586
    new-instance v2, Landroid/view/ViewDebug$9;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$9;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1592
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1272
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1273
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1274
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1275
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    if-eqz p1, :cond_0

    .line 1364
    const-string v0, "[EXCEPTION]"

    .line 1366
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1375
    .end local v0    # "output":Ljava/lang/String;
    :goto_0
    return-void

    .line 1368
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    throw v1

    .line 1373
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    const-string v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
