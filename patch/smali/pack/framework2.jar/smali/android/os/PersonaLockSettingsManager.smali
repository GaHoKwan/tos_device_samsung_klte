.class public Landroid/os/PersonaLockSettingsManager;
.super Ljava/lang/Object;
.source "PersonaLockSettingsManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "PersonaLockSettingsManager"

    sput-object v0, Landroid/os/PersonaLockSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Landroid/os/PersonaLockSettingsManager;->mService:Lcom/android/internal/widget/ILockSettings;

    .line 34
    iput-object p1, p0, Landroid/os/PersonaLockSettingsManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method
