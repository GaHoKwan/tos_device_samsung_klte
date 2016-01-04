.class public abstract Lcom/absolute/android/logutil/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_DEBUG:Z = false

.field public static final LOG_INFO:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "APS"

.field static a:Ljava/lang/String;

.field private static b:Lcom/absolute/android/logutil/LogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "APS"

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/absolute/android/logutil/LogUtil;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "com.absolute.android.common.logutil.LogUtilNoPS"

    .line 83
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/logutil/LogUtil;

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 43
    :try_start_0
    sput-object p1, Lcom/absolute/android/logutil/LogUtil;->a:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 48
    :try_start_1
    const-string v0, "ABTPersistenceService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "LogUtil.init: abtPersistMgr == null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_2
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception caught getting PSMgr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 59
    :goto_0
    if-eqz v0, :cond_2

    .line 60
    const-string v0, "com.absolute.android.logutil.LogUtilWithPS"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_1
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/logutil/LogUtil;

    .line 68
    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, p0}, Lcom/absolute/android/logutil/LogUtil;->start(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    :cond_0
    :goto_2
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    :try_start_4
    const-string v0, "com.absolute.android.logutil.LogUtilNoPS"

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public abstract logMessage(ILjava/lang/String;)V
.end method

.method public abstract start(Landroid/content/Context;)V
.end method
