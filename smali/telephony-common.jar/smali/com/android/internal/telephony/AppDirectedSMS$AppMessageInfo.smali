.class public Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppMessageInfo"
.end annotation


# static fields
.field private static final APPDIR_SMS_NO_COMPONENT:I = 0x2

.field private static final APPDIR_SMS_TRUE:I = 0x1


# instance fields
.field private mAppDirSmsStatus:I

.field private mAppPrefix:Ljava/lang/String;

.field private mComponentname:Landroid/content/ComponentName;

.field private mParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkifcomponentpresent()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getappMsgBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getappdirsmsstatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 48
    iget v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getcomponentnameDirectedSms()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    return-object v0
.end method

.method public setNoRegisteredComponent()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    .line 60
    return-void
.end method

.method public setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentname"    # Landroid/content/ComponentName;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "appPrefix"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mComponentname:Landroid/content/ComponentName;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppDirSmsStatus:I

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mParameter:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mAppPrefix:Ljava/lang/String;

    .line 56
    return-void
.end method
