.class public Landroid/content/pm/PersonaInfo;
.super Landroid/content/pm/UserInfo;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field private handlerApkLocation:Ljava/lang/String;

.field private handlerPackageName:Ljava/lang/String;

.field private handlerServiceName:Ljava/lang/String;

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFsMounted:Z

.field public isSuperLocked:Z

.field public isUserManaged:Z

.field public lastLoggedOutTime:J

.field public oldState:I

.field parentId:I

.field public removePersona:Z

.field public resetPassword:Z

.field public samsungAccount:Ljava/lang/String;

.field private setupWizardApkLocation:Ljava/lang/String;

.field public state:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 126
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 58
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 127
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "creatorUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 82
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 58
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 83
    iput p4, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 84
    iput p5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "parentId"    # I
    .param p6, "creatorUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 87
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 58
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 88
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    .line 89
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 90
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 91
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 92
    iput p5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 93
    iput p6, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 5
    .param p1, "orig"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 129
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 58
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 130
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 132
    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 133
    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 134
    iget v0, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 135
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 136
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 137
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 138
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 139
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 142
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 143
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 144
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 148
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 149
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 151
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 152
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 153
    iget v0, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 154
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 155
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 5
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 159
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 58
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v2, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 160
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 162
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 163
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 164
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 165
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 166
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 167
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 168
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 58
    iput v5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 59
    iput v5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 60
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 66
    iput v5, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 67
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 70
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 71
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 72
    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 75
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 76
    iput v5, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 79
    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 342
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 332
    goto :goto_1

    :cond_2
    move v0, v2

    .line 335
    goto :goto_2

    :cond_3
    move v0, v2

    .line 338
    goto :goto_3

    :cond_4
    move v0, v2

    .line 339
    goto :goto_4

    :cond_5
    move v1, v2

    .line 341
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PersonaInfo$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 216
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getHandlerApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1, "adminUid"    # I

    .prologue
    .line 212
    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 213
    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1, "creatorUid"    # I

    .prologue
    .line 221
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 223
    return-void
.end method

.method public setHandlerApkLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerApkLocation"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setHandlerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerPackageName"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setHandlerServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerServiceName"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 260
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    return-void

    :cond_0
    move v0, v2

    .line 281
    goto :goto_0

    :cond_1
    move v0, v2

    .line 291
    goto :goto_1

    :cond_2
    move v0, v2

    .line 294
    goto :goto_2

    :cond_3
    move v0, v2

    .line 297
    goto :goto_3

    :cond_4
    move v0, v2

    .line 298
    goto :goto_4

    :cond_5
    move v1, v2

    .line 300
    goto :goto_5
.end method
