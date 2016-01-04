.class public Lcom/absolute/android/logutil/a;
.super Lcom/absolute/android/logutil/LogUtil;
.source "SourceFile"


# static fields
.field private static final b:Z = false

.field private static final c:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/absolute/android/logutil/LogUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 47
    :goto_0
    :pswitch_0
    return-void

    .line 30
    :pswitch_1
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :pswitch_4
    sget-object v0, Lcom/absolute/android/logutil/a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
