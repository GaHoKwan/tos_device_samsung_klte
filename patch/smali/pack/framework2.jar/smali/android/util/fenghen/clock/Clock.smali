.class public Landroid/util/fenghen/clock/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/fenghen/clock/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_LOCK_VIS:Ljava/lang/String; = "com.legendk.systemui.UPDATE_CLOCK_VISIBILITY"

.field public static final AM_PM_STYLE_GONE:I = 0x0

.field public static final AM_PM_STYLE_NORMAL:I = 0x2

.field public static final AM_PM_STYLE_SMALL:I = 0x1

.field public static final CLOCK_TYPE_12H:I = 0x0

.field public static final CLOCK_TYPE_24H:I = 0x1

.field public static final DATE_STYLE_GONE:I = 0x0

.field public static final DATE_STYLE_NORMAL:I = 0x2

.field public static final DATE_STYLE_SMALL:I = 0x1

.field public static final DB_AM_PM_STYLE:Ljava/lang/String; = "db_dormant_fenghenztlampm_icon"

.field public static final DB_CLOCK_COLOR:Ljava/lang/String; = "db_dormant_fenghenztlszys_icon"

.field public static final DB_CLOCK_POSITION:Ljava/lang/String; = "db_inkeffect_fenghenztlszwz_picker"

.field public static final DB_CLOCK_WEEKDAY:Ljava/lang/String; = "db_dormant_fenghenztlxq_icon"

.field public static final DB_DATE_VIEW:Ljava/lang/String; = "db_dormant_fenghenztlrq_icon"

.field public static final DB_LEADING_ZERO:Ljava/lang/String; = "simp_clock_leadzero"

.field public static final HIDE_CLOCK:I = 0x0

.field public static final LEADING_ZERO_GONE:I = 0x0

.field public static final LEADING_ZERO_VISIBLE:I = 0x1

.field public static final POSITION_CENTER:I = 0x2

.field public static final POSITION_RIGHT:I = 0x1

.field public static final WEEKDAY_STYLE_GONE:I = 0x0

.field public static final WEEKDAY_STYLE_NORMAL:I = 0x2

.field public static final WEEKDAY_STYLE_SMALL:I = 0x1


# instance fields
.field protected mAmPmStyle:I

.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockColor:I

.field private mClockFilter:Landroid/content/IntentFilter;

.field protected mClockFormat:Ljava/text/SimpleDateFormat;

.field protected mClockPosition:I

.field protected mClockType:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field protected mDateStyle:I

.field protected final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mLeadingZero:I

.field private mMainObserver:Landroid/util/fenghen/clock/Clock$SettingsObserver;

