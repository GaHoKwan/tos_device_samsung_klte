.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1

.field static isJapaneseLinebreak:Z


# instance fields
.field private mBottomPadding:I

.field private mBufend:I

.field private mBufstart:I

.field private mColumns:I

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mIncludePad:Z

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mOuterwidth:I

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 160
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1108
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1134
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 162
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 163
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 164
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 166
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 71
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 93
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 83
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 107
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1108
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1134
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 122
    if-eqz p11, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 125
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 126
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 127
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 128
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 130
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 136
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 137
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 139
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 142
    move/from16 v0, p2

    iput v0, p0, Landroid/text/StaticLayout;->mBufstart:I

    .line 143
    move/from16 v0, p3

    iput v0, p0, Landroid/text/StaticLayout;->mBufend:I

    .line 144
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mOuterwidth:I

    .line 145
    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/text/StaticLayout;->mIncludePad:Z

    .line 146
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/text/StaticLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 149
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 151
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 155
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    return-void

    .line 107
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 133
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 51
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 62
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 64
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 25
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 840
    cmpg-float v22, p8, p5

    if-gtz v22, :cond_0

    if-nez p10, :cond_0

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 970
    :goto_0
    return-void

    .line 847
    :cond_0
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v6

    .line 850
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 851
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 852
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 855
    .local v10, "len":I
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 857
    const/16 v18, 0x0

    .line 859
    .local v18, "sum":F
    move v15, v10

    .line 861
    .local v15, "rightForZeroWidth":I
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 862
    if-nez v7, :cond_5

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_5

    .line 876
    :cond_1
    if-eqz v7, :cond_2

    .line 877
    move v7, v15

    .line 880
    :cond_2
    const/4 v5, 0x0

    .line 881
    move v4, v7

    .line 968
    .end local v7    # "i":I
    .end local v15    # "rightForZeroWidth":I
    .end local v18    # "sum":F
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    aput v5, v22, v23

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    aput v4, v22, v23

    goto :goto_0

    .line 847
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_4
    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 865
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "rightForZeroWidth":I
    .restart local v18    # "sum":F
    :cond_5
    add-int/lit8 v22, v7, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 867
    .local v21, "w":F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-gtz v22, :cond_1

    .line 870
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_6

    .line 871
    add-int/lit8 v15, v7, -0x1

    .line 874
    :cond_6
    add-float v18, v18, v21

    .line 861
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 883
    .end local v7    # "i":I
    .end local v15    # "rightForZeroWidth":I
    .end local v18    # "sum":F
    .end local v21    # "w":F
    :cond_7
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 884
    const-string v22, "StaticLayout"

    const-string v23, "Start Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 887
    :cond_8
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 889
    :cond_9
    const/16 v18, 0x0

    .line 892
    .restart local v18    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_a

    .line 893
    add-int v22, v7, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 895
    .restart local v21    # "w":F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-lez v22, :cond_c

    .line 902
    .end local v21    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 903
    .local v12, "mt":Landroid/text/MeasuredText;
    iget-object v0, v12, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v19, v0

    .line 904
    .local v19, "tmpBuf":[C
    :goto_5
    if-lez v7, :cond_b

    if-ge v7, v10, :cond_b

    aget-char v22, v19, v7

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 905
    new-instance v17, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 906
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 907
    .local v20, "tmpwid":F
    add-float v22, v20, v6

    cmpg-float v22, v22, p5

    if-gtz v22, :cond_d

    .line 913
    .end local v17    # "s":Ljava/lang/String;
    .end local v20    # "tmpwid":F
    :cond_b
    move v5, v7

    .line 914
    sub-int v4, v10, v7

    .line 915
    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    .line 916
    add-int/lit8 v5, v10, -0x1

    .line 917
    :goto_6
    if-lez v5, :cond_e

    aget v22, p3, v5

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_e

    .line 918
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 899
    .end local v12    # "mt":Landroid/text/MeasuredText;
    .end local v19    # "tmpBuf":[C
    .restart local v21    # "w":F
    :cond_c
    add-float v18, v18, v21

    .line 892
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 910
    .end local v21    # "w":F
    .restart local v12    # "mt":Landroid/text/MeasuredText;
    .restart local v17    # "s":Ljava/lang/String;
    .restart local v19    # "tmpBuf":[C
    .restart local v20    # "tmpwid":F
    :cond_d
    add-int/lit8 v7, v7, -0x1

    .line 911
    goto :goto_5

    .line 919
    .end local v17    # "s":Ljava/lang/String;
    .end local v20    # "tmpwid":F
    :cond_e
    sub-int v4, v10, v5

    goto/16 :goto_3

    .line 923
    .end local v7    # "i":I
    .end local v12    # "mt":Landroid/text/MeasuredText;
    .end local v18    # "sum":F
    .end local v19    # "tmpBuf":[C
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 924
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/16 v16, 0x0

    .line 925
    .local v16, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v14, v10

    .line 926
    .local v14, "right":I
    move v15, v14

    .line 928
    .restart local v15    # "rightForZeroWidth":I
    sub-float v22, p5, v6

    const/high16 v23, 0x40000000    # 2.0f

    div-float v13, v22, v23

    .line 929
    .local v13, "ravail":F
    move v14, v10

    :goto_7
    if-ltz v14, :cond_10

    .line 930
    if-nez v14, :cond_13

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_13

    .line 944
    :cond_10
    if-eqz v14, :cond_11

    .line 945
    move v14, v15

    .line 948
    :cond_11
    sub-float v22, p5, v6

    sub-float v8, v22, v16

    .line 949
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v14, :cond_12

    .line 950
    add-int v22, v9, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 952
    .restart local v21    # "w":F
    add-float v22, v21, v11

    cmpl-float v22, v22, v8

    if-lez v22, :cond_15

    .line 959
    .end local v21    # "w":F
    :cond_12
    move v5, v9

    .line 960
    sub-int v4, v14, v9

    .line 961
    goto/16 :goto_3

    .line 933
    .end local v8    # "lavail":F
    :cond_13
    add-int/lit8 v22, v14, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 935
    .restart local v21    # "w":F
    add-float v22, v21, v16

    cmpl-float v22, v22, v13

    if-gtz v22, :cond_10

    .line 938
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_14

    .line 939
    add-int/lit8 v15, v14, -0x1

    .line 942
    :cond_14
    add-float v16, v16, v21

    .line 929
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 956
    .restart local v8    # "lavail":F
    :cond_15
    add-float v11, v11, v21

    .line 949
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 962
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rightForZeroWidth":I
    .end local v16    # "rsum":F
    .end local v21    # "w":F
    :cond_16
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 963
    const-string v22, "StaticLayout"

    const-string v23, "Middle Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 544
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    move p1, v0

    .line 703
    .end local p1    # "includeNonStarters":Z
    :cond_0
    :goto_0
    return p1

    .line 547
    .restart local p1    # "includeNonStarters":Z
    :cond_1
    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    move p1, v0

    .line 548
    goto :goto_0

    .line 550
    :cond_2
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_4

    .line 551
    if-nez p1, :cond_3

    .line 552
    sparse-switch p0, :sswitch_data_0

    :cond_3
    move p1, v0

    .line 572
    goto :goto_0

    :sswitch_0
    move p1, v1

    .line 569
    goto :goto_0

    .line 574
    :cond_4
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_6

    .line 575
    if-nez p1, :cond_5

    .line 576
    sparse-switch p0, :sswitch_data_1

    :cond_5
    move p1, v0

    .line 597
    goto :goto_0

    :sswitch_1
    move p1, v1

    .line 594
    goto :goto_0

    .line 599
    :cond_6
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p0, v2, :cond_7

    move p1, v0

    .line 600
    goto :goto_0

    .line 602
    :cond_7
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_8

    const v2, 0x9fbb

    if-gt p0, v2, :cond_8

    move p1, v0

    .line 603
    goto :goto_0

    .line 605
    :cond_8
    const v2, 0xf900

    if-lt p0, v2, :cond_9

    const v2, 0xfad9

    if-gt p0, v2, :cond_9

    move p1, v0

    .line 606
    goto :goto_0

    .line 608
    :cond_9
    const v2, 0xa000

    if-lt p0, v2, :cond_a

    const v2, 0xa48f

    if-gt p0, v2, :cond_a

    move p1, v0

    .line 609
    goto :goto_0

    .line 611
    :cond_a
    const v2, 0xa490

    if-lt p0, v2, :cond_b

    const v2, 0xa4cf

    if-gt p0, v2, :cond_b

    move p1, v0

    .line 612
    goto :goto_0

    .line 614
    :cond_b
    const v2, 0xfe62

    if-lt p0, v2, :cond_c

    const v2, 0xfe66

    if-gt p0, v2, :cond_c

    move p1, v0

    .line 615
    goto :goto_0

    .line 617
    :cond_c
    const v2, 0xff10

    if-lt p0, v2, :cond_d

    const v2, 0xff19

    if-gt p0, v2, :cond_d

    move p1, v0

    .line 618
    goto :goto_0

    .line 622
    :cond_d
    sget-boolean v2, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v2, :cond_14

    .line 623
    const/16 v2, 0x3001

    if-lt p0, v2, :cond_f

    const/16 v2, 0x301f

    if-gt p0, v2, :cond_f

    .line 624
    if-nez p1, :cond_e

    .line 625
    packed-switch p0, :pswitch_data_0

    .line 638
    :cond_e
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    move p1, v0

    .line 647
    goto/16 :goto_0

    :pswitch_2
    move p1, v1

    .line 635
    goto/16 :goto_0

    :pswitch_3
    move p1, v1

    .line 645
    goto/16 :goto_0

    .line 649
    :cond_f
    const v2, 0xff01

    if-lt p0, v2, :cond_11

    const v2, 0xff9f

    if-gt p0, v2, :cond_11

    .line 650
    if-nez p1, :cond_10

    .line 651
    sparse-switch p0, :sswitch_data_2

    .line 671
    :cond_10
    sparse-switch p0, :sswitch_data_3

    move p1, v0

    .line 678
    goto/16 :goto_0

    :sswitch_2
    move p1, v1

    .line 668
    goto/16 :goto_0

    :sswitch_3
    move p1, v1

    .line 676
    goto/16 :goto_0

    .line 680
    :cond_11
    const/16 v2, 0x21

    if-lt p0, v2, :cond_13

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_13

    .line 681
    if-nez p1, :cond_12

    .line 682
    sparse-switch p0, :sswitch_data_4

    :cond_12
    move p1, v0

    .line 693
    goto/16 :goto_0

    :sswitch_4
    move p1, v1

    .line 690
    goto/16 :goto_0

    .line 695
    :cond_13
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p0, v0, :cond_0

    .line 699
    const/16 v0, 0x309b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p0, v0, :cond_0

    :cond_14
    move p1, v1

    .line 703
    goto/16 :goto_0

    .line 552
    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 576
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 625
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 638
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 651
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 671
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 682
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 717
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 718
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 719
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 720
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 722
    .local v24, "lines":[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 723
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 724
    .local v25, "nlen":I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 725
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 727
    move-object/from16 v24, v19

    .line 729
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 730
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 735
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    .end local v25    # "nlen":I
    :cond_0
    if-eqz p11, :cond_3

    .line 736
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 737
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 738
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 739
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 741
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 742
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 743
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 741
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 747
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 751
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 752
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 753
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 754
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 757
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_5

    .line 758
    if-eqz p21, :cond_4

    .line 759
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 762
    :cond_4
    if-eqz p20, :cond_5

    .line 763
    move/from16 p4, p6

    .line 766
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 767
    if-eqz p21, :cond_6

    .line 768
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 771
    :cond_6
    if-eqz p20, :cond_7

    .line 772
    move/from16 p5, p7

    .line 778
    :cond_7
    if-eqz p15, :cond_10

    .line 779
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 780
    .local v15, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 781
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 789
    .end local v15    # "ex":D
    .local v17, "extra":I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 790
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 791
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 793
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 794
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 795
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 797
    if-eqz p14, :cond_8

    .line 798
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 800
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 801
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 805
    .local v23, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 812
    :goto_3
    if-eqz p25, :cond_e

    .line 815
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 816
    .local v18, "firstLine":Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 817
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 819
    .local v12, "forceEllipsis":Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 824
    .local v14, "doEllipsis":Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 825
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 831
    .end local v12    # "forceEllipsis":Z
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v14    # "doEllipsis":Z
    .end local v18    # "firstLine":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 832
    return p8

    .line 783
    .end local v17    # "extra":I
    .end local v23    # "linedirs":Landroid/text/Layout$Directions;
    .restart local v15    # "ex":D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17    # "extra":I
    goto/16 :goto_2

    .line 786
    .end local v15    # "ex":D
    .end local v17    # "extra":I
    :cond_10
    const/16 v17, 0x0

    .restart local v17    # "extra":I
    goto/16 :goto_2

    .line 808
    .restart local v23    # "linedirs":Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 815
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 816
    .restart local v18    # "firstLine":Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 817
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 819
    .restart local v12    # "forceEllipsis":Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1081
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 133
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 175
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 177
    const/4 v13, 0x0

    .line 178
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_4

    :cond_0
    const/16 v20, 0x1

    .line 180
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 181
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 183
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v114, v0

    .line 185
    .local v114, "measured":Landroid/text/MeasuredText;
    const/16 v127, 0x0

    .line 186
    .local v127, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v127, p1

    .line 187
    check-cast v127, Landroid/text/Spanned;

    .line 189
    :cond_1
    const/16 v93, 0x1

    .line 192
    .local v93, "DEFAULT_DIR":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    .line 199
    :goto_1
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_35

    .line 200
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 201
    .local v38, "paraEnd":I
    if-gez v38, :cond_6

    .line 202
    move/from16 v38, p3

    .line 206
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v99, v5, 0x1

    .line 207
    .local v99, "firstWidthLineLimit":I
    move/from16 v98, p5

    .line 208
    .local v98, "firstWidth":I
    move/from16 v122, p5

    .line 210
    .local v122, "restWidth":I
    const/16 v16, 0x0

    .line 212
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v127, :cond_b

    .line 213
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v123

    check-cast v123, [Landroid/text/style/LeadingMarginSpan;

    .line 215
    .local v123, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v107, 0x0

    .local v107, "i":I
    :goto_4
    move-object/from16 v0, v123

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_7

    .line 216
    aget-object v111, v123, v107

    .line 217
    .local v111, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v123, v107

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v98, v98, v5

    .line 218
    aget-object v5, v123, v107

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v122, v122, v5

    .line 224
    move-object/from16 v0, v111

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_3

    move-object/from16 v112, v111

    .line 225
    check-cast v112, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 226
    .local v112, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v127

    move-object/from16 v1, v112

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v113

    .line 227
    .local v113, "lmsFirstLine":I
    invoke-interface/range {v112 .. v112}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v99, v113, v5

    .line 215
    .end local v112    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v113    # "lmsFirstLine":I
    :cond_3
    add-int/lit8 v107, v107, 0x1

    goto :goto_4

    .line 178
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v38    # "paraEnd":I
    .end local v93    # "DEFAULT_DIR":I
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v107    # "i":I
    .end local v111    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v114    # "measured":Landroid/text/MeasuredText;
    .end local v122    # "restWidth":I
    .end local v123    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v127    # "spanned":Landroid/text/Spanned;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 195
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v93    # "DEFAULT_DIR":I
    .restart local v114    # "measured":Landroid/text/MeasuredText;
    .restart local v127    # "spanned":Landroid/text/Spanned;
    :cond_5
    const/4 v5, 0x0

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    goto :goto_1

    .line 204
    .restart local v29    # "paraStart":I
    .restart local v38    # "paraEnd":I
    :cond_6
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 231
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v107    # "i":I
    .restart local v122    # "restWidth":I
    .restart local v123    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 233
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_b

    .line 234
    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_9

    .line 236
    :cond_8
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 240
    :cond_9
    const/16 v107, 0x0

    :goto_5
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_b

    .line 241
    aget-object v5, v16, v107

    move-object/from16 v0, v127

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v115

    .line 243
    .local v115, "o":I
    move/from16 v0, v115

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v107

    .line 240
    :goto_6
    add-int/lit8 v107, v107, 0x1

    goto :goto_5

    .line 251
    :cond_a
    aput v13, v17, v107

    goto :goto_6

    .line 257
    .end local v107    # "i":I
    .end local v115    # "o":I
    .end local v123    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_b
    move-object/from16 v0, v114

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 258
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 259
    .local v27, "chs":[C
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 260
    .local v28, "widths":[F
    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 261
    .local v21, "chdirs":[B
    move-object/from16 v0, v114

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 262
    .local v22, "dir":I
    move-object/from16 v0, v114

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 264
    .local v23, "easy":Z
    move/from16 v132, v98

    .line 266
    .local v132, "width":I
    const/16 v62, 0x0

    .line 268
    .local v62, "w":F
    move/from16 v7, v29

    .line 272
    .local v7, "here":I
    move/from16 v116, v29

    .line 273
    .local v116, "ok":I
    move/from16 v121, v62

    .line 274
    .local v121, "okWidth":F
    const/16 v117, 0x0

    .local v117, "okAscent":I
    const/16 v119, 0x0

    .local v119, "okDescent":I
    const/16 v120, 0x0

    .local v120, "okTop":I
    const/16 v118, 0x0

    .line 278
    .local v118, "okBottom":I
    move/from16 v100, v29

    .line 279
    .local v100, "fit":I
    move/from16 v101, v62

    .line 280
    .local v101, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 282
    .local v42, "fitBottom":I
    const/16 v19, 0x0

    .line 283
    .local v19, "hasTabOrEmoji":Z
    const/16 v106, 0x0

    .line 284
    .local v106, "hasTab":Z
    const/16 v129, 0x0

    .line 286
    .local v129, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v126, v29

    .local v126, "spanStart":I
    :goto_7
    move/from16 v0, v126

    move/from16 v1, v38

    if-ge v0, v1, :cond_32

    .line 288
    if-nez v127, :cond_1b

    .line 289
    move/from16 v124, v38

    .line 290
    .local v124, "spanEnd":I
    sub-int v125, v124, v126

    .line 291
    .local v125, "spanLen":I
    move-object/from16 v0, v114

    move-object/from16 v1, p4

    move/from16 v2, v125

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 302
    :goto_8
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    .line 303
    .local v105, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v103, v0

    .line 304
    .local v103, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v102, v0

    .line 305
    .local v102, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    .line 306
    .local v104, "fmDescent":I
    const/16 v94, 0x0

    .line 308
    .local v94, "bZerowithspace":Z
    move/from16 v110, v126

    .local v110, "j":I
    :goto_9
    move/from16 v0, v110

    move/from16 v1, v124

    if-ge v0, v1, :cond_2d

    .line 309
    sub-int v5, v110, v29

    aget-char v96, v27, v5

    .line 311
    .local v96, "c":C
    const/16 v5, 0xa

    move/from16 v0, v96

    if-ne v0, v5, :cond_1c

    .line 362
    :goto_a
    const/16 v5, 0x20

    move/from16 v0, v96

    if-eq v0, v5, :cond_c

    const/16 v5, 0x9

    move/from16 v0, v96

    if-eq v0, v5, :cond_c

    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_24

    :cond_c
    const/16 v109, 0x1

    .line 364
    .local v109, "isSpaceOrTab":Z
    :goto_b
    move/from16 v0, v132

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_d

    if-eqz v109, :cond_2b

    .line 365
    :cond_d
    move/from16 v101, v62

    .line 366
    add-int/lit8 v100, v110, 0x1

    .line 368
    move/from16 v0, v105

    move/from16 v1, v41

    if-ge v0, v1, :cond_e

    .line 369
    move/from16 v41, v105

    .line 370
    :cond_e
    move/from16 v0, v102

    move/from16 v1, v39

    if-ge v0, v1, :cond_f

    .line 371
    move/from16 v39, v102

    .line 372
    :cond_f
    move/from16 v0, v104

    move/from16 v1, v40

    if-le v0, v1, :cond_10

    .line 373
    move/from16 v40, v104

    .line 374
    :cond_10
    move/from16 v0, v103

    move/from16 v1, v42

    if-le v0, v1, :cond_11

    .line 375
    move/from16 v42, v103

    .line 378
    :cond_11
    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_12

    .line 379
    const/16 v94, 0x1

    .line 382
    :cond_12
    const/16 v108, 0x0

    .line 385
    .local v108, "isLineBreak":Z
    sget-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v5, :cond_26

    .line 386
    if-nez v109, :cond_16

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_14

    :cond_13
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_16

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_14
    if-nez v94, :cond_15

    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_15

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_15

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    if-nez v94, :cond_25

    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_25

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_25

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_16
    const/16 v108, 0x1

    .line 407
    :goto_c
    if-eqz v108, :cond_1a

    .line 408
    move/from16 v121, v62

    .line 409
    add-int/lit8 v116, v110, 0x1

    .line 411
    move/from16 v0, v41

    move/from16 v1, v120

    if-ge v0, v1, :cond_17

    .line 412
    move/from16 v120, v41

    .line 413
    :cond_17
    move/from16 v0, v39

    move/from16 v1, v117

    if-ge v0, v1, :cond_18

    .line 414
    move/from16 v117, v39

    .line 415
    :cond_18
    move/from16 v0, v40

    move/from16 v1, v119

    if-le v0, v1, :cond_19

    .line 416
    move/from16 v119, v40

    .line 417
    :cond_19
    move/from16 v0, v42

    move/from16 v1, v118

    if-le v0, v1, :cond_1a

    .line 418
    move/from16 v118, v42

    .line 308
    .end local v108    # "isLineBreak":Z
    :cond_1a
    add-int/lit8 v110, v110, 0x1

    goto/16 :goto_9

    .line 293
    .end local v94    # "bZerowithspace":Z
    .end local v96    # "c":C
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v124    # "spanEnd":I
    .end local v125    # "spanLen":I
    :cond_1b
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v124

    .line 295
    .restart local v124    # "spanEnd":I
    sub-int v125, v124, v126

    .line 296
    .restart local v125    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v124

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 298
    .local v128, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move-object/from16 v1, v127

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    .end local v128    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 299
    .restart local v128    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v114

    move-object/from16 v1, p4

    move-object/from16 v2, v128

    move/from16 v3, v125

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    .line 313
    .end local v128    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v94    # "bZerowithspace":Z
    .restart local v96    # "c":C
    .restart local v102    # "fmAscent":I
    .restart local v103    # "fmBottom":I
    .restart local v104    # "fmDescent":I
    .restart local v105    # "fmTop":I
    .restart local v110    # "j":I
    :cond_1c
    const/16 v5, 0x9

    move/from16 v0, v96

    if-ne v0, v5, :cond_1f

    .line 314
    if-nez v106, :cond_1d

    .line 315
    const/16 v106, 0x1

    .line 316
    const/16 v19, 0x1

    .line 317
    if-eqz v127, :cond_1d

    .line 319
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/TabStopSpan;

    .line 321
    .local v128, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v128

    array-length v5, v0

    if-lez v5, :cond_1d

    .line 322
    new-instance v129, Landroid/text/Layout$TabStops;

    .end local v129    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v129

    move-object/from16 v1, v128

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 326
    .end local v128    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v129    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1d
    if-eqz v129, :cond_1e

    .line 327
    move-object/from16 v0, v129

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_a

    .line 329
    :cond_1e
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_a

    .line 331
    :cond_1f
    const v5, 0xd800

    move/from16 v0, v96

    if-lt v0, v5, :cond_23

    const v5, 0xdfff

    move/from16 v0, v96

    if-gt v0, v5, :cond_23

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_23

    .line 333
    sub-int v5, v110, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v97

    .line 335
    .local v97, "emoji":I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v97

    if-lt v0, v5, :cond_22

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v97

    if-gt v0, v5, :cond_22

    .line 336
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v95

    .line 338
    .local v95, "bm":Landroid/graphics/Bitmap;
    if-eqz v95, :cond_21

    .line 341
    if-nez v127, :cond_20

    .line 342
    move-object/from16 v130, p4

    .line 347
    .local v130, "whichPaint":Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v130 .. v130}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v131, v5, v6

    .line 349
    .local v131, "wid":F
    add-float v62, v62, v131

    .line 350
    const/16 v19, 0x1

    .line 351
    add-int/lit8 v110, v110, 0x1

    .line 352
    goto/16 :goto_a

    .line 344
    .end local v130    # "whichPaint":Landroid/graphics/Paint;
    .end local v131    # "wid":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v130, v0

    .restart local v130    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_d

    .line 353
    .end local v130    # "whichPaint":Landroid/graphics/Paint;
    :cond_21
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 356
    .end local v95    # "bm":Landroid/graphics/Bitmap;
    :cond_22
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 359
    .end local v97    # "emoji":I
    :cond_23
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 362
    :cond_24
    const/16 v109, 0x0

    goto/16 :goto_b

    .line 386
    .restart local v108    # "isLineBreak":Z
    .restart local v109    # "isSpaceOrTab":Z
    :cond_25
    const/16 v108, 0x0

    goto/16 :goto_c

    .line 397
    :cond_26
    if-nez v109, :cond_29

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_27

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_28

    :cond_27
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_29

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_28
    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_2a

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2a

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_2a

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_29
    const/16 v108, 0x1

    :goto_e
    goto/16 :goto_c

    :cond_2a
    const/16 v108, 0x0

    goto :goto_e

    .line 421
    .end local v108    # "isLineBreak":Z
    :cond_2b
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v124

    if-gt v5, v0, :cond_2e

    const/16 v34, 0x1

    .line 426
    .local v34, "moreChars":Z
    :goto_f
    move/from16 v0, v116

    if-eq v0, v7, :cond_2f

    .line 427
    move/from16 v8, v116

    .line 428
    .local v8, "endPos":I
    move/from16 v9, v117

    .line 429
    .local v9, "above":I
    move/from16 v10, v119

    .line 430
    .local v10, "below":I
    move/from16 v11, v120

    .line 431
    .local v11, "top":I
    move/from16 v12, v118

    .line 432
    .local v12, "bottom":I
    move/from16 v32, v121

    .local v32, "currentTextWidth":F
    :goto_10
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 449
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 456
    move v7, v8

    .line 457
    add-int/lit8 v110, v7, -0x1

    .line 458
    move/from16 v100, v7

    move/from16 v116, v7

    .line 459
    const/16 v62, 0x0

    .line 460
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 461
    const/16 v118, 0x0

    move/from16 v120, v118

    move/from16 v119, v118

    move/from16 v117, v118

    .line 463
    add-int/lit8 v99, v99, -0x1

    if-gtz v99, :cond_2c

    .line 464
    move/from16 v132, v122

    .line 467
    :cond_2c
    move/from16 v0, v126

    if-ge v7, v0, :cond_31

    .line 470
    move-object/from16 v0, v114

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 471
    move/from16 v124, v7

    .line 286
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v96    # "c":C
    .end local v109    # "isSpaceOrTab":Z
    :cond_2d
    :goto_11
    move/from16 v126, v124

    goto/16 :goto_7

    .line 421
    .restart local v96    # "c":C
    .restart local v109    # "isSpaceOrTab":Z
    :cond_2e
    const/16 v34, 0x0

    goto :goto_f

    .line 433
    .restart local v34    # "moreChars":Z
    :cond_2f
    move/from16 v0, v100

    if-eq v0, v7, :cond_30

    .line 434
    move/from16 v8, v100

    .line 435
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 436
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 437
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 438
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 439
    .restart local v12    # "bottom":I
    move/from16 v32, v101

    .restart local v32    # "currentTextWidth":F
    goto :goto_10

    .line 441
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_30
    add-int/lit8 v8, v7, 0x1

    .line 442
    .restart local v8    # "endPos":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 443
    .restart local v9    # "above":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 444
    .restart local v10    # "below":I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 445
    .restart local v11    # "top":I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 446
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto :goto_10

    .line 475
    :cond_31
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_1a

    goto :goto_11

    .line 482
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v94    # "bZerowithspace":Z
    .end local v96    # "c":C
    .end local v102    # "fmAscent":I
    .end local v103    # "fmBottom":I
    .end local v104    # "fmDescent":I
    .end local v105    # "fmTop":I
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v124    # "spanEnd":I
    .end local v125    # "spanLen":I
    :cond_32
    move/from16 v0, v38

    if-eq v0, v7, :cond_34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_34

    .line 483
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_33

    .line 484
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 486
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 487
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 488
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 489
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 494
    :cond_33
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_38

    const/16 v64, 0x1

    :goto_12
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 506
    :cond_34
    move/from16 v29, v38

    .line 508
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_39

    .line 512
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v100    # "fit":I
    .end local v101    # "fitWidth":F
    .end local v106    # "hasTab":Z
    .end local v116    # "ok":I
    .end local v117    # "okAscent":I
    .end local v118    # "okBottom":I
    .end local v119    # "okDescent":I
    .end local v120    # "okTop":I
    .end local v121    # "okWidth":F
    .end local v122    # "restWidth":I
    .end local v126    # "spanStart":I
    .end local v129    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v132    # "width":I
    :cond_35
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_36

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_37

    .line 516
    move-object/from16 v0, v114

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 518
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 520
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v0, v114

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v114

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v114

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v81, v0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 531
    :cond_37
    return-void

    .line 494
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v100    # "fit":I
    .restart local v101    # "fitWidth":F
    .restart local v106    # "hasTab":Z
    .restart local v116    # "ok":I
    .restart local v117    # "okAscent":I
    .restart local v118    # "okBottom":I
    .restart local v119    # "okDescent":I
    .restart local v120    # "okTop":I
    .restart local v121    # "okWidth":F
    .restart local v122    # "restWidth":I
    .restart local v126    # "spanStart":I
    .restart local v129    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v132    # "width":I
    :cond_38
    const/16 v64, 0x0

    goto/16 :goto_12

    .line 199
    :cond_39
    move/from16 v29, v38

    goto/16 :goto_2
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1054
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1063
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1064
    const/4 v0, 0x0

    .line 1067
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1014
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1015
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1019
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 978
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 979
    .local v1, "high":I
    const/4 v3, -0x1

    .line 981
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 982
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 983
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 984
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 985
    move v1, v0

    goto :goto_0

    .line 987
    :cond_0
    move v3, v0

    goto :goto_0

    .line 990
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 991
    const/4 v3, 0x0

    .line 993
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1004
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1005
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1076
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1077
    return-void
.end method
