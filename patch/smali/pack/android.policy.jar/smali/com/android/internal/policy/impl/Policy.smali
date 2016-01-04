.class public Lcom/android/internal/policy/impl/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Lcom/android/internal/policy/IPolicy;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhonePolicy"

.field private static final preload_classes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 43
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.android.internal.policy.impl.PhoneLayoutInflater"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "com.android.internal.policy.impl.PhoneWindow"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "com.android.internal.policy.impl.PhoneWindow$1"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "com.android.internal.policy.impl.PhoneWindow$DialogMenuCallback"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "com.android.internal.policy.impl.PhoneWindow$PanelFeatureState"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "com.android.internal.policy.impl.PhoneWindow$PanelFeatureState$SavedState"

    aput-object v7, v5, v6

    sput-object v5, Lcom/android/internal/policy/impl/Policy;->preload_classes:[Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/android/internal/policy/impl/Policy;->preload_classes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 58
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v5, "PhonePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not preload class for phone policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewWindow(Landroid/content/Context;Z)Landroid/view/Window;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needMultiPhoneWindow"    # Z

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;-><init>(Landroid/content/Context;)V

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "win":Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x400000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method

.method public makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    return-object v0
.end method
