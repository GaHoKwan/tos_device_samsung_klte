.class public Lcom/sec/knox/container/EnterpriseContainerPasswordService;
.super Ljava/lang/Object;
.source "EnterpriseContainerPasswordService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field private static final ALPHAS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final CONTAINER_LOCK_PASSWORD_FILE:Ljava/lang/String; = "containerpassword"

.field private static final CONTAINER_PASSWORD_SALT_KEY:Ljava/lang/String; = "container.password_salt"

.field private static final DAY_IN_MILIS:J = 0x5265c00L

.field private static final DAY_IN_MINUTES:J = 0x5a0L

.field private static final DEFAUL_MAXIMUM_TIME_TO_LOCK:J = 0x1b7740L

.field private static final DEFAUL_MAXIMUM_TIME_TO_UNMOUNT:J = 0x0L

.field private static final DIGIT_CHARS:Ljava/lang/String; = "\\d(?=\\d{1,})"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final MAX_CONTAINER_NUMBER:I = 0x3

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final NUMBERS:Ljava/lang/String; = "0123456789"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PASSWORD_MAXIMUM_LENGTH:I = 0x10

.field private static final PASSWORD_MINIMUM_LENGTH:I = 0x6

.field private static final PASSWORD_MINIMUM_LETTERS:I = 0x1

.field private static final PASSWORD_MINIMUM_NUMERICS:I = 0x1

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x15c4

.field private static final REQUEST_UNMOUNT_TIMEOUT:I = 0x15c5

.field private static final REVERSE_ALPHAS:Ljava/lang/String; = "zyxwvutsrqponmlkjihgfedcba"

.field private static final REVERSE_NUMBERS:Ljava/lang/String; = "9876543210"

.field private static final SECOND_IN_MILIS:J = 0x3e8L

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD_OF_LOOP_CHAR:I = 0x3

.field private static final THRESHOLD_OF_SEQUENTIAL_CHAR:I = 0x4

.field private static final WORD_CHARS:Ljava/lang/String; = "\\w(?=\\w{1,})"

.field private static containerPasswordFilePath:Ljava/lang/String;

.field private static mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mECS:Lcom/sec/knox/container/EnterpriseContainerService;

.field private mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

.field private mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "EnterpriseContainerPasswordService"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    .line 134
    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 136
    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    .line 139
    const/16 v0, 0x48

    sput v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    .line 133
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 141
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 143
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    .line 161
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 162
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 186
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    .line 189
    const-string v0, "/data/system/container/containerpassword"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    .line 191
    new-instance v0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sec/knox/container/EnterpriseContainerService;
    .param p3, "sManager"    # Lcom/sec/knox/container/manager/StateManager;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;)V

    .line 204
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 205
    iput-object p2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 206
    return-void
.end method

.method private cancelPasswordExpirationAlarm(I)V
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 233
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 234
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c3

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 238
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    return-void

    .line 249
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 9
    .param p1, "str1"    # Ljava/lang/CharSequence;
    .param p2, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1605
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1607
    .local v0, "distance":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 1608
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1609
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1610
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1609
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1612
    :cond_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 1613
    const/4 v2, 0x1

    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 1614
    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_4
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    .line 1613
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1614
    :cond_2
    const/4 v3, 0x1

    goto :goto_4

    .line 1612
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1618
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "storedPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1576
    if-nez p3, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return v1

    .line 1579
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v0

    .line 1580
    .local v0, "minDistance":I
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containsForbiddenStringDistance() minDistance= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    if-gtz v0, :cond_2

    .line 1582
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Set Minimum change Length is false-Since if its not set,we return true for time bieng"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1588
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "adminName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 748
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 749
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 750
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 752
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 753
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :cond_1
    :try_start_0
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 762
    :goto_0
    return-object v3

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 759
    goto :goto_0

    .line 760
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 761
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 762
    goto :goto_0
.end method

