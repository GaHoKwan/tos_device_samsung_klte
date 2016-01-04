.class public Lcom/samsung/android/writingbuddy/PopupCue;
.super Ljava/lang/Object;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WritingBuddyPopupCue"

.field public static final TYPE_MULTILINE_EDITOR:I = 0x2

.field public static final TYPE_NONFORM_VIEW:I = 0x3

.field public static final TYPE_SINGLELINE_EDITOR:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

.field private mHoverListner:Landroid/view/View$OnHoverListener;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsAirButtonClicked:Z

.field private mIsShowing:Z

.field private mPopupHeight:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field private mPopupWidth:I

.field private mPopupXfromAnchor:I

.field private mPopupYfromAnchor:I

.field private mTouchListner:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->initPopup()V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/writingbuddy/PopupCue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/PopupCue;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return p1
.end method

.method private computePosition(I)V
    .locals 24
    .param p1, "type"    # I

    .prologue
    .line 185
    const/4 v4, 0x0

    .line 186
    .local v4, "cueWidth":I
    const/4 v3, 0x0

    .line 187
    .local v3, "cueHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->getHoverCueDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 188
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 190
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v16

    .line 202
    .local v16, "visibleScrRect":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 203
    .local v15, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 204
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 206
    const/4 v11, 0x0

    .line 207
    .local v11, "paddingLeft":I
    const/4 v12, 0x0

    .line 208
    .local v12, "paddingTop":I
    const/4 v10, 0x0

    .line 210
    .local v10, "paddingBottom":I
    const/16 v17, 0x0

    .line 211
    .local v17, "x":I
    const/16 v19, 0x0

    .line 213
    .local v19, "y":I
    const/16 v18, 0x0

    .line 214
    .local v18, "xFromAnchor":I
    const/16 v20, 0x0

    .line 232
    .local v20, "yFromAnchor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    check-cast v14, Landroid/widget/EditText;

    .line 236
    .local v14, "targetView":Landroid/widget/EditText;
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 238
    .local v7, "l":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050130

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v9, v0

    .line 239
    .local v9, "offestFromCursor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050131

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v6, v0

    .line 240
    .local v6, "imagePaddingBottom":I
    if-eqz v7, :cond_6

    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v21

    if-lez v21, :cond_6

    .line 242
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    sub-int v8, v21, v22

    .line 243
    .local v8, "layoutHeight":I
    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v22

    add-int v21, v21, v22

    div-int/lit8 v22, v8, 0x2

    sub-int v2, v21, v22

    .line 244
    .local v2, "centerYofText":I
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v2

    sub-int v22, v3, v6

    sub-int v19, v21, v22

    .line 246
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/EditText;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v21

    add-int v17, v22, v21

    .line 247
    add-int v17, v17, v9

    .line 260
    .end local v8    # "layoutHeight":I
    :goto_0
    add-int v21, v17, v4

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 261
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v17, v21, v4

    .line 273
    :cond_1
    if-gez v17, :cond_2

    const/16 v17, 0x0

    .line 274
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getStatusBarHeight()I

    move-result v13

    .line 275
    .local v13, "statusBarHeight":I
    move/from16 v0, v19

    if-ge v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isStatusBarShowing()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 276
    move/from16 v19, v13

    .line 278
    :cond_3
    if-gez v19, :cond_4

    const/16 v19, 0x0

    .line 280
    :cond_4
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v17, v21

    .line 281
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v19, v21

    .line 306
    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v9    # "offestFromCursor":I
    .end local v13    # "statusBarHeight":I
    .end local v14    # "targetView":Landroid/widget/EditText;
    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    .line 307
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    .line 309
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 310
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 312
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 313
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 315
    sget-boolean v21, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v21, :cond_5

    .line 316
    const-string v21, "WritingBuddyPopupCue"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computePosition x : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " y : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " w : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " h : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_5
    return-void

    .line 249
    .restart local v6    # "imagePaddingBottom":I
    .restart local v7    # "l":Landroid/text/Layout;
    .restart local v9    # "offestFromCursor":I
    .restart local v14    # "targetView":Landroid/widget/EditText;
    :cond_6
    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    .line 250
    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v12

    .line 251
    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v10

    .line 253
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v17, v21, v11

    .line 254
    add-int v17, v17, v9

    .line 256
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v21

    add-int v22, v12, v10

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v2, v12, v21

    .line 257
    .restart local v2    # "centerYofText":I
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v2

    sub-int v22, v3, v6

    sub-int v19, v21, v22

    goto/16 :goto_0

    .line 285
    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v9    # "offestFromCursor":I
    .end local v14    # "targetView":Landroid/widget/EditText;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105012e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v11, v0

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105012f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v12, v0

    .line 288
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v17, v21, v11

    .line 289
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v19, v21, v12

    .line 291
    add-int v21, v17, v4

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 292
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v17, v21, v4

    .line 295
    :cond_8
    add-int v21, v19, v3

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 296
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v19, v21, v3

    .line 299
    :cond_9
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 300
    :cond_a
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 302
    :cond_b
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v17, v21

    .line 303
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v19, v21

    goto/16 :goto_1
