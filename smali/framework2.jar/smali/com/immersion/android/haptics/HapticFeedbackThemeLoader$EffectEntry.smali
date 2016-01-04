.class Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectEntry"
.end annotation


# instance fields
.field public mEffectIndex:I

.field public mEffectName:Ljava/lang/String;

.field public mIvtFile:Ljava/lang/String;

.field public mRealEffectName:Ljava/lang/String;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;


# direct methods
.method private constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->this$0:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectIndex:I

    .line 55
    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
    .param p2, "x1"    # Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;)V

    return-void
.end method
