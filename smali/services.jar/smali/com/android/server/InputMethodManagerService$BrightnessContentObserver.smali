.class Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 1022
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1023
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1026
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$BrightnessContentObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    # setter for: Lcom/android/server/InputMethodManagerService;->mIsAutoBrightness:Z
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$1002(Z)Z

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    # setter for: Lcom/android/server/InputMethodManagerService;->mIsAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1002(Z)Z

    .line 1030
    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1031
    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$502(I)I

    goto :goto_0
.end method
