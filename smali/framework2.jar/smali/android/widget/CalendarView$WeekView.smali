.class Landroid/widget/CalendarView$WeekView;
.super Landroid/view/View;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 1626
    iput-object p1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    .line 1627
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1574
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1576
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1578
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    .line 1596
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1599
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1603
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1612
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1615
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1621
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 1624
    iput v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 1630
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->initilaizePaints()V

    .line 1631
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$WeekView;

    .prologue
    .line 1572
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$WeekView;

    .prologue
    .line 1572
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/CalendarView$WeekView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$WeekView;

    .prologue
    .line 1572
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    return v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1831
    iget-boolean v2, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v2, :cond_0

    .line 1858
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1836
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1837
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1839
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 1841
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 1842
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1843
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1848
    :goto_1
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1850
    if-eqz v0, :cond_4

    .line 1851
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1852
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    :goto_2
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 1857
    :goto_3
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1845
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1846
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1852
    :cond_3
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    goto :goto_2

    .line 1854
    :cond_4
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1855
    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method private drawBackgroundForSelected(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1867
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2900(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1872
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1873
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1874
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1875
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1877
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1990
    iget-boolean v0, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    .line 2001
    :goto_0
    return-void

    .line 1993
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3600(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3500(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3500(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1996
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3600(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1997
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3600(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3500(Landroid/widget/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v2

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3500(Landroid/widget/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2000
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$3600(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 1886
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 1887
    .local v4, "textHeight":F
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int v6, v7, v8

    .line 1888
    .local v6, "y":I
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1889
    .local v3, "nDays":I
    mul-int/lit8 v0, v3, 0x2

    .line 1891
    .local v0, "divisor":I
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1892
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1894
    const/4 v2, 0x0

    .line 1896
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1897
    :goto_0
    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_4

    .line 1898
    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1901
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->applyNewConcept()Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1902
    const/4 v1, -0x1

    .line 1903
    .local v1, "fixedDayIndex":I
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    if-lez v7, :cond_1

    .line 1904
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1905
    :goto_2
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v7

    if-nez v7, :cond_0

    if-lez v1, :cond_0

    .line 1906
    add-int/lit8 v1, v1, -0x1

    .line 1908
    :cond_0
    if-ne v2, v1, :cond_1

    .line 1909
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1914
    .end local v1    # "fixedDayIndex":I
    :cond_1
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1915
    .local v5, "x":I
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v2

    aget-object v7, v7, v8

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    .end local v5    # "x":I
    :cond_2
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v7

    goto :goto_1

    .line 1904
    .restart local v1    # "fixedDayIndex":I
    :cond_3
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_2

    .line 1917
    .end local v1    # "fixedDayIndex":I
    :cond_4
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1918
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1919
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v8, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int/2addr v8, v0

    sub-int v5, v7, v8

    .line 1920
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1950
    .end local v5    # "x":I
    :cond_5
    return-void

    .line 1923
    :cond_6
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1924
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekNumberColor:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$3300(Landroid/widget/CalendarView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1925
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    div-int v5, v7, v0

    .line 1926
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v11

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1927
    add-int/lit8 v2, v2, 0x1

    .line 1929
    .end local v5    # "x":I
    :cond_7
    :goto_3
    if-ge v2, v3, :cond_5

    .line 1930
    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v7

    :goto_4
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1933
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->applyNewConcept()Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1934
    const/4 v1, -0x1

    .line 1935
    .restart local v1    # "fixedDayIndex":I
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    if-lez v7, :cond_9

    .line 1936
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_b

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x1

    .line 1937
    :goto_5
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v7}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v7

    if-nez v7, :cond_8

    if-lez v1, :cond_8

    .line 1938
    add-int/lit8 v1, v1, -0x1

    .line 1940
    :cond_8
    if-ne v2, v1, :cond_9

    .line 1941
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFocusedSingleDateColor:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$3200(Landroid/widget/CalendarView;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1946
    .end local v1    # "fixedDayIndex":I
    :cond_9
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v7, v8

    div-int v5, v7, v0

    .line 1947
    .restart local v5    # "x":I
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v2

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1929
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1930
    .end local v5    # "x":I
    :cond_a
    iget-object v7, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I
    invoke-static {v7}, Landroid/widget/CalendarView;->access$3100(Landroid/widget/CalendarView;)I

    move-result v7

    goto :goto_4

    .line 1936
    .restart local v1    # "fixedDayIndex":I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v8}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x8

    goto :goto_5
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1959
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    .line 1960
    .local v6, "firstFullyVisiblePosition":I
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 1961
    add-int/lit8 v6, v6, 0x1

    .line 1963
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    if-ne v6, v0, :cond_1

    .line 1965
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1982
    :goto_0
    return-void

    .line 1970
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3400(Landroid/widget/CalendarView;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1971
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$3000(Landroid/widget/CalendarView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1974
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1975
    const/4 v1, 0x0

    .line 1976
    .local v1, "startX":F
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v5, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v4, v5

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 1981
    .local v3, "stopX":F
    :goto_1
    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1976
    .end local v3    # "stopX":F
    :cond_2
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    int-to-float v3, v0

    goto :goto_1

    .line 1978
    .end local v1    # "startX":F
    :cond_3
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v4

    int-to-float v1, v0

    .line 1979
    .restart local v1    # "startX":F
    :goto_2
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    int-to-float v3, v0

    .restart local v3    # "stopX":F
    goto :goto_1

    .end local v1    # "startX":F
    .end local v3    # "stopX":F
    :cond_4
    move v1, v2

    .line 1978
    goto :goto_2
.end method

.method private initilaizePaints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1720
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1721
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1722
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1724
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1725
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1726
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1727
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1728
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1731
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->applyNewConcept()Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1733
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1738
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDateTextSize:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2500(Landroid/widget/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1740
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFocusedMonthDateColor:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2800(Landroid/widget/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1743
    :cond_1
    return-void
.end method

.method private updateSelectionPositions()V
    .locals 5

    .prologue
    .line 2013
    iget-boolean v2, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    if-eqz v2, :cond_2

    .line 2014
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    .line 2015
    .local v0, "isLayoutRtl":Z
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v3

    sub-int v1, v2, v3

    .line 2016
    .local v1, "selectedPosition":I
    if-gez v1, :cond_0

    .line 2017
    add-int/lit8 v1, v1, 0x7

    .line 2019
    :cond_0
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 2020
    add-int/lit8 v1, v1, 0x1

    .line 2022
    :cond_1
    if-eqz v0, :cond_3

    .line 2023
    iget-object v2, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    .line 2028
    :goto_0
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedRight:I

    .line 2030
    .end local v0    # "isLayoutRtl":Z
    .end local v1    # "selectedPosition":I
    :cond_2
    return-void

    .line 2026
    .restart local v0    # "isLayoutRtl":Z
    .restart local v1    # "selectedPosition":I
    :cond_3
    iget v2, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedLeft:I

    goto :goto_0
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "outCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 1780
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    .line 1785
    .local v2, "isLayoutRtl":Z
    if-eqz v2, :cond_2

    .line 1786
    const/4 v3, 0x0

    .line 1787
    .local v3, "start":I
    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v7, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 1793
    .local v1, "end":I
    :goto_0
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 1794
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    .line 1808
    :goto_1
    return v4

    .line 1787
    .end local v1    # "end":I
    :cond_1
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    goto :goto_0

    .line 1789
    .end local v3    # "start":I
    :cond_2
    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v5}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    iget v6, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    div-int v3, v5, v6

    .line 1790
    .restart local v3    # "start":I
    :goto_2
    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    .restart local v1    # "end":I
    goto :goto_0

    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_3
    move v3, v4

    .line 1789
    goto :goto_2

    .line 1799
    .restart local v1    # "end":I
    .restart local v3    # "start":I
    :cond_4
    int-to-float v4, v3

    sub-float v4, p1, v4

    iget-object v5, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v5}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1801
    .local v0, "dayPosition":I
    if-eqz v2, :cond_5

    .line 1802
    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    .line 1805
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1806
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1808
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .prologue
    .line 1760
    iget v0, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 11
    .param p1, "weekNumber"    # I
    .param p2, "selectedWeekDay"    # I
    .param p3, "focusedMonth"    # I

    .prologue
    .line 1645
    iput p2, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    .line 1646
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mSelectedDay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1647
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    .line 1648
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    .line 1649
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1651
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, p0, Landroid/widget/CalendarView$WeekView;->mWeek:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1652
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v4}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1655
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1656
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    .line 1659
    const/4 v1, 0x0

    .line 1660
    .local v1, "i":I
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShowWeekNumber:Z
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2300(Landroid/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1661
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v9}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1663
    add-int/lit8 v1, v1, 0x1

    .line 1667
    :cond_0
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1668
    .local v0, "diff":I
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1671
    const-string v3, "Asia/Shanghai"

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "America/Sao_Paulo"

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "America/Santiago"

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1674
    :cond_1
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1678
    :cond_2
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1680
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1681
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1682
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1683
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1688
    :cond_3
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    iput-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1689
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1691
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1692
    :goto_2
    iget v3, p0, Landroid/widget/CalendarView$WeekView;->mNumCells:I

    if-ge v1, v3, :cond_a

    .line 1693
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p3, :cond_7

    const/4 v2, 0x1

    .line 1694
    .local v2, "isFocusedDay":Z
    :goto_3
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mFocusDay:[Z

    aput-boolean v2, v3, v1

    .line 1695
    iget-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    or-int/2addr v3, v2

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z

    .line 1696
    iget-boolean v4, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    if-nez v2, :cond_8

    const/4 v3, 0x1

    :goto_4
    and-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1698
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1699
    :cond_4
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    .line 1704
    :goto_5
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1692
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1646
    .end local v0    # "diff":I
    .end local v1    # "i":I
    .end local v2    # "isFocusedDay":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1647
    :cond_6
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mDaysPerWeek:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2400(Landroid/widget/CalendarView;)I

    move-result v3

    goto/16 :goto_1

    .line 1693
    .restart local v0    # "diff":I
    .restart local v1    # "i":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1696
    .restart local v2    # "isFocusedDay":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 1701
    :cond_9
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v8}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_5

    .line 1708
    .end local v2    # "isFocusedDay":Z
    :cond_a
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1709
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1711
    :cond_b
    iget-object v3, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1713
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 1714
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1813
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2600(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->applyNewConcept()Z
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2700(Landroid/widget/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawBackgroundForSelected(Landroid/graphics/Canvas;)V

    .line 1815
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1816
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1823
    :goto_0
    return-void

    .line 1818
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1819
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1820
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1821
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2034
    iget-object v0, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/CalendarView$WeekView;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mShownWeekCount:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$3700(Landroid/widget/CalendarView;)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    .line 2036
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/widget/CalendarView$WeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2037
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2005
    iput p1, p0, Landroid/widget/CalendarView$WeekView;->mWidth:I

    .line 2006
    invoke-direct {p0}, Landroid/widget/CalendarView$WeekView;->updateSelectionPositions()V

    .line 2007
    return-void
.end method
