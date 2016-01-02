.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p2, "gsmSST"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 159
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkApnInfo()V

    .line 165
    return-void
.end method