.field protected mWeekday:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/fenghen/clock/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/fenghen/clock/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    iput v0, p0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    iput v0, p0, Landroid/util/fenghen/clock/Clock;->mDateStyle:I

    iput v1, p0, Landroid/util/fenghen/clock/Clock;->mClockPosition:I

    iput v0, p0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    iput v1, p0, Landroid/util/fenghen/clock/Clock;->mLeadingZero:I

    new-instance v0, Landroid/util/fenghen/clock/Clock$1;

    invoke-direct {v0, p0}, Landroid/util/fenghen/clock/Clock$1;-><init>(Landroid/util/fenghen/clock/Clock;)V

    iput-object v0, p0, Landroid/util/fenghen/clock/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/util/fenghen/clock/Clock;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/util/fenghen/clock/Clock$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/util/fenghen/clock/Clock$SettingsObserver;-><init>(Landroid/util/fenghen/clock/Clock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/fenghen/clock/Clock;->mMainObserver:Landroid/util/fenghen/clock/Clock$SettingsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    const-string v1, "com.legendk.systemui.UPDATE_CLOCK_VISIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Landroid/util/fenghen/clock/Clock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getClockType(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private modifyAmPmStyle(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_dormant_fenghenztlampm_icon"

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected final getSmallTime()Ljava/lang/CharSequence;
    .locals 26

    const v4, 0xef00

    const v5, 0xef01

    const v6, 0xef02

    const v7, 0xef03

    const v8, 0xef04

    const v9, 0xef05

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const-string v11, "h:mm"

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mDateStyle:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "\uef04MMMdd\u65e5 \uef05"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mLeadingZero:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    move/from16 v23, v0

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "\uef00EEE\uef01"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    move/from16 v23, v0

    if-eqz v23, :cond_3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v24, 0xef02

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0xef03

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    new-instance v23, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v11, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/fenghen/clock/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/fenghen/clock/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/fenghen/clock/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const v23, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const v23, 0xef03

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v23, 0x3f333333    # 0.7f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v23, 0x22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v12, v0, v15, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mDateStyle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const v23, 0xef04

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const v23, 0xef05

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v23, 0x3f333333    # 0.7f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v23, 0x22

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const v23, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const v23, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v13, :cond_6

    if-le v14, v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    move/from16 v23, v0

    if-nez v23, :cond_c

    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    :goto_1
    const/4 v10, 0x0

    new-instance v20, Landroid/text/style/RelativeSizeSpan;

    const v23, 0x3f333333    # 0.7f

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    const v23, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    sub-int v24, v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    const v23, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const v24, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const v23, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const-string v24, " "

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mDateStyle:I

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const v23, 0xef04

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef04

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    sub-int v24, v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    const v23, 0xef05

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef05

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    sub-int v24, v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    move/from16 v23, v0

    if-eqz v23, :cond_a

    const v23, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    sub-int v24, v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const v23, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const-string v24, " "

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    const v23, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef02

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    sub-int v24, v24, v10

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x22

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    const v23, 0xef03

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    sub-int v23, v23, v10

    const v24, 0xef03

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    sub-int v24, v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    :cond_a
    return-object v12

    :cond_b
    const-string v11, "H:mm"

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v23, 0x3f333333    # 0.7f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v23, 0x22

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v12, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/util/fenghen/clock/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock;->mClockFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/util/fenghen/clock/Clock;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mMainObserver:Landroid/util/fenghen/clock/Clock$SettingsObserver;

    invoke-virtual {v0}, Landroid/util/fenghen/clock/Clock$SettingsObserver;->observe()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/fenghen/clock/Clock;->mMainObserver:Landroid/util/fenghen/clock/Clock$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setClockVisible(Z)V
    .locals 2

    iget v0, p0, Landroid/util/fenghen/clock/Clock;->mClockPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/fenghen/clock/Clock;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method final updateClock()V
    .locals 3

    iget-object v0, p0, Landroid/util/fenghen/clock/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/util/fenghen/clock/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/fenghen/clock/Clock;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateClockVisibility()V
    .locals 2

    iget v0, p0, Landroid/util/fenghen/clock/Clock;->mClockPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/fenghen/clock/Clock;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateSettings()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v0, p0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/util/fenghen/clock/Clock;->getClockType(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    iget v2, p0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Landroid/util/fenghen/clock/Clock;->mClockType:I

    invoke-direct {p0, v2}, Landroid/util/fenghen/clock/Clock;->modifyAmPmStyle(I)V

    :cond_0
    const-string v2, "db_dormant_fenghenztlampm_icon"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mAmPmStyle:I

    const-string v2, "db_dormant_fenghenztlszys_icon"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mClockColor:I

    iget v2, p0, Landroid/util/fenghen/clock/Clock;->mClockColor:I

    invoke-virtual {p0, v2}, Landroid/util/fenghen/clock/Clock;->setTextColor(I)V

    const-string v2, "db_inkeffect_fenghenztlszwz_picker"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mClockPosition:I

    const-string v2, "db_dormant_fenghenztlxq_icon"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mWeekday:I

    const-string/jumbo v2, "simp_clock_leadzero"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mLeadingZero:I

    const-string v2, "db_dormant_fenghenztlrq_icon"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/util/fenghen/clock/Clock;->mDateStyle:I

    invoke-virtual {p0}, Landroid/util/fenghen/clock/Clock;->updateClockVisibility()V

    invoke-virtual {p0}, Landroid/util/fenghen/clock/Clock;->updateClock()V

    return-void
.end method