.method private getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1357
    const/4 v3, 0x0

    .line 1359
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    .line 1361
    .local v2, "length":I
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    new-array v5, v2, [B

    .line 1365
    .local v5, "storedPassword":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1366
    .local v1, "got":I
    if-gtz v1, :cond_1

    .line 1381
    if-eqz v4, :cond_0

    .line 1382
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    move-object v5, v6

    .line 1388
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v5    # "storedPassword":[B
    :goto_1
    return-object v5

    .line 1381
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v2    # "length":I
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "storedPassword":[B
    :cond_1
    if-eqz v4, :cond_2

    .line 1382
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_2
    :goto_2
    move-object v3, v4

    .line 1370
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1371
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v5    # "storedPassword":[B
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1381
    if-eqz v3, :cond_3

    .line 1382
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    move-object v5, v6

    .line 1388
    goto :goto_1

    .line 1374
    :catch_1
    move-exception v0

    .line 1375
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1381
    if-eqz v3, :cond_3

    .line 1382
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 1384
    :catch_2
    move-exception v0

    .line 1385
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    :goto_6
    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1377
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1378
    .local v0, "ex":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1381
    if-eqz v3, :cond_3

    .line 1382
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 1384
    :catch_4
    move-exception v0

    .line 1385
    .local v0, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    goto :goto_6

    .line 1380
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1381
    :goto_8
    if-eqz v3, :cond_4

    .line 1382
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1380
    :cond_4
    :goto_9
    throw v6

    .line 1384
    :catch_5
    move-exception v0

    .line 1385
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1384
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v0

    .line 1385
    .local v0, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    goto :goto_6

    .line 1384
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v2    # "length":I
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "storedPassword":[B
    :catch_7
    move-exception v0

    .line 1385
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 1385
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1380
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v5    # "storedPassword":[B
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 1377
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 1374
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1371
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1468
    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1469
    .local v1, "salt":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 1471
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1472
    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setLong(Ljava/lang/String;J)V

    .line 1473
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1474
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private passwordToHash(Ljava/lang/String;)[B
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1418
    if-nez p1, :cond_0

    .line 1419
    const/4 v3, 0x0

    .line 1454
    :goto_0
    return-object v3

    .line 1421
    :cond_0
    const/4 v0, 0x0

    .line 1422
    .local v0, "algo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1437
    .local v3, "hashed":[B
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1438
    .local v8, "saltedPassword":[B
    const/4 v9, 0x0

    .line 1439
    .local v9, "sha":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1440
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1441
    .local v6, "s":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v10, 0x400

    if-ge v4, v10, :cond_2

    .line 1442
    if-eqz v9, :cond_1

    .line 1443
    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 1444
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1445
    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1446
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 1441
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1448
    :cond_2
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1450
    .local v1, "e":J
    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "passwordToHash time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1451
    .end local v1    # "e":J
    .end local v4    # "i":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "s":J
    .end local v8    # "saltedPassword":[B
    .end local v9    # "sha":[B
    :catch_0
    move-exception v1

    .line 1452
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private passwordToHashOriginal(Ljava/lang/String;)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1400
    if-nez p1, :cond_0

    .line 1401
    const/4 v2, 0x0

    .line 1413
    :goto_0
    return-object v2

    .line 1403
    :cond_0
    const/4 v0, 0x0

    .line 1404
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1406
    .local v2, "hashed":[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1407
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1408
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1409
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1410
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1411
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeContainerCredentialFiles(ILjava/lang/String;)V
    .locals 5
    .param p1, "containerID"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1485
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1486
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1488
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Removed Successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 1490
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1492
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/app/admin/DeviceAdminInfo;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 802
    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "expiration"

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method private setActivePasswordState(IIIIIIIIIZIII)V
    .locals 14
    .param p1, "containerId"    # I
    .param p2, "quality"    # I
    .param p3, "length"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "letters"    # I
    .param p7, "numbers"    # I
    .param p8, "nonletter"    # I
    .param p9, "symbols"    # I
    .param p10, "simplePassword"    # Z
    .param p11, "charSeqLength"    # I
    .param p12, "digitSeqLength"    # I
    .param p13, "charMaxOccurencesCount"    # I

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1246
    return-void
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1503
    return-void
.end method

.method private setOldPasswordToHistory(I[B)V
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "passwordHash"    # [B

    .prologue
    .line 1506
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    if-nez p2, :cond_0

    .line 1508
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory(): PasswordHash is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_0
    return-void

    .line 1511
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setOldPasswordToHistory(I[B)V

    goto :goto_0

    .line 1514
    :cond_1
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setOldPasswordToHistory(): Password History Length is Zero"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPasswordStateInfoCache(IIIIIIIIIZIII)V
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "quality"    # I
    .param p3, "length"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "letters"    # I
    .param p7, "numbers"    # I
    .param p8, "nonletter"    # I
    .param p9, "symbols"    # I
    .param p10, "passwordSimple"    # Z
    .param p11, "charSeqLength"    # I
    .param p12, "digitSeqLength"    # I
    .param p13, "charMaxOccurencesCount"    # I

    .prologue
    .line 1868
    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 1869
    .local v0, "stateInfo":Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v0, :cond_0

    .line 1870
    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 1871
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 1872
    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 1873
    invoke-virtual {v0, p4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 1874
    invoke-virtual {v0, p5}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 1875
    invoke-virtual {v0, p6}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 1876
    invoke-virtual {v0, p7}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 1877
    invoke-virtual {v0, p8}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 1878
    invoke-virtual {v0, p9}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 1879
    invoke-virtual {v0, p10}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 1880
    invoke-virtual {v0, p11}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    .line 1881
    invoke-virtual {v0, p12}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    .line 1882
    invoke-virtual {v0, p13}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    .line 1883
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z

    .line 1885
    :cond_0
    return-void
.end method

.method private declared-synchronized setPasswordStatusInActive(Landroid/content/Context;I)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p2, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 291
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 292
    .local v0, "state":Lcom/sec/knox/container/constants/CSState;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v0    # "state":Lcom/sec/knox/container/constants/CSState;
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "Cache or Database instances are Null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer Task password status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    const/4 v5, 0x0

    .line 1272
    .local v5, "result":Z
    const/4 v3, 0x0

    .line 1274
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1280
    .local v2, "hash":[B
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sget v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1281
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1282
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1284
    :cond_0
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v4, v2, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1285
    const/4 v5, 0x1

    .line 1286
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1287
    .local v0, "c":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1301
    if-eqz v4, :cond_3

    .line 1302
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1303
    .end local v0    # "c":Ljava/nio/channels/FileChannel;
    .end local v2    # "hash":[B
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    const/4 v3, 0x0

    .line 1309
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v5

    .line 1288
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "File Not Found. Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1301
    if-eqz v3, :cond_1

    .line 1302
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1305
    :catch_1
    move-exception v1

    .line 1306
    .local v1, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    :goto_3
    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1293
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1295
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1301
    if-eqz v3, :cond_1

    .line 1302
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1305
    :catch_3
    move-exception v1

    .line 1306
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    goto :goto_3

    .line 1297
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1298
    .local v1, "ex":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1301
    if-eqz v3, :cond_1

    .line 1302
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 1305
    :catch_5
    move-exception v1

    .line 1306
    .local v1, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    goto :goto_3

    .line 1300
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1301
    :goto_6
    if-eqz v3, :cond_2

    .line 1302
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1303
    const/4 v3, 0x0

    .line 1300
    :cond_2
    :goto_7
    throw v6

    .line 1305
    :catch_6
    move-exception v1

    .line 1306
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close store hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1305
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "c":Ljava/nio/channels/FileChannel;
    .restart local v2    # "hash":[B
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v1

    .line 1306
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1300
    .end local v0    # "c":Ljava/nio/channels/FileChannel;
    .end local v2    # "hash":[B
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1297
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1293
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1288
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private storePassword(ILjava/lang/String;)V
    .locals 33
    .param p1, "containerID"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1178
    if-nez p2, :cond_0

    .line 1179
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "storePassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :goto_0
    return-void

    .line 1184
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Hash of Password stored"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v4

    .line 1194
    .local v4, "realQuality":I
    if-eqz v4, :cond_8

    .line 1195
    const/4 v8, 0x0

    .line 1196
    .local v8, "letters":I
    const/4 v6, 0x0

    .line 1197
    .local v6, "uppercase":I
    const/4 v7, 0x0

    .line 1198
    .local v7, "lowercase":I
    const/4 v9, 0x0

    .line 1199
    .local v9, "numbers":I
    const/4 v11, 0x0

    .line 1200
    .local v11, "symbols":I
    const/4 v10, 0x0

    .line 1201
    .local v10, "nonletter":I
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_5

    .line 1202
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    .line 1203
    .local v30, "c":C
    const/16 v2, 0x41

    move/from16 v0, v30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, v30

    if-gt v0, v2, :cond_2

    .line 1204
    add-int/lit8 v8, v8, 0x1

    .line 1205
    add-int/lit8 v6, v6, 0x1

    .line 1201
    :goto_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 1188
    .end local v4    # "realQuality":I
    .end local v6    # "uppercase":I
    .end local v7    # "lowercase":I
    .end local v8    # "letters":I
    .end local v9    # "numbers":I
    .end local v10    # "nonletter":I
    .end local v11    # "symbols":I
    .end local v30    # "c":C
    .end local v32    # "i":I
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to store the Hash of Password"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1190
    :catch_0
    move-exception v31

    .line 1191
    .local v31, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1206
    .end local v31    # "ex":Ljava/lang/Exception;
    .restart local v4    # "realQuality":I
    .restart local v6    # "uppercase":I
    .restart local v7    # "lowercase":I
    .restart local v8    # "letters":I
    .restart local v9    # "numbers":I
    .restart local v10    # "nonletter":I
    .restart local v11    # "symbols":I
    .restart local v30    # "c":C
    .restart local v32    # "i":I
    :cond_2
    const/16 v2, 0x61

    move/from16 v0, v30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-gt v0, v2, :cond_3

    .line 1207
    add-int/lit8 v8, v8, 0x1

    .line 1208
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1209
    :cond_3
    const/16 v2, 0x30

    move/from16 v0, v30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    move/from16 v0, v30

    if-gt v0, v2, :cond_4

    .line 1210
    add-int/lit8 v9, v9, 0x1

    .line 1211
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1213
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 1214
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1217
    .end local v30    # "c":C
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v12, 0x1

    .line 1220
    .local v12, "simplePassword":Z
    :goto_4
    const-string v2, "\\w(?=\\w{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1221
    .local v13, "charSeqLength":I
    const-string v2, "\\d(?=\\d{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1222
    .local v14, "digitSeqLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v15

    .line 1224
    .local v15, "charMaxOccurencesCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0

    .line 1217
    .end local v12    # "simplePassword":Z
    .end local v13    # "charSeqLength":I
    .end local v14    # "digitSeqLength":I
    .end local v15    # "charMaxOccurencesCount":I
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1233
    .end local v6    # "uppercase":I
    .end local v7    # "lowercase":I
    .end local v8    # "letters":I
    .end local v9    # "numbers":I
    .end local v10    # "nonletter":I
    .end local v11    # "symbols":I
    .end local v32    # "i":I
    :cond_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    .line 1235
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1458
    const-string v0, "0123456789ABCDEF"

    .line 1459
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1460
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    return-object v2
.end method

.method private verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1314
    const/4 v3, 0x0

    .line 1316
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    .line 1318
    .local v2, "length":I
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    new-array v5, v2, [B

    .line 1322
    .local v5, "storedPassword":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1323
    .local v1, "got":I
    if-gtz v1, :cond_2

    .line 1346
    if-eqz v4, :cond_0

    .line 1347
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1353
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "storedPassword":[B
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v6

    .line 1331
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v2    # "length":I
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "storedPassword":[B
    :cond_2
    :try_start_3
    sget v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v2, v7, :cond_4

    .line 1332
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    .line 1346
    if-eqz v4, :cond_3

    .line 1347
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    :goto_2
    move-object v3, v4

    .line 1332
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1334
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_5
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    .line 1346
    if-eqz v4, :cond_5

    .line 1347
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_5
    :goto_3
    move-object v3, v4

    .line 1334
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1336
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v5    # "storedPassword":[B
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1346
    if-eqz v3, :cond_1

    .line 1347
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1349
    :catch_1
    move-exception v0

    .line 1350
    .local v0, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    :goto_5
    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1339
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1340
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_6
    :try_start_9
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1346
    if-eqz v3, :cond_1

    .line 1347
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    .line 1349
    :catch_3
    move-exception v0

    .line 1350
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    goto :goto_5

    .line 1342
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1343
    .local v0, "ex":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1346
    if-eqz v3, :cond_1

    .line 1347
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_1

    .line 1349
    :catch_5
    move-exception v0

    .line 1350
    .local v0, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    goto :goto_5

    .line 1345
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1346
    :goto_8
    if-eqz v3, :cond_6

    .line 1347
    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 1345
    :cond_6
    :goto_9
    throw v6

    .line 1349
    :catch_6
    move-exception v0

    .line 1350
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1349
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v2    # "length":I
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "storedPassword":[B
    :catch_7
    move-exception v0

    .line 1350
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1349
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 1350
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1349
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 1350
    .restart local v0    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1345
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "got":I
    .end local v2    # "length":I
    .end local v5    # "storedPassword":[B
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 1342
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 1339
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1336
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_4
.end method


# virtual methods
.method public checkMaximumCharacterOccurrences(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1622
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    .line 1623
    .local v0, "maxOccurrence":I
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMaximumCharacterOccurrences() maxOccurrence= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1625
    :cond_0
    const/4 v1, 0x0

    .line 1627
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1651
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    .line 1652
    .local v4, "maxLength":I
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumCharacterSequenceLength() maxLength= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    if-gtz v4, :cond_0

    .line 1654
    const/4 v9, 0x0

    .line 1684
    :goto_0
    return v9

    .line 1656
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\w(?=\\w{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1657
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1658
    .local v3, "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1659
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1663
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1664
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1665
    .local v1, "charDiff":I
    if-nez v1, :cond_2

    const/4 v7, 0x0

    .line 1667
    .local v7, "sequencePattern":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1668
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 1672
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1673
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_4

    .line 1674
    const-string v9, "\\\\"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1665
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 1676
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1679
    :cond_5
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1680
    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1681
    add-int v9, v8, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1682
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1684
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    .end local v8    # "start":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public checkMaximumNumericSequenceLength(ILjava/lang/String;)Z
    .locals 12
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1688
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    .line 1689
    .local v3, "length":I
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumNumericSequenceLength() length= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    if-gtz v3, :cond_0

    .line 1691
    const/4 v9, 0x0

    .line 1721
    :goto_0
    return v9

    .line 1693
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1694
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1695
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1696
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1700
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1701
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1702
    .local v1, "charDiff":I
    if-nez v1, :cond_2

    const/4 v7, 0x0

    .line 1704
    .local v7, "sequencePattern":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1705
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1706
    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1707
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1708
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 1709
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1710
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_4

    .line 1711
    const-string v9, "\\\\"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1702
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    .line 1713
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1716
    :cond_5
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1717
    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1718
    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1719
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1721
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    .end local v8    # "start":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 1596
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "checkMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOldPasswordHistory(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1519
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    if-nez p2, :cond_0

    .line 1521
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_0
    return v1

    .line 1524
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1525
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 1526
    .local v0, "pwdHash":[B
    if-eqz v0, :cond_1

    .line 1527
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->checkOldPasswordHistory(I[B)Z

    move-result v1

    goto :goto_0

    .line 1529
    :cond_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): passwordToHash is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1532
    .end local v0    # "pwdHash":[B
    :cond_2
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password History Length is Zero"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1787
    const/4 v2, 0x0

    .line 1789
    .local v2, "loop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 1790
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1791
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1792
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1793
    add-int/lit8 v2, v2, 0x1

    .line 1796
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 1797
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChooseLockPassword has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 1795
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1800
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 1803
    goto :goto_2
.end method

.method public checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1764
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1765
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1766
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1768
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1769
    :cond_0
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 1765
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1774
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 1775
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 1776
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1777
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string/jumbo v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1778
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1779
    :cond_3
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1775
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1783
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public executeTimeout(I)V
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 267
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeoutRunnable deactivating password for container id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 270
    .local v1, "temp":Lcom/sec/knox/container/constants/CSState;
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v1, :cond_0

    .line 271
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStatusInActive(Landroid/content/Context;I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    .line 273
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "deactivating password firing intentcom.samsung.redex.proxy.activity.show_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "passwordChangedToVerify":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleUnmountTimer(I)V

    .line 282
    .end local v0    # "passwordChangedToVerify":Landroid/content/Intent;
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    .line 1045
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1031
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1073
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .param p1, "containerID"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;
    .locals 1
    .param p1, "mContainerId"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    invoke-virtual {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    invoke-virtual {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getPasswordPolicy()Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumCharOccurrencesCount(Ljava/lang/String;)I
    .locals 10
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1631
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v9, "getMaximumCharacterOccurrencesCount()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const/4 v7, 0x0

    .line 1634
    .local v7, "maxCount":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1635
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1636
    .local v2, "ca":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-char v1, v0, v5

    .line 1637
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1638
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1639
    .local v3, "count":I
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    if-ge v7, v3, :cond_0

    .line 1641
    move v7, v3

    .line 1636
    .end local v3    # "count":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1644
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1647
    .end local v1    # "c":C
    :cond_2
    return v7
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_0

    .line 529
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForDisable...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    :goto_0
    return v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 508
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_0

    .line 509
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForWipe...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 548
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-wide/16 v0, 0x0

    .line 550
    .local v0, "timeMs":J
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 552
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock is getting called from container with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 560
    :goto_0
    return-wide v2

    .line 556
    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock Failed "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock: returning default value: 30 minutes"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-wide/32 v2, 0x1b7740

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerID"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v2, 0x0

    .line 577
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-wide/16 v0, 0x0

    .line 579
    .local v0, "timeMs":J
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 581
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordEnabledContainerLockTimeout is getting called from container with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 589
    :goto_0
    return-wide v2

    .line 585
    :cond_0
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout Failed "

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout: returning default value: 0 minutes"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationDate(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 610
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 812
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerID"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory DOES EXISTS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 416
    :goto_0
    return v0

    .line 415
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory does NOT exists"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "quality"    # I

    .prologue
    .line 816
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 820
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 821
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength(): containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    .line 824
    .local v0, "minimumLength":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 825
    const/4 v0, 0x6

    .line 832
    .end local v0    # "minimumLength":I
    :cond_0
    :goto_0
    return v0

    .line 829
    :cond_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "getPasswordMinimumLength(): mEcppStorageProvider is NULL"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 846
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    .line 848
    .local v0, "minimumLetters":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 849
    const/4 v0, 0x1

    .line 854
    .end local v0    # "minimumLetters":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 892
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    .line 895
    .local v0, "minimumNumerics":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 896
    const/4 v0, 0x1

    .line 901
    .end local v0    # "minimumNumerics":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 939
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    .line 941
    .local v0, "minimumQuality":I
    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 942
    const/high16 v0, 0x50000

    .line 947
    .end local v0    # "minimumQuality":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1725
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v10, "getSequenceLength()"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1728
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1729
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1731
    .local v3, "length":I
    const/4 v7, 0x0

    .local v7, "prevDiff":I
    const/4 v8, 0x0

    .line 1732
    .local v8, "start":I
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v5, 0x0

    .line 1733
    .local v5, "maxCount":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1734
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-le v9, v8, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1738
    :cond_1
    const/4 v1, 0x0

    .line 1739
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_3

    .line 1740
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1741
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v2, v9, v0

    .line 1742
    .local v2, "currDiff":I
    if-nez v1, :cond_2

    .line 1743
    move v7, v2

    .line 1745
    :cond_2
    if-ne v7, v2, :cond_3

    const/4 v9, -0x1

    if-lt v2, v9, :cond_3

    const/4 v9, 0x1

    if-gt v2, v9, :cond_3

    .line 1746
    add-int/lit8 v1, v1, 0x1

    .line 1739
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1751
    .end local v0    # "c":C
    .end local v2    # "currDiff":I
    :cond_3
    if-ge v5, v1, :cond_0

    .line 1752
    move v5, v1

    goto :goto_0

    .line 1756
    :cond_4
    if-lez v5, :cond_5

    .line 1757
    add-int/lit8 v5, v5, 0x1

    .line 1759
    :cond_5
    return v5
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(IZ)Z
    .locals 9
    .param p1, "containerId"    # I
    .param p2, "calledFromMDM"    # Z

    .prologue
    const/high16 v8, 0x60000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1807
    const/4 v2, 0x0

    .line 1808
    .local v2, "stateInfo":Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    .line 1809
    if-nez v2, :cond_1

    .line 1810
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    .line 1811
    if-nez v2, :cond_1

    .line 1812
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : Cache not found!!"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_0
    :goto_0
    return v4

    .line 1817
    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    .line 1818
    .local v1, "quality":I
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordQuality()I

    move-result v5

    if-ge v5, v1, :cond_2

    if-ne v1, v8, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLength()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1824
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1825
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->isPasswordSimple()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1826
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :cond_3
    if-eqz p2, :cond_7

    .line 1831
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "isActivePasswordSufficient called from MDM"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1833
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbidden password in use"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1836
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v0

    .line 1837
    .local v0, "maxLength":I
    if-lez v0, :cond_5

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharSeqLength()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 1838
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Character Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1841
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v0

    .line 1842
    if-lez v0, :cond_6

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getDigitSeqLength()I

    move-result v5

    if-le v5, v0, :cond_6

    .line 1843
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Digit Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1846
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    .line 1847
    if-lez v0, :cond_7

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharMaxOccurrencesCount()I

    move-result v5

    if-le v5, v0, :cond_7

    .line 1848
    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Maximum Character occurence exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1852
    .end local v0    # "maxLength":I
    :cond_7
    if-eq v1, v8, :cond_8

    move v4, v3

    .line 1853
    goto/16 :goto_0

    .line 1855
    :cond_8
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordUppercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLowercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLetters()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNumeric()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordSymbols()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNonLetter()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method public isPasswordContainsValidChars(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1888
    if-eqz p1, :cond_2

    .line 1890
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1891
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1893
    .local v0, "c":C
    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 1894
    :cond_0
    const/4 v2, 0x1

    .line 1898
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 1890
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1898
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1543
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v1

    .line 1545
    .local v1, "forbiddenStringArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1546
    .local v0, "currentpasswordHash":[B
    if-nez p2, :cond_0

    .line 1547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1550
    :cond_0
    if-eqz v1, :cond_3

    .line 1551
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1552
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1553
    if-nez p2, :cond_2

    .line 1554
    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1565
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return v4

    .line 1557
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1563
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "string":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbiddenStringArray is NULL"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized killTimer(I)V
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 305
    .local v3, "token":J
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 306
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 310
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 313
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 320
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected declared-synchronized killUnmountTimer(I)V
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 325
    .local v3, "token":J
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 326
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x48000000    # 131072.0f

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 330
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 331
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 324
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onChangePasswordSuccess(I)V
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 769
    .local v4, "mActiveAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "onChangePasswordSuccess() changepassword succeeded sending ACTION_PASSWORD_SUCCEEDED to admins"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-nez v4, :cond_1

    .line 772
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "onChangePasswordSuccess() mActiveAdminList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    return-void

    .line 775
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 776
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 780
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v5

    .line 782
    .local v5, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v5, :cond_0

    .line 783
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 784
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 785
    .local v1, "admin":Landroid/content/ComponentName;
    if-nez v1, :cond_3

    .line 783
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    .line 790
    .local v2, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 792
    const-string v6, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-direct {p0, p1, v2, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public passwordHasExpired(I)Z
    .locals 13
    .param p1, "containerId"    # I

    .prologue
    const-wide/16 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1135
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v6, :cond_0

    .line 1136
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired error: mStateManager is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :goto_0
    return v8

    .line 1140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1141
    .local v0, "now":J
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    .line 1142
    .local v2, "passwordExpirationDate":J
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    .line 1144
    .local v4, "passwordExpirationTimeout":J
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordHasExpired(): checking if password has expired: passwordExpirationTimeout = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", passwordExpirationDate = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", (now >= passwordExpirationDate) = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    cmp-long v6, v4, v11

    if-lez v6, :cond_2

    cmp-long v6, v2, v11

    if-lez v6, :cond_2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    .line 1151
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "passwordHasExpired(): password has expired"

    invoke-static {v6, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 1152
    goto :goto_0

    :cond_1
    move v6, v8

    .line 1144
    goto :goto_1

    .line 1154
    :cond_2
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired(): password still valid"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB succed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 259
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB failed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->cancelPasswordExpirationAlarm(I)V

    .line 218
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainerCredentialFiles(ILjava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB succed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 223
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB failed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt(I)Z
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 442
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --1"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v3

    .line 444
    .local v3, "maximumFailedPasswordsForWipe":I
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v2

    .line 445
    .local v2, "maximumFailedPasswordsForDisable":I
    const/4 v1, 0x0

    .line 447
    .local v1, "failedPasswordAttempts":I
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v6}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 449
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 463
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 464
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z

    .line 466
    if-lez v3, :cond_1

    if-lt v1, v3, :cond_1

    .line 469
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_1
    return v4

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from mStateManager"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    goto :goto_0

    .line 472
    :cond_1
    if-lez v2, :cond_2

    if-lt v1, v2, :cond_2

    .line 475
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max than maximumFailedPasswordsForDisable!!: DISABLING container"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :cond_2
    if-gtz v3, :cond_3

    if-gtz v2, :cond_3

    const/16 v5, 0xa

    if-lt v1, v5, :cond_3

    .line 480
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 485
    :cond_3
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --2"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 490
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    .line 492
    .local v1, "failedPasswordAttempts":I
    if-eqz v1, :cond_0

    .line 493
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting failedPasswordAttempts to 0"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v1, 0x0

    .line 496
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting --11"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    .line 985
    .local v0, "passwordPolicy":Lcom/sec/enterprise/knox/ContainerPasswordPolicy;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->enforcePwdChange()Z

    move-result v1

    .line 989
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public satisfyFIPSPassword()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized scheduleTimer(Landroid/content/Context;IZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "forceStart"    # Z

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 345
    .local v7, "token":J
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 346
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "containerid"

    invoke-virtual {v1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v10, 0x15c4

    const/high16 v11, 0x48000000    # 131072.0f

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 350
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 351
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 352
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_0
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const-wide/16 v5, 0x1

    .line 361
    .local v5, "timeoutMm":J
    :goto_1
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-gez v9, :cond_2

    .line 362
    :try_start_1
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout not updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Updating it with the MDM DB version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v5

    .line 365
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 369
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 370
    .local v2, "now":J
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): force restart: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v9, 0x3

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 373
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "now":J
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "timeoutMm":J
    .end local v7    # "token":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 356
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "pi":Landroid/app/PendingIntent;
    .restart local v7    # "token":J
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v5

    goto :goto_1

    .line 367
    .restart local v5    # "timeoutMm":J
    :cond_2
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout is updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized scheduleTimerOnUserInteraction(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 336
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "State is active reseting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    .local v0, "token":J
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v0    # "token":J
    :cond_0
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized scheduleUnmountTimer(I)V
    .locals 12
    .param p1, "containerId"    # I

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 378
    .local v7, "token":J
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 379
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "containerid"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v10, 0x15c5

    const/high16 v11, 0x48000000    # 131072.0f

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 383
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 386
    .local v2, "now":J
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v5

    .line 387
    .local v5, "timeoutMm":J
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleUnmountTimer(): timeoutMm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    .line 389
    const/4 v9, 0x3

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 391
    :cond_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 377
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "now":J
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "timeoutMm":J
    .end local v7    # "token":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 1038
    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 1122
    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 1108
    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 1052
    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 1024
    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 1094
    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 1080
    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 1010
    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 996
    :cond_0
    return-void
.end method

.method public setExpirationAlarmCheck(I)V
    .locals 31
    .param p1, "containerId"    # I

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v15

    .line 663
    .local v15, "expiration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v11

    .line 664
    .local v11, "currentTimeout":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 665
    .local v20, "now":J
    sub-long v24, v15, v20

    .line 669
    .local v24, "timeToExpire":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 671
    .local v19, "mActiveAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-nez v19, :cond_1

    .line 672
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v29, "setExpirationAlarmCheck() mActiveAdminList is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v19    # "mActiveAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    return-void

    .line 675
    .restart local v19    # "mActiveAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 676
    .local v4, "N":I
    if-lez v4, :cond_0

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v23

    .line 682
    .local v23, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v4, :cond_4

    .line 683
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 684
    .local v5, "admin":Landroid/content/ComponentName;
    if-nez v5, :cond_3

    .line 682
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 687
    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v13

    .line 689
    .local v13, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v13, :cond_2

    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v28

    if-eqz v28, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v28, v11, v28

    if-lez v28, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v28, v15, v28

    if-lez v28, :cond_2

    const-wide/32 v28, 0x19bfcc00

    sub-long v28, v15, v28

    cmp-long v28, v20, v28

    if-ltz v28, :cond_2

    if-eqz v23, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_2

    .line 694
    const-string v28, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 698
    .end local v4    # "N":I
    .end local v5    # "admin":Landroid/content/ComponentName;
    .end local v13    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .end local v17    # "i":I
    .end local v19    # "mActiveAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v23    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :catch_0
    move-exception v14

    .line 699
    .local v14, "e":Ljava/lang/NullPointerException;
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception occurred at setExpirationAlarmCheck(()"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .end local v14    # "e":Ljava/lang/NullPointerException;
    :cond_4
    const-wide/16 v28, 0x0

    cmp-long v28, v15, v28

    if-nez v28, :cond_6

    .line 705
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v29, "No expirations are currently configured:  Cancel alarm"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-wide/16 v8, 0x0

    .line 726
    .local v8, "alarmTime":J
    :goto_3
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setExpirationAlarmCheckLocked alarmTime "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expiration "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " now "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " timeToExpire "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 732
    .local v26, "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "alarm"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 733
    .local v10, "am":Landroid/app/AlarmManager;
    new-instance v18, Landroid/content/Intent;

    const-string v28, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v18, "intent":Landroid/content/Intent;
    const-string v28, "containerid"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x15c3

    const/high16 v30, 0x48000000    # 131072.0f

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 737
    .local v22, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 738
    const-wide/16 v28, 0x0

    cmp-long v28, v8, v28

    if-eqz v28, :cond_5

    .line 739
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :cond_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 707
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v22    # "pi":Landroid/app/PendingIntent;
    .end local v26    # "token":J
    :cond_6
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-gtz v28, :cond_7

    .line 709
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The password has already expired:  fire intent now. timeToExpire"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-wide/from16 v8, v20

    .restart local v8    # "alarmTime":J
    goto/16 :goto_3

    .line 716
    .end local v8    # "alarmTime":J
    :cond_7
    const-wide/32 v28, 0x5265c00

    rem-long v6, v24, v28

    .line 717
    .local v6, "alarmInterval":J
    const-wide/16 v28, 0x0

    cmp-long v28, v6, v28

    if-nez v28, :cond_8

    .line 718
    const-wide/32 v6, 0x5265c00

    .line 720
    :cond_8
    add-long v8, v20, v6

    .line 721
    .restart local v8    # "alarmTime":J
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Selecting the next alarm time:  Roll forward to the next 24 hour multiple before alarmInterval "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 742
    .end local v6    # "alarmInterval":J
    .restart local v26    # "token":J
    :catchall_0
    move-exception v28

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForDisable ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    .line 545
    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForWipe ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 525
    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J

    .prologue
    .line 564
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    .line 565
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMaximumTimeToLock Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 567
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 568
    .local v0, "time":J
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v2

    .line 569
    .local v2, "timeInUse":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 570
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 571
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 574
    .end local v0    # "time":J
    .end local v2    # "timeInUse":J
    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 0
    .param p1, "containerID"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "size"    # I

    .prologue
    .line 422
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 423
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J

    .prologue
    .line 593
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    .line 594
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordEnabledContainerLockTimeout Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V

    .line 596
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 597
    .local v0, "time":J
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordEnabledContainerLockTimeout(I)J

    move-result-wide v2

    .line 598
    .local v2, "timeInUse":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/knox/container/manager/StateManager;->setPasswordEnabledContainerLockTimeout(IJ)Z

    .line 600
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 603
    .end local v0    # "time":J
    .end local v2    # "timeInUse":J
    :cond_0
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeout"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 614
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 615
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPasswordExpirationTimeout() timeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 619
    .local v0, "now":J
    cmp-long v8, p3, v6

    if-lez v8, :cond_1

    add-long v2, v0, p3

    .line 620
    .local v2, "passwordExpirationDate":J
    :goto_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    .line 623
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide p3

    .line 624
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    .line 625
    .local v4, "timeoutInUse":J
    cmp-long v8, p3, v4

    if-eqz v8, :cond_0

    .line 626
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, p3, p4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    .line 627
    cmp-long v8, p3, v6

    if-lez v8, :cond_2

    add-long v2, v0, p3

    .line 628
    :goto_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 629
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 632
    .end local v0    # "now":J
    .end local v2    # "passwordExpirationDate":J
    .end local v4    # "timeoutInUse":J
    :cond_0
    return-void

    .restart local v0    # "now":J
    :cond_1
    move-wide v2, v6

    .line 619
    goto :goto_0

    .restart local v2    # "passwordExpirationDate":J
    .restart local v4    # "timeoutInUse":J
    :cond_2
    move-wide v2, v6

    .line 627
    goto :goto_1
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 2
    .param p1, "containerID"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 404
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 407
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 837
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "setPasswordMinimumLength(): IS NULL"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 861
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 875
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 889
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 908
    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 919
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 922
    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 936
    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 954
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "val"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordVisibilityEnabled(IZ)V

    .line 973
    :cond_0
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 964
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 967
    :cond_0
    return-void
.end method

.method public storeUserCredentials(ILjava/lang/String;)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    .line 1162
    return-void
.end method

.method public updatePassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {p0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 1167
    .local v0, "currentpasswordHash":[B
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    .line 1168
    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setOldPasswordToHistory(I[B)V

    .line 1169
    return-void
.end method

.method public updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 635
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 636
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v6

    .line 639
    .local v6, "timeout":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 641
    .local v2, "now":J
    add-long v4, v2, v6

    .line 642
    .local v4, "passwordExpirationDate":J
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    .line 644
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v0

    .line 645
    .local v0, "currentTimeout":J
    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    .line 646
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, v4, v5}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 655
    .end local v0    # "currentTimeout":J
    .end local v2    # "now":J
    .end local v4    # "passwordExpirationDate":J
    .end local v6    # "timeout":J
    :cond_0
    :goto_0
    return-void

    .line 649
    .restart local v6    # "timeout":J
    :cond_1
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePasswordExpirationTimeout(): No admin entry in DB OR no timeout specified for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerID"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1256
    if-nez p2, :cond_0

    .line 1257
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyPassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :goto_0
    return v1

    .line 1262
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
