.class public Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
.super Lcom/samsung/android/smartclip/SmartClipDataCropper;
.source "SmartClipDataCropperImpl.java"


# static fields
.field private static final EXTRACTION_RESULT_MAIN_MASKING:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SmartClipDataCropperImpl"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

.field protected mIsExtractingData:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mPendingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .param p3, "winFrameRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropper;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 76
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 83
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 100
    :cond_0
    return-void
.end method

.method private adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 451
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 452
    .local v2, "screenRectOfView":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 454
    .local v1, "intersection":Landroid/graphics/Rect;
    if-nez p2, :cond_1

    .line 455
    const-string v5, "SmartClipDataCropperImpl"

    const-string v7, "adjustMetaAreaRect : rect is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 476
    .end local v1    # "intersection":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v1

    .line 460
    .restart local v1    # "intersection":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 461
    .local v0, "curView":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_4

    .line 462
    instance-of v5, v0, Landroid/widget/ScrollView;

    if-nez v5, :cond_2

    instance-of v5, v0, Landroid/widget/AbsListView;

    if-eqz v5, :cond_3

    :cond_2
    move-object v5, v0

    .line 463
    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 464
    .local v4, "scrollViewRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 465
    .local v3, "scrollViewIntersection":Landroid/graphics/Rect;
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 466
    move-object v2, v3

    .line 469
    .end local v3    # "scrollViewIntersection":Landroid/graphics/Rect;
    .end local v4    # "scrollViewRect":Landroid/graphics/Rect;
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 472
    :cond_4
    invoke-virtual {v1, p2, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eq v5, v7, :cond_0

    .line 475
    const-string v5, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustMetaAreaRect : there is no intersection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 476
    goto :goto_0
.end method

.method private getMainResultFromExtractionResult(I)I
    .locals 1
    .param p1, "extractionResult"    # I

    .prologue
    .line 447
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 482
    move-object v2, p1

    .line 483
    .local v2, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v4, 0x0

    .line 485
    .local v4, "opaqueRect":Landroid/graphics/Rect;
    :goto_0
    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 487
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 488
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 489
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_0

    .line 490
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 491
    .local v3, "metaRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 492
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 493
    .local v0, "adjustedRect":Landroid/graphics/Rect;
    if-nez v4, :cond_1

    .line 494
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "opaqueRect":Landroid/graphics/Rect;
    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 501
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .restart local v4    # "opaqueRect":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    .line 502
    goto :goto_0

    .line 496
    .restart local v0    # "adjustedRect":Landroid/graphics/Rect;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "metaRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 503
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOpaqueBackgroundRect : opaqueRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  element="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-object v4
.end method

.method private removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p2, "rectToDelete"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 511
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 512
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    move-object v1, v0

    .line 514
    .local v1, "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 516
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 519
    .end local v1    # "cur":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v5

    if-nez v5, :cond_2

    .line 520
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 521
    .local v2, "metaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v5

    if-ne v5, v3, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 531
    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :goto_1
    return v3

    .line 525
    .restart local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 527
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto :goto_1

    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_2
    move v3, v4

    .line 531
    goto :goto_1
.end method

.method private traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 536
    const/4 v14, 0x0

    .line 538
    .local v14, "haveCroppedView":Z
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    if-lez v24, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    if-lez v24, :cond_c

    .line 539
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v20

    .line 543
    .local v20, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 546
    new-instance v11, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 547
    .local v11, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipTags()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v10

    .line 548
    .local v10, "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v10, :cond_0

    .line 549
    invoke-virtual {v10}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 553
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v17

    .line 554
    .local v17, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    const/4 v13, 0x0

    .line 556
    .local v13, "extractionResult":I
    if-eqz v17, :cond_1

    .line 557
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v11, v2}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v13

    .line 564
    :goto_0
    move-object v12, v11

    .line 565
    .local v12, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v12, :cond_2

    .line 566
    invoke-virtual {v12}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 567
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v12, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 569
    invoke-virtual {v12, v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v12

    .line 570
    goto :goto_1

    .line 560
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v13

    goto :goto_0

    .line 572
    .restart local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v18

    .line 573
    .local v18, "mainResult":I
    packed-switch v18, :pswitch_data_0

    .line 588
    if-nez p1, :cond_4

    const-string/jumbo v23, "null"

    .line 589
    .local v23, "viewString":Ljava/lang/String;
    :goto_2
    const-string v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown main extraction result value : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " / View = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 596
    .end local v23    # "viewString":Ljava/lang/String;
    :goto_3
    :pswitch_0
    and-int/lit16 v0, v13, 0x100

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v21, 0x1

    .line 597
    .local v21, "skipExtractionFromChildView":Z
    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    if-nez v21, :cond_6

    move-object/from16 v22, p1

    .line 598
    check-cast v22, Landroid/view/ViewGroup;

    .line 599
    .local v22, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 601
    .local v6, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v6, :cond_6

    .line 602
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 604
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v11}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 606
    .local v4, "bFound":Z
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_3

    .line 608
    const/4 v14, 0x1

    .line 601
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 579
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v21    # "skipExtractionFromChildView":Z
    .end local v22    # "vg":Landroid/view/ViewGroup;
    :pswitch_1
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_3

    .line 583
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const/4 v14, 0x1

    .line 585
    goto :goto_3

    .line 588
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 596
    :cond_5
    const/16 v21, 0x0

    goto :goto_4

    .line 614
    .restart local v21    # "skipExtractionFromChildView":Z
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_7

    .line 615
    const/4 v14, 0x1

    .line 618
    :cond_7
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_c

    .line 620
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 622
    invoke-virtual {v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 623
    .local v7, "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/16 v19, 0x0

    .line 628
    .local v19, "opaqueRect":Landroid/graphics/Rect;
    :cond_8
    :goto_6
    if-eqz v7, :cond_b

    .line 629
    const/16 v16, 0x0

    .line 630
    .local v16, "isCurElementRemoved":Z
    move-object v8, v7

    .line 631
    .local v8, "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 634
    if-eqz v19, :cond_9

    .line 635
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    move-result v16

    .line 639
    :cond_9
    if-nez v16, :cond_8

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getOpaqueBackgroundRect(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;

    move-result-object v9

    .line 641
    .local v9, "curOpaqueRect":Landroid/graphics/Rect;
    if-eqz v9, :cond_8

    .line 642
    if-nez v19, :cond_a

    .line 643
    move-object/from16 v19, v9

    goto :goto_6

    .line 645
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 655
    .end local v7    # "childElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v8    # "curElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v16    # "isCurElementRemoved":Z
    .end local v19    # "opaqueRect":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 660
    .end local v10    # "defaultViewTags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .end local v11    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v12    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v13    # "extractionResult":I
    .end local v17    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v18    # "mainResult":I
    .end local v20    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v21    # "skipExtractionFromChildView":Z
    :cond_c
    return v14

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .param p4, "parentSlookSmartClipDataElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 664
    const/4 v10, 0x0

    .line 666
    .local v10, "haveCroppedView":Z
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    if-lez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    if-lez v19, :cond_5

    .line 667
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v15

    .line 669
    .local v15, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 672
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v15}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 675
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    const/4 v9, 0x0

    .line 676
    .local v9, "extractionResult":I
    const/4 v14, 0x0

    .line 677
    .local v14, "needToCallListener":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getSmartClipDataExtractionListener()Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;

    move-result-object v12

    .line 679
    .local v12, "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    if-eqz v12, :cond_0

    .line 680
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 681
    const/4 v14, 0x1

    .line 685
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 686
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v7, v1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v9

    .line 693
    :goto_0
    move-object v8, v7

    .line 694
    .local v8, "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v8, :cond_2

    .line 695
    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 696
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v3}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 698
    invoke-virtual {v8, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v8

    .line 699
    goto :goto_1

    .line 689
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v9

    goto :goto_0

    .line 701
    .restart local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v13

    .line 702
    .local v13, "mainResult":I
    packed-switch v13, :pswitch_data_0

    .line 717
    if-nez p1, :cond_6

    const-string/jumbo v18, "null"

    .line 718
    .local v18, "viewString":Ljava/lang/String;
    :goto_2
    const-string v19, "SmartClipDataCropperImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown main extraction result value : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / View = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 725
    .end local v18    # "viewString":Ljava/lang/String;
    :goto_3
    :pswitch_0
    and-int/lit16 v0, v9, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/16 v16, 0x1

    .line 726
    .local v16, "skipExtractionFromChildView":Z
    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    if-nez v16, :cond_3

    move-object/from16 v17, p1

    .line 727
    check-cast v17, Landroid/view/ViewGroup;

    .line 728
    .local v17, "vg":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 730
    .local v6, "childCount":I
    add-int/lit8 v11, v6, -0x1

    .local v11, "i":I
    :goto_5
    if-ltz v11, :cond_3

    .line 731
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 733
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v7}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 735
    .local v4, "bFound":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_8

    .line 737
    const/4 v10, 0x1

    .line 744
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v17    # "vg":Landroid/view/ViewGroup;
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v19

    if-nez v19, :cond_4

    .line 745
    const/4 v10, 0x1

    .line 748
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    .line 749
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 754
    .end local v7    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v9    # "extractionResult":I
    .end local v12    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .end local v13    # "mainResult":I
    .end local v14    # "needToCallListener":Z
    .end local v15    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v16    # "skipExtractionFromChildView":Z
    :cond_5
    return v10

    .line 708
    .restart local v7    # "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v8    # "elementTraveler":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "extractionResult":I
    .restart local v12    # "listener":Lcom/samsung/android/smartclip/SmartClipDataExtractionListener;
    .restart local v13    # "mainResult":I
    .restart local v14    # "needToCallListener":Z
    .restart local v15    # "screenRectOfView":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_3

    .line 712
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const/4 v10, 0x1

    .line 714
    goto :goto_3

    .line 717
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 725
    :cond_7
    const/16 v16, 0x0

    goto :goto_4

    .line 730
    .restart local v4    # "bFound":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v11    # "i":I
    .restart local v16    # "skipExtractionFromChildView":Z
    .restart local v17    # "vg":Landroid/view/ViewGroup;
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected addIntentMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V
    .locals 6
    .param p1, "element"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    .line 147
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 148
    const-string v3, "SmartClipDataCropperImpl"

    const-string v4, "addIntentMetaTag : mContext is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->getUsefullIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->isValidIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 155
    invoke-static {v1}, Lcom/samsung/android/smartclip/SmartClipIntentUtils;->marshall(Landroid/content/Intent;)[B

    move-result-object v0

    .line 157
    .local v0, "binaryData":[B
    const-string v3, "SmartClipDataCropperImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addIntentMetaTag : package name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string v3, "app_launch_info"

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 160
    .local v2, "intentTag":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-interface {p1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    goto :goto_0
.end method

.method public doExtractSmartClipData(Landroid/view/View;)Z
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v6, :cond_0

    .line 108
    const-string v5, "SmartClipDataCropperImpl"

    const-string v6, "doExtractSmartClipData : extractionRequest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v4

    .line 112
    :cond_0
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget-object v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;-><init>(Landroid/graphics/Rect;)V

    .line 114
    .local v1, "croppedArea":Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    .local v0, "cropRect":Landroid/graphics/Rect;
    if-nez v0, :cond_2

    const-string/jumbo v2, "null"

    .line 116
    .local v2, "rectAreaStr":Ljava/lang/String;
    :goto_1
    const-string v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doExtractSmartClipData : Extraction start! reqId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, v8, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Cropped area = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 119
    new-instance v6, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 120
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    move-result-object v3

    .line 122
    .local v3, "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 123
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    .line 131
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->addIntentMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)V

    .line 134
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setAppPackageName(Ljava/lang/String;)V

    .line 136
    iput-boolean v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 138
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    :cond_1
    move v4, v5

    .line 143
    goto/16 :goto_0

    .line 115
    .end local v2    # "rectAreaStr":Ljava/lang/String;
    .end local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 125
    .restart local v2    # "rectAreaStr":Ljava/lang/String;
    .restart local v3    # "rootElement":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, p1, v1, v6, v3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Z

    goto :goto_2
.end method

.method public extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v2, 0x1

    .line 288
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "viewClassName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    const-string v4, "com.google.android.youtube"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PlayerView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    .line 314
    .end local v1    # "viewClassName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 292
    .restart local v1    # "viewClassName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 295
    :cond_2
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 298
    :cond_3
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v2

    goto :goto_0

    .line 304
    :cond_4
    instance-of v3, p1, Landroid/view/TextureView;

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 307
    .end local v1    # "viewClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassCastException in traverseView : target class is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getUrl"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 424
    .local v2, "getUrlMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 425
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v6, "url"

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getTitle"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 428
    .local v1, "getTitleMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "title":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v6, "title"

    invoke-direct {v5, v6, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 431
    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v5, :cond_0

    .line 432
    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v5, :cond_1

    .line 433
    invoke-interface {p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 441
    .end local v1    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 434
    .restart local v1    # "getTitleMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "getUrlMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 438
    .end local v1    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 393
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "plain_text"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 396
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 354
    const-string/jumbo v9, "plain_text"

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4

    move-object v7, p1

    .line 355
    check-cast v7, Landroid/widget/TextView;

    .line 356
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    .line 358
    .local v8, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v8, :cond_0

    instance-of v9, v8, Landroid/text/method/PasswordTransformationMethod;

    if-nez v9, :cond_4

    .line 360
    :cond_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 361
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 362
    const-string v0, ""

    .line 366
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v9, v9, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 368
    invoke-interface {p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 369
    .local v6, "spanRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_2

    .line 370
    invoke-virtual {p2, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 371
    const-string v0, ""

    .line 374
    :cond_2
    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 375
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 376
    .local v4, "selStart":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 377
    .local v3, "selEnd":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 378
    .local v2, "min":I
    const/4 v9, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 380
    .local v1, "max":I
    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 381
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 382
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "text_selection"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 386
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "spanRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "plain_text"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 389
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_4
    const/4 v9, 0x1

    return v9
.end method

.method public extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 415
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "plain_text"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .param p3, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 320
    const/4 v1, 0x1

    const-string v2, "Director"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v6

    .line 321
    .local v6, "directors":[Ljava/lang/Object;
    array-length v0, v6

    if-nez v0, :cond_0

    .line 322
    const-string v0, "SmartClipDataCropperImpl"

    const-string v1, "extractDefaultSmartClipData_YoutubePlayerView : Cannot find D. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x1

    const-string v2, "Director"

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v6

    .line 326
    :cond_0
    array-length v0, v6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_5

    .line 327
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x1

    const-string v2, "Video"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v9

    .line 328
    .local v9, "videos":[Ljava/lang/Object;
    array-length v0, v9

    if-nez v0, :cond_1

    .line 329
    const-string v0, "SmartClipDataCropperImpl"

    const-string v1, "extractDefaultSmartClipData_YoutubePlayerView : Cannot find V. Retrying..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x1

    const-string v2, "Video"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v9

    .line 333
    :cond_1
    array-length v0, v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v0, v9, v0

    if-eqz v0, :cond_4

    .line 334
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 335
    .local v8, "videoId":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 336
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 339
    :cond_2
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 340
    .local v7, "title":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 341
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v1, "title"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 350
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "videoId":Ljava/lang/String;
    .end local v9    # "videos":[Ljava/lang/Object;
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 344
    .restart local v9    # "videos":[Ljava/lang/Object;
    :cond_4
    const-string v0, "SmartClipDataCropperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The count of V is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    .end local v9    # "videos":[Ljava/lang/Object;
    :cond_5
    const-string v0, "SmartClipDataCropperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The count of D is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I
    .locals 3
    .param p1, "element"    # Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 203
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 204
    .local v1, "pendingCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 209
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 204
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getExtractionMode()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getParentList(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 184
    .local v0, "cur":Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v0, p1

    .line 185
    check-cast v0, Landroid/view/ViewParent;

    .line 191
    :goto_0
    if-eqz v0, :cond_2

    .line 192
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 194
    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_2
    return-object v1
.end method

.method public getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 279
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 280
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 281
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 282
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 283
    return-object v1
.end method

.method public getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 266
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 269
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 270
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 271
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 272
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 274
    return-object v1
.end method

.method public getSmartClipDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepository;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method protected sendExtractionResultToSmartClipService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it still have pending element!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    move-result v0

    goto :goto_0

    .line 221
    :cond_1
    const-string v1, "SmartClipDataCropperImpl"

    const-string v2, "Cannot send the extraction result due to it is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 7
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    if-nez v4, :cond_0

    .line 236
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : extractionRequest is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return v3

    .line 241
    :cond_0
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 243
    .local v0, "croppedRect":Landroid/graphics/Rect;
    const-string v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "sendExtractionResultToSmartClipService : -- Extracted SmartClip data information --"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Request Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Extraction mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1, v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    .line 252
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "spengestureservice"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 253
    .local v2, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-direct {v1, v3, v4, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    .line 256
    .local v1, "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    if-ltz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v3, v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setWindowLayer(I)V

    .line 260
    :cond_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    .line 262
    const/4 v3, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "response":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    .end local v2    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_2
    const-string v3, "SmartClipDataCropperImpl"

    const-string/jumbo v4, "sendExtractionResultToSmartClipService : The repository is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    .prologue
    .line 165
    check-cast p2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .end local p2    # "resultElement":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    invoke-virtual {p0, p2}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->findElementIndexFromPendingList(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)I

    move-result v0

    .line 166
    .local v0, "elementIndex":I
    if-ltz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    .line 173
    :cond_0
    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
