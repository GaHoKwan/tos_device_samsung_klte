.class Landroid/webkitsec/AccessibilityInjectorFallback;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final MODIFY_SELECTION_TIMEOUT:I = 0x1f4

.field private static final NAVIGATION_AXIS_CHARACTER:I = 0x0

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static final NAVIGATION_AXIS_DOCUMENT:I = 0x6

.field private static final NAVIGATION_AXIS_HEADING:I = 0x3

.field private static final NAVIGATION_AXIS_PARENT_FIRST_CHILD:I = 0x5

.field private static final NAVIGATION_AXIS_SENTENCE:I = 0x2

.field private static final NAVIGATION_AXIS_SIBLING:I = 0x4

.field private static final NAVIGATION_AXIS_WORD:I = 0x1

.field private static final NAVIGATION_DIRECTION_BACKWARD:I = 0x0

.field private static final NAVIGATION_DIRECTION_FORWARD:I = 0x1

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private mCallbackReceived:Z

.field private mCallbackResult:Z

.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

.field private mScheduledToken:I

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private final mWebViewInternal:Landroid/webkitsec/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkitsec/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledToken:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 147
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkitsec/WebView;

    .line 148
    invoke-direct {p0}, Landroid/webkitsec/AccessibilityInjectorFallback;->ensureWebContentKeyBindings()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/AccessibilityInjectorFallback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/AccessibilityInjectorFallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback;->onSelectionStringChangedMainThread(Ljava/lang/String;I)V

    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .locals 14

    .prologue
    .line 538
    sget-object v11, Landroid/webkitsec/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 573
    :cond_0
    return-void

    .line 542
    :cond_1
    iget-object v11, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 546
    .local v10, "webContentKeyBindingsString":Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 547
    .local v9, "semiColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 549
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 550
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "bindingString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 552
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_2
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "keyValueArray":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 558
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_3
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 563
    .local v5, "keyCodeAndModifiers":J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "actionStrings":[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .line 565
    .local v1, "actions":[I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v3, v1

    .local v3, "count":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 566
    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 568
    :cond_4
    sget-object v11, Landroid/webkitsec/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 569
    .end local v0    # "actionStrings":[Ljava/lang/String;
    .end local v1    # "actions":[I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "keyCodeAndModifiers":J
    :catch_0
    move-exception v8

    .line 570
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getAxisForGranularity(I)I
    .locals 1
    .param p0, "granularity"    # I

    .prologue
    const/4 v0, 0x2

    .line 356
    sparse-switch p0, :sswitch_data_0

    .line 369
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 358
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getDirectionForAction(I)I
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 336
    sparse-switch p0, :sswitch_data_0

    .line 344
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 339
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method private getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 529
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 530
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 531
    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 576
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSelectionStringChangedMainThread(Ljava/lang/String;I)V
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 461
    const-string v1, "AccessibilityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledToken:I

    if-eq p2, v1, :cond_1

    .line 466
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection string has incorrect token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 473
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 474
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 476
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 480
    invoke-direct {p0, v0}, Landroid/webkitsec/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    move v1, v2

    .line 471
    goto :goto_1
.end method

.method private performAxisTransition(IIZLjava/lang/String;)V
    .locals 1
    .param p1, "fromAxis"    # I
    .param p2, "toAxis"    # I
    .param p3, "sendEvent"    # Z
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 284
    iget v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCurrentAxis:I

    if-ne v0, p1, :cond_0

    .line 285
    invoke-direct {p0, p2, p3, p4}, Landroid/webkitsec/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 514
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 519
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 522
    :cond_0
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .locals 3
    .param p1, "axis"    # I
    .param p2, "sendEvent"    # Z
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 264
    iput p1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 265
    if-eqz p2, :cond_0

    .line 266
    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Landroid/webkitsec/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 268
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0, v0}, Landroid/webkitsec/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 272
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;Z)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "axis"    # I
    .param p3, "sendEvent"    # Z
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "sychronous"    # Z

    .prologue
    const/16 v7, 0xbe

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 384
    iget-object v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    .line 385
    .local v3, "webViewCore":Landroid/webkitsec/WebViewCore;
    if-nez v3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v5

    .line 389
    :cond_1
    const/4 v2, 0x0

    .line 390
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_2

    .line 391
    const/high16 v6, 0x20000

    invoke-direct {p0, v6}, Landroid/webkitsec/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 394
    invoke-virtual {v2, p4}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 396
    iput-object v2, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 397
    iget v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledToken:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledToken:I

    .line 404
    :cond_2
    const/4 v6, 0x7

    if-eq p2, v6, :cond_0

    .line 409
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 410
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 411
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 412
    iget v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mScheduledToken:I

    iput v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 414
    if-nez p5, :cond_3

    .line 416
    invoke-virtual {v3, v7, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v5, v4

    .line 417
    goto :goto_0

    .line 422
    :cond_3
    iget-object v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 423
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackReceived:Z

    .line 427
    const/16 v7, 0xbe

    invoke-virtual {v3, v7, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :try_start_1
    iget-object v7, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackResult:Z

    .line 436
    .local v1, "callbackResult":Z
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    iget-boolean v6, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackReceived:Z

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    move v5, v4

    goto :goto_0

    .line 436
    .end local v1    # "callbackResult":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v1    # "callbackResult":Z
    :cond_4
    move v4, v5

    .line 438
    goto :goto_2

    .line 431
    .end local v1    # "callbackResult":Z
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkitsec/AccessibilityInjectorFallback;->isEnterActionKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 253
    :goto_0
    return v3

    .line 162
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_0

    .line 166
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    .line 168
    const/4 v15, 0x0

    .line 169
    .local v15, "binding":Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    sget-object v3, Landroid/webkitsec/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    .line 170
    .local v16, "candidate":Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v8

    if-ne v3, v8, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    move-object/from16 v15, v16

    .line 177
    .end local v16    # "candidate":Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    :cond_3
    if-nez v15, :cond_4

    .line 178
    const/4 v3, 0x0

    goto :goto_0

    .line 181
    :cond_4
    const/16 v19, 0x0

    .local v19, "i":I
    invoke-virtual {v15}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v17

    .local v17, "count":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 182
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v14

    .line 183
    .local v14, "actionCode":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "contentDescription":Ljava/lang/String;
    packed-switch v14, :pswitch_data_0

    .line 249
    const-string v3, "AccessibilityInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown action code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 186
    :pswitch_0
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v5

    .line 187
    .local v5, "axis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    const/4 v6, 0x1

    .line 188
    .local v6, "sendEvent":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Landroid/webkitsec/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 189
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 187
    .end local v6    # "sendEvent":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 192
    .end local v5    # "axis":I
    :pswitch_1
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v4

    .line 194
    .local v4, "direction":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v4, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v3, :cond_6

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 196
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 198
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    .line 199
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    const/4 v6, 0x1

    .line 203
    .restart local v6    # "sendEvent":Z
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 199
    .end local v6    # "sendEvent":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 208
    .end local v4    # "direction":I
    :pswitch_2
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v4

    .line 210
    .restart local v4    # "direction":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v4, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v3, :cond_8

    .line 211
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 212
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 214
    :cond_8
    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    .line 215
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v5

    .line 216
    .restart local v5    # "axis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_9

    const/4 v6, 0x1

    .line 218
    .restart local v6    # "sendEvent":Z
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkitsec/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 216
    .end local v6    # "sendEvent":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 222
    .end local v4    # "direction":I
    .end local v5    # "axis":I
    :pswitch_3
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v18

    .line 223
    .local v18, "fromAxis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v21

    .line 224
    .local v21, "toAxis":I
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_a

    const/4 v6, 0x1

    .line 225
    .restart local v6    # "sendEvent":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/webkitsec/AccessibilityInjectorFallback;->performAxisTransition(IIZLjava/lang/String;)V

    .line 226
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 224
    .end local v6    # "sendEvent":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    .line 232
    .end local v18    # "fromAxis":I
    .end local v21    # "toAxis":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v8, 0x7

    if-ne v3, v8, :cond_c

    .line 235
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    .line 236
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/webkitsec/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_b

    const/4 v6, 0x1

    .line 240
    .restart local v6    # "sendEvent":Z
    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDirection:I

    const/4 v10, 0x7

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v11, v6

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Landroid/webkitsec/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    .line 243
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 236
    .end local v6    # "sendEvent":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 245
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 253
    .end local v7    # "contentDescription":Ljava/lang/String;
    .end local v14    # "actionCode":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    const/4 v0, 0x1

    .line 445
    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackReceived:Z

    .line 447
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackResult:Z

    .line 448
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mCallbackLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 449
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkitsec/WebView;

    new-instance v1, Landroid/webkitsec/AccessibilityInjectorFallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/webkitsec/AccessibilityInjectorFallback$1;-><init>(Landroid/webkitsec/AccessibilityInjectorFallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 306
    sparse-switch p1, :sswitch_data_0

    .line 324
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 309
    :sswitch_0
    invoke-static {p1}, Landroid/webkitsec/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 310
    .local v1, "direction":I
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/webkitsec/AccessibilityInjectorFallback;->getAxisForGranularity(I)I

    move-result v2

    .local v2, "axis":I
    move-object v0, p0

    move v5, v3

    .line 313
    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 317
    .end local v1    # "direction":I
    .end local v2    # "axis":I
    :sswitch_1
    invoke-static {p1}, Landroid/webkitsec/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 319
    .restart local v1    # "direction":I
    const/4 v2, 0x2

    .line 321
    .restart local v2    # "axis":I
    const/4 v7, 0x2

    move-object v5, p0

    move v6, v1

    move v8, v3

    move-object v9, v4

    move v10, v3

    invoke-direct/range {v5 .. v10}, Landroid/webkitsec/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method