.end method

.method private createPopup()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;-><init>(Lcom/samsung/android/writingbuddy/PopupCue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 109
    :cond_1
    return-void
.end method

.method private createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 112
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "WritingBuddyPopupCue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPopupLayoutParam() x : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  w : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 120
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 125
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WritingBuddyCue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 129
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 130
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 131
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    const v1, 0x1030357

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 135
    return-object v0
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 405
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 408
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 409
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 410
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 412
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1

    .line 408
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 394
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 397
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 398
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 399
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1

    .line 397
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getStatusBarHeight()I
    .locals 4

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, "height":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "WritingBuddyPopupCue"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 418
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 419
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 421
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 422
    .local v4, "top":I
    const/4 v0, 0x0

    .line 424
    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    .line 425
    check-cast v2, Landroid/view/View;

    .line 428
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    .line 430
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 431
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 432
    const/4 v4, 0x0

    .line 445
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 446
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 447
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 453
    :goto_2
    move-object v5, v2

    .line 454
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 455
    goto :goto_0

    .line 434
    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .line 449
    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 450
    const/4 v0, 0x0

    goto :goto_2

    .line 457
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectInWindow : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-object v3
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 464
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 465
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 467
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 468
    .local v4, "top":I
    const/4 v0, 0x0

    .line 470
    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    .line 471
    check-cast v2, Landroid/view/View;

    .line 474
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 475
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    .line 476
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 477
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 478
    const/4 v4, 0x0

    .line 492
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 493
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 500
    :goto_2
    move-object v5, v2

    .line 501
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 502
    goto :goto_0

    .line 480
    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .line 496
    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 497
    const/4 v0, 0x0

    goto :goto_2

    .line 504
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVisibleRectOnScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v3
.end method

.method private initPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 85
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 86
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 87
    iput v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 91
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 92
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 94
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 95
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 96
    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 389
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 602
    move-object v0, p2

    .line 603
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 604
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 606
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public dismiss(Z)V
    .locals 6
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 168
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 169
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 170
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    const v0, 0x1030357

    .line 171
    .local v0, "animationResID":I
    :goto_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v0, :cond_0

    move-object v3, v1

    .line 172
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 173
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .end local v0    # "animationResID":I
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v3, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    .line 180
    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 181
    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    .line 182
    return-void

    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v0, v4

    .line 170
    goto :goto_0
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 584
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getRectInAnchor()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 373
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupXfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 374
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupYfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 375
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 376
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 378
    return-object v0
.end method

.method public isAirButtonClicked()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    return v0
.end method

.method public isPointInPopup(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 382
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    return v0
.end method

.method public isStatusBarShowing()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    .line 571
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const/4 v2, 0x1

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyPopupCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 362
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 354
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    .line 344
    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    .line 345
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    .line 339
    iput p2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    .line 340
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 349
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopup()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mIsShowing:Z

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/PopupCue;->updatePopupPosition()V

    goto :goto_0
.end method

.method public switchCueButton(Z)V
    .locals 1
    .param p1, "isTouched"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->switchCueButton(Z)V

    .line 163
    return-void
.end method

.method public updatePopupPosition()V
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 323
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v1, Lcom/samsung/android/writingbuddy/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "WritingBuddyPopupCue"

    const-string/jumbo v2, "updatePopupPosition()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->computePosition(I)V

    .line 329
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 330
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 331
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 332
    iget v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/PopupCue;->mCueContainerView:Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-void
.end method
