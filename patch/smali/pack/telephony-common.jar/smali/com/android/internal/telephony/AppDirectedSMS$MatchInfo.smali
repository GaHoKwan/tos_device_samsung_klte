.class Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchInfo"
.end annotation


# instance fields
.field public mAppPrefix:Ljava/lang/String;

.field public mComponentName:Landroid/content/ComponentName;

.field public mParameter:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mComponentName:Landroid/content/ComponentName;

    .line 82
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mAppPrefix:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;->mParameter:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/AppDirectedSMS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/AppDirectedSMS$1;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/AppDirectedSMS$MatchInfo;-><init>()V

    return-void
.end method
