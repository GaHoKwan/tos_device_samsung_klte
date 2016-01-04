.class Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x1090125

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x1090127

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x1090126


# instance fields
.field private final ITEM_WIDTH:I

.field public final KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

.field public final KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

.field private final WEBSEARCH_ITEM_WIDTH:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentViewWidth:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mDividerImageView7:Landroid/widget/ImageView;

.field private mDividerImageView8:Landroid/widget/ImageView;

.field private mDividerImageView9:Landroid/widget/ImageView;

.field private mDividerWidth:I

.field private mFindTextView:Landroid/widget/TextView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemWidth:I

.field private mMenuCount:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupWidthLandscape:I

.field private mPopupWidthPortrait:I

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 25

    .prologue
    .line 1413
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    .line 1414
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    const v23, 0x10102c8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1363
    const/16 v21, 0x47

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->ITEM_WIDTH:I

    .line 1364
    const/16 v21, 0x50

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->WEBSEARCH_ITEM_WIDTH:I

    .line 1366
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    .line 1367
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    .line 1368
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    .line 1369
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    .line 1370
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingHeight:I

    .line 1371
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    .line 1372
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    .line 1410
    new-instance v21, Landroid/content/ComponentName;

    const-string/jumbo v22, "sec_container_1.com.sec.android.app.sbrowser"

    const-string v23, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    .line 1411
    new-instance v21, Landroid/content/ComponentName;

    const-string/jumbo v22, "sec_container_1.com.android.browser"

    const-string v23, "com.android.browser.BrowserActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    .line 1415
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1416
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1417
    const/16 v21, 0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1419
    const/16 v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1421
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1424
    .local v4, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 1427
    .local v15, "inflater":Landroid/view/LayoutInflater;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500e2

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1430
    .local v18, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500e2

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x28

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1433
    .local v19, "textLayout2":Landroid/view/ViewGroup$LayoutParams;
    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1436
    .local v20, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1439
    .local v17, "matchParent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v16, Landroid/widget/LinearLayout;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1440
    .local v16, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1441
    const/16 v21, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1442
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    const v21, 0x1090126

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1449
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104000d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1454
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcSelectAll:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1455
    .local v5, "drawable1":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1459
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1464
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040003

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1469
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCut:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1470
    .local v7, "drawable2":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1474
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1479
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040001

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1484
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcCopy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1485
    .local v8, "drawable3":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1489
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1494
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104000b

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1499
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcPaste:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1500
    .local v9, "drawable4":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1504
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1509
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040018

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1514
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcClipboard:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1515
    .local v10, "drawable5":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1519
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1524
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104087c

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1529
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcShare:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1530
    .local v11, "drawable6":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1533
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1537
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104087b

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1542
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDict:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1543
    .local v6, "drawable10":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1548
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1553
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104080f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1558
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcWebSearch:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1559
    .local v12, "drawable7":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1563
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1568
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x1040a4e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1573
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcTranslate:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1574
    .local v14, "drawable9":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1578
    const v21, 0x1090125

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1583
    const v21, 0x1090127

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x104080e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1588
    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcFind:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1589
    .local v13, "drawable8":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1610
    return-void
.end method

