.class public Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;


# static fields
.field public static final EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final EXTRACTION_MODE_NORMAL:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mId:I

.field protected mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field protected mRectOnScreen:Landroid/graphics/Rect;

.field protected mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mId:I

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method private setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v4, :cond_2

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v0, v5}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    move v2, v3

    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->isValidMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTag(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearMetaData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V

    return-void
.end method

.method public createChildInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    return-object v0
.end method

.method public dump()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getDumpString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getAllTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getDataRepository()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method protected getDumpString()Ljava/lang/String;
    .locals 11

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Rect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v9}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_5

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v9, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "null"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    instance-of v9, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v9, :cond_2

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", Extra data size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "mRectOnScreen(NULL)\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "No meta tag\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method public getExtractionMode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    goto :goto_0
.end method

.method public getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getLastChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getMetaAreaRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParentCount()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyTag(Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_3
    invoke-virtual {v0, p0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .locals 2

    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V

    return-object v0
.end method

.method public removeChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_1

    const-string v2, "SmartClipDataElementImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChild : Incorrect parent of SlookSmartClipDataElement. element="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-ne v1, v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)V

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-void
.end method

.method public setMetaAreaRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->removeTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTagTable(Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eq p0, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_4

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    goto :goto_0
.end method
