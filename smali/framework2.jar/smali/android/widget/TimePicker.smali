.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$TwTextWatcher;,
        Landroid/widget/TimePicker$TwKeyListener;,
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourFormat:C

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    const v0, 0x1010421

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 169
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 1036
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    .line 1038
    const/4 v13, 0x3

    new-array v13, v13, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 1040
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/TimePicker;->PICKER_HOUR:I

    .line 1041
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/TimePicker;->PICKER_MINUTE:I

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 175
    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 177
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    const v14, 0x10900d7

    invoke-virtual {v6, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 179
    .local v9, "layoutResourceId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 183
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v9, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 186
    const v13, 0x10203f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v14, Landroid/widget/TimePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020377

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const v14, 0x2000005

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 211
    const v13, 0x10203f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 213
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->setDividerText()V

    .line 217
    :cond_0
    const v13, 0x10203f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v14, 0x3b

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v14, Landroid/widget/TimePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020377

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v14, 0x2000006

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 260
    new-instance v13, Ljava/text/DateFormatSymbols;

    invoke-direct {v13}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v13}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 263
    const v13, 0x10203f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 264
    .local v5, "amPmView":Landroid/view/View;
    instance-of v13, v5, Landroid/widget/Button;

    if-eqz v13, :cond_b

    .line 265
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 266
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v13, v5

    .line 267
    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v14, Landroid/widget/TimePicker$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :goto_0
    new-instance v3, Landroid/widget/TimePicker$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/TimePicker$6;-><init>(Landroid/widget/TimePicker;)V

    .line 316
    .local v3, "TouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_2

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    :cond_4
    instance-of v13, v5, Landroid/widget/Button;

    if-nez v13, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_6

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->isAmPmAtStart()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 354
    const v13, 0x10203f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 355
    .local v4, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 359
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 360
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v11

    .line 361
    .local v11, "startMargin":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    .line 362
    .local v7, "endMargin":I
    if-eq v11, v7, :cond_7

    .line 363
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 364
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 368
    .end local v4    # "amPmParent":Landroid/view/ViewGroup;
    .end local v7    # "endMargin":I
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 371
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 373
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 375
    sget-object v13, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 382
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 386
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_9

    .line 390
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 394
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePicker;->setTextWatcher()V

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isWritingBuddyFeatureEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 398
    new-instance v12, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    .line 399
    .local v12, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 400
    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 408
    :goto_1
    new-instance v13, Landroid/widget/TimePicker$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePicker$7;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v12, v13}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V

    .line 445
    new-instance v13, Landroid/widget/TimePicker$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePicker$8;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v12, v13}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 513
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/TimePicker;->mIsEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    .line 516
    .end local v12    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_a
    return-void

    .line 277
    .end local v3    # "TouchListener":Landroid/view/View$OnTouchListener;
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v13, v5

    .line 278
    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v14, Landroid/widget/TimePicker$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020377

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setInputType(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto/16 :goto_0

    .line 402
    .restart local v3    # "TouchListener":Landroid/view/View$OnTouchListener;
    .restart local v12    # "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v13, :cond_d

    .line 403
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_1

    .line 405
    :cond_d
    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TimePicker;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TimePicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePicker;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/TimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 519
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 520
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 523
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 524
    const/4 v3, 0x0

    .line 527
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 528
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 529
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 530
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePicker;->mHourFormat:C

    .line 531
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 532
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 537
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 520
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 527
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 540
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 541
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 938
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 939
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 942
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x1020378

    const v2, 0x1020376

    .line 946
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040823

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 948
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040824

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 951
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040825

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 953
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040826

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 957
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmDescription()V

    .line 967
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 708
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 713
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 715
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 716
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 724
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 726
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 727
    if-eqz p2, :cond_0

    .line 728
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 719
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 720
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 586
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 590
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 811
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 812
    .local v1, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_1

    const-string v5, "Hm"

    .line 813
    .local v5, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v6, 0x48

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 817
    .local v2, "hourIndex":I
    if-ne v2, v8, :cond_0

    .line 818
    const/16 v6, 0x68

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 820
    :cond_0
    if-ne v2, v8, :cond_2

    .line 822
    const-string v4, ":"

    .line 831
    .local v4, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    return-void

    .line 812
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourIndex":I
    .end local v4    # "separatorText":Ljava/lang/String;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v5, "hm"

    goto :goto_0

    .line 824
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 825
    .local v3, "minuteIndex":I
    if-ne v3, v8, :cond_3

    .line 826
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 828
    .end local v4    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private setTextWatcher()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1051
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1052
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1054
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1055
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1057
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1058
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1059
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 988
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 990
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 992
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 5

    .prologue
    const v4, 0x2000006

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 934
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 935
    return-void

    .line 917
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 920
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 921
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 922
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 923
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 927
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmDescription()V

    goto :goto_0

    .line 920
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 930
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAmPmDescription()V
    .locals 5

    .prologue
    const v4, 0x1040828

    const v3, 0x1040827

    const v2, 0x1020378

    const v1, 0x1020376

    .line 971
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 972
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v1, v3}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 975
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v2, v3}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v1, v4}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 980
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0, v2, v4}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 875
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 878
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 879
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 894
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 895
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 882
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 886
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 887
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 888
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 890
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 891
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 894
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1000
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1001
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1002
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1006
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1013
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1014
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1022
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    const v1, 0x2000006

    .line 898
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 907
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v1, 0x2000005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 645
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 689
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 690
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 695
    :goto_0
    return-object v1

    .line 692
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 693
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 695
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimePickerText()[Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 577
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 578
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 864
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 865
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 866
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 870
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 871
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 872
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 849
    const/4 v0, 0x1

    .line 850
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 851
    or-int/lit16 v0, v0, 0x80

    .line 855
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 856
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 857
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    return-void

    .line 853
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 670
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 671
    .local v0, "ss":Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 672
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 673
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 674
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 650
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 652
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    .line 654
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 657
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 660
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 665
    :cond_2
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 704
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 790
    if-nez p1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 798
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 799
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 557
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 563
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 565
    invoke-virtual {p0, p1}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 738
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 744
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 745
    invoke-direct {p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 746
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 750
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 751
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 752
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 755
    invoke-virtual {p0}, Landroid/view/View;->isWritingBuddyFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 757
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v1, :cond_2

    .line 758
    invoke-virtual {p0, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0

    .line 760
    :cond_2
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_3

    .line 761
    invoke-virtual {p0, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 682
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 683
    return-void
.end method
