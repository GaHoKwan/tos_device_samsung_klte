.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final HOURS:Ljava/lang/String; = "h"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = ":mm"

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static final mTimeFormat:Ljava/lang/String; = "h:mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTimeDisplayHours:Landroid/widget/TextView;

.field private mTimeDisplayMinutes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 97
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->initClock(Landroid/content/Context;)V

    .line 109
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 217
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 218
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 219
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 221
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 222
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 223
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 227
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 230
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 233
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 117
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 132
    return-void
.end method

.method private onTimeChanged()V
    .locals 7

    .prologue
    .line 167
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v4, :cond_3

    .line 169
    const-string v4, "kk"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mHoursFormat:Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v1, "fullTimeStr":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mHoursFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 178
    .local v2, "newTime":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 180
    const-string v4, ":mm"

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const-string v5, "AA"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 188
    const-string v0, ""

    .line 189
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "value":Ljava/lang/String;
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v5, 0x104010e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x104010d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    return-void

    .line 172
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "fullTimeStr":Ljava/lang/StringBuilder;
    .end local v2    # "newTime":Ljava/lang/CharSequence;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, "h"

    iput-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mHoursFormat:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 192
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v1    # "fullTimeStr":Ljava/lang/StringBuilder;
    .restart local v2    # "newTime":Ljava/lang/CharSequence;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v5, 0x104010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 240
    const-string v0, ""

    .line 242
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 243
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x1040105

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v5, :cond_3

    .line 254
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "mTTSTime":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    return-object v0

    .line 246
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_2
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x1040106

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 256
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "h:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    .line 151
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 137
    const v0, 0x10203a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x10203a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeDisplayHours:Landroid/widget/TextView;

    .line 140
    const v0, 0x10203a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    .line 142
    const v0, 0x10203a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    .line 143
    const v0, 0x10203a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    .line 144
    const v0, 0x10203a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    .line 145
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method