.method static synthetic access$2200(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    .prologue
    .line 1362
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    return v0
.end method


# virtual methods
.method calculateSelectPopupSizes()V
    .locals 4

    .prologue
    .line 1614
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    .line 1615
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v3, v3, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcBG:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1616
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1617
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 1618
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1619
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    .line 1620
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingHeight:I

    .line 1621
    const/4 v1, 0x0

    .line 1626
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v3, v3, Landroid/webkitsec/WebViewClassic;->mSelectPopupRsrcDivider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    .line 1627
    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    .line 1628
    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    .line 1629
    return-void

    .line 1623
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method getSelectPopupHeight()I
    .locals 2

    .prologue
    .line 2021
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2022
    .local v0, "density":F
    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method getSelectPopupWidth()I
    .locals 2

    .prologue
    .line 2009
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 2010
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v0, v1

    .line 2012
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 2005
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2006
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 1989
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1990
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1995
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xb9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1986
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1845
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->copySelectionSec()Z

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 1848
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1849
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 1852
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1853
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    .line 1855
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1856
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 1858
    const-string/jumbo v17, "webview"

    const-string v18, "getSelectionSec() is null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1861
    :cond_6
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1862
    .local v13, "selection":Ljava/lang/StringBuffer;
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7530

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 1863
    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "selected string is too long. Cut it"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1866
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1867
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string v17, "com.android.email"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1868
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1869
    .local v14, "send":Landroid/content/Intent;
    const-string/jumbo v17, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1870
    const-string v17, "android.intent.extra.TEXT"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    const-string/jumbo v17, "theme"

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1873
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    const v18, 0x104087c

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 1875
    .local v8, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1886
    .end local v8    # "i":Landroid/content/Intent;
    .end local v14    # "send":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1887
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 1877
    .restart local v14    # "send":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1879
    .local v7, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1884
    .end local v7    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v14    # "send":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1889
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "selection":Ljava/lang/StringBuffer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_a

    .line 1891
    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "mWebView.getSelectionSec() is null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1897
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 1898
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v17, "true"

    const-string v18, "isKnoxMode"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1899
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v3, "callBrowserIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1902
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v15, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7d0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 1904
    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1906
    :cond_c
    const/16 v16, 0x0

    .line 1907
    .local v16, "u":Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Web_DisableGoogleInBrowserSearchEngine"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1908
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://m5.baidu.com/s?from=124n&word="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1911
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1913
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 1926
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1910
    :cond_e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "https://www.google.com/search?ie=UTF-8&client=ms-android-samsung&source=android-browser&q="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_2

    .line 1915
    :catch_1
    move-exception v5

    .line 1917
    .local v5, "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 1926
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    goto :goto_3

    .line 1920
    :catch_2
    move-exception v6

    .line 1921
    .local v6, "error2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string/jumbo v17, "webview"

    const-string v18, "NameNotFoundException : There are no browsers(sbrowser and stockbrowser"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 1926
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    goto/16 :goto_3

    .line 1925
    .end local v5    # "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "error2":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 1926
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1925
    throw v17

    .line 1933
    .end local v3    # "callBrowserIntent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v16    # "u":Landroid/net/Uri;
    :cond_12
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1934
    .restart local v15    # "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x7d0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    .line 1935
    const/16 v17, 0x7d0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1938
    :cond_13
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1939
    .restart local v8    # "i":Landroid/content/Intent;
    const-string/jumbo v17, "query"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-nez v17, :cond_14

    .line 1944
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1946
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1948
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v15    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v12

    .line 1950
    .local v12, "sel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 1951
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/webkitsec/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1954
    .end local v12    # "sel":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 1956
    :try_start_4
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1957
    .local v9, "intent":Landroid/content/Intent;
    const-string v17, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1958
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1959
    const-string/jumbo v17, "mode"

    const-string/jumbo v18, "viewer"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    const-string/jumbo v17, "source_text"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1966
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v4

    .line 1967
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1971
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1973
    :try_start_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1974
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v17, "com.sec.android.app.dictionary.SEARCH"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    const-string v17, "keyword"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 1979
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->hide()V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1981
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v4

    .line 1982
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v1, 0xba

    .line 1816
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1831
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1818
    :pswitch_0
    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2300()Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1826
    :pswitch_1
    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectActionWindow:Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2300()Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindowAfterDelay()V

    goto :goto_0

    .line 1816
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method popupAnimationEffect(I)V
    .locals 7
    .param p1, "itemCount"    # I

    .prologue
    .line 1781
    const/4 v2, 0x0

    .line 1782
    .local v2, "menuLimit":I
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1783
    const/4 v2, 0x4

    .line 1787
    :goto_0
    move v0, p1

    .line 1788
    .local v0, "menuItemCount":I
    if-le v0, v2, :cond_0

    .line 1789
    sub-int v1, v0, v2

    .line 1791
    .local v1, "menuItemDiff":I
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-int v5, v5

    mul-int/lit8 v6, v1, 0x64

    mul-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1792
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow$1;

    invoke-direct {v4, p0, v1}, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow$1;-><init>(Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1810
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1812
    .end local v1    # "menuItemDiff":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void

    .line 1785
    .end local v0    # "menuItemCount":I
    :cond_1
    const/4 v2, 0x6

    goto :goto_0
.end method

.method setSelectPopupWidth()V
    .locals 3

    .prologue
    .line 1632
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1633
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1634
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerWidth:I

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mItemWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    .line 1638
    :goto_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1647
    :goto_1
    return-void

    .line 1636
    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthPortrait:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    goto :goto_0

    .line 1640
    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    .line 1641
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1

    .line 1643
    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPopupWidthLandscape:I

    iput v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    .line 1644
    iget v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mContentViewWidth:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_1
.end method

.method public show(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 1998
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2001
    :cond_0
    invoke-virtual {p0, p1, p2, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2002
    return-void
.end method

.method updateMenuVisibility()V
    .locals 26

    .prologue
    .line 1651
    const/16 v18, 0x0

    .line 1652
    .local v18, "isEditable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    move/from16 v24, v0

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v17

    .line 1656
    .local v17, "hitTest":Landroid/webkitsec/WebView$HitTestResult;
    if-eqz v17, :cond_0

    .line 1657
    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView$HitTestResult;->getType()I

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$2000(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1658
    const/16 v24, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$2002(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 1662
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$2000(Landroid/webkitsec/WebViewClassic;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mCheckLongPress:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$2002(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 1664
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->isPasswordField()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1665
    const/16 v24, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1902(Z)Z

    .line 1667
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z
    invoke-static/range {v24 .. v25}, Landroid/webkitsec/WebViewClassic;->access$1802(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 1669
    .end local v17    # "hitTest":Landroid/webkitsec/WebView$HitTestResult;
    :cond_3
    # getter for: Landroid/webkitsec/WebViewClassic;->isSelectedCandidateEditable:Z
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$1900()Z

    move-result v18

    .line 1671
    const/16 v19, 0x0

    .line 1672
    .local v19, "isTypePassword":Z
    const/16 v23, 0x0

    .line 1673
    .local v23, "variation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    if-eqz v18, :cond_4

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff0

    move/from16 v23, v0

    .line 1675
    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 1676
    const/16 v19, 0x1

    .line 1680
    :cond_4
    const/4 v11, 0x0

    .line 1681
    .local v11, "canTranslate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1682
    .local v22, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 1683
    .local v21, "packageName":Ljava/lang/String;
    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1684
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_5

    const-string/jumbo v24, "sec_container_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1685
    :cond_5
    const/4 v11, 0x0

    .line 1690
    :goto_0
    const/4 v8, 0x0

    .line 1691
    .local v8, "canDictionary":Z
    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1692
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_11

    .line 1693
    const/4 v8, 0x0

    .line 1699
    :goto_1
    if-nez v19, :cond_13

    const/4 v12, 0x1

    .line 1707
    .local v12, "canWebsearch":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 1708
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v24, "true"

    const-string v25, "isKnoxMode"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "sec_container_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1709
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1711
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_SBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :cond_7
    :goto_3
    new-instance v20, Landroid/webkitsec/WebViewClassic$NoAction;

    invoke-direct/range {v20 .. v20}, Landroid/webkitsec/WebViewClassic$NoAction;-><init>()V

    .line 1723
    .local v20, "mMode":Landroid/webkitsec/WebViewClassic$NoAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "clipboardEx"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/sec/clipboard/ClipboardExManager;

    .line 1725
    .local v13, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v24

    if-eqz v24, :cond_14

    const/4 v14, 0x1

    .line 1726
    .local v14, "doesClipboardHasData":Z
    :goto_4
    if-eqz v18, :cond_15

    if-eqz v14, :cond_15

    const/4 v10, 0x1

    .line 1727
    .local v10, "canPaste":Z
    :goto_5
    if-nez v18, :cond_16

    # getter for: Landroid/webkitsec/WebViewClassic;->bWebFindDialogEnabled:Z
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$2100()Z

    move-result v24

    if-eqz v24, :cond_16

    const/4 v9, 0x1

    .line 1728
    .local v9, "canFind":Z
    :goto_6
    if-eqz v18, :cond_17

    if-nez v19, :cond_17

    const/4 v7, 0x1

    .line 1729
    .local v7, "canCut":Z
    :goto_7
    if-nez v19, :cond_18

    const/4 v6, 0x1

    .line 1730
    .local v6, "canCopy":Z
    :goto_8
    if-eqz v18, :cond_19

    if-eqz v14, :cond_19

    const/4 v5, 0x1

    .line 1732
    .local v5, "canClipboard":Z
    :goto_9
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1733
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1734
    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1735
    :cond_9
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1737
    :cond_a
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1738
    :cond_b
    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1739
    :cond_c
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1740
    :cond_d
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1742
    :cond_e
    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1746
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v7, :cond_1a

    const/16 v24, 0x0

    :goto_a
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v7, :cond_1b

    const/16 v24, 0x0

    :goto_b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_1c

    const/16 v24, 0x0

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_1d

    const/16 v24, 0x0

    :goto_d
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v10, :cond_1e

    const/16 v24, 0x0

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v10, :cond_1f

    const/16 v24, 0x0

    :goto_f
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v5, :cond_20

    const/16 v24, 0x0

    :goto_10
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v5, :cond_21

    const/16 v24, 0x0

    :goto_11
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_22

    const/16 v24, 0x0

    :goto_12
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v6, :cond_23

    const/16 v24, 0x0

    :goto_13
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView9:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v8, :cond_24

    const/16 v24, 0x0

    :goto_14
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDictTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v8, :cond_25

    const/16 v24, 0x0

    :goto_15
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v11, :cond_26

    const/16 v24, 0x0

    :goto_16
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v11, :cond_27

    const/16 v24, 0x0

    :goto_17
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v9, :cond_28

    const/16 v24, 0x0

    :goto_18
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v9, :cond_29

    const/16 v24, 0x0

    :goto_19
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-eqz v12, :cond_2a

    const/16 v24, 0x0

    :goto_1a
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    if-eqz v12, :cond_2b

    const/16 v24, 0x0

    :goto_1b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1777
    return-void

    .line 1687
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "canClipboard":Z
    .end local v6    # "canCopy":Z
    .end local v7    # "canCut":Z
    .end local v8    # "canDictionary":Z
    .end local v9    # "canFind":Z
    .end local v10    # "canPaste":Z
    .end local v12    # "canWebsearch":Z
    .end local v13    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    .end local v14    # "doesClipboardHasData":Z
    .end local v20    # "mMode":Landroid/webkitsec/WebViewClassic$NoAction;
    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1695
    .restart local v8    # "canDictionary":Z
    :cond_11
    if-nez v19, :cond_12

    const/4 v8, 0x1

    :goto_1c
    goto/16 :goto_1

    :cond_12
    const/4 v8, 0x0

    goto :goto_1c

    .line 1699
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1712
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "canWebsearch":Z
    :catch_0
    move-exception v15

    .line 1714
    .local v15, "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$SelectActionPopupWindow;->KNOX_STOCKBROWSER_FIRST_SEND_PACKAGE:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    const/16 v25, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1715
    :catch_1
    move-exception v16

    .line 1716
    .local v16, "error2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v24, "webview"

    const-string v25, "NameNotFoundException : There are no browsers(sbrowser and stockbrowser"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1725
    .end local v15    # "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "error2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    .restart local v20    # "mMode":Landroid/webkitsec/WebViewClassic$NoAction;
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1726
    .restart local v14    # "doesClipboardHasData":Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1727
    .restart local v10    # "canPaste":Z
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1728
    .restart local v9    # "canFind":Z
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1729
    .restart local v7    # "canCut":Z
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1730
    .restart local v6    # "canCopy":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1748
    .restart local v5    # "canClipboard":Z
    :cond_1a
    const/16 v24, 0x8

    goto/16 :goto_a

    .line 1749
    :cond_1b
    const/16 v24, 0x8

    goto/16 :goto_b

    .line 1751
    :cond_1c
    const/16 v24, 0x8

    goto/16 :goto_c

    .line 1752
    :cond_1d
    const/16 v24, 0x8

    goto/16 :goto_d

    .line 1754
    :cond_1e
    const/16 v24, 0x8

    goto/16 :goto_e

    .line 1755
    :cond_1f
    const/16 v24, 0x8

    goto/16 :goto_f

    .line 1757
    :cond_20
    const/16 v24, 0x8

    goto/16 :goto_10

    .line 1758
    :cond_21
    const/16 v24, 0x8

    goto/16 :goto_11

    .line 1760
    :cond_22
    const/16 v24, 0x8

    goto/16 :goto_12

    .line 1761
    :cond_23
    const/16 v24, 0x8

    goto/16 :goto_13

    .line 1763
    :cond_24
    const/16 v24, 0x8

    goto/16 :goto_14

    .line 1764
    :cond_25
    const/16 v24, 0x8

    goto/16 :goto_15

    .line 1767
    :cond_26
    const/16 v24, 0x8

    goto/16 :goto_16

    .line 1768
    :cond_27
    const/16 v24, 0x8

    goto/16 :goto_17

    .line 1770
    :cond_28
    const/16 v24, 0x8

    goto/16 :goto_18

    .line 1771
    :cond_29
    const/16 v24, 0x8

    goto/16 :goto_19

    .line 1773
    :cond_2a
    const/16 v24, 0x8

    goto/16 :goto_1a

    .line 1774
    :cond_2b
    const/16 v24, 0x8

    goto/16 :goto_1b
.end method
