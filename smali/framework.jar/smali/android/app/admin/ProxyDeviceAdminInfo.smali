.class public final Landroid/app/admin/ProxyDeviceAdminInfo;
.super Ljava/lang/Object;
.source "ProxyDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY_ADMIN_TYPE_LOCAL:I = 0x1

.field public static final PROXY_ADMIN_TYPE_UNIVERSAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "ProxyDeviceAdminInfo"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIcon:[B

.field private final mLabel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/pm/ResolveInfo;

.field private final mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/ProxyDeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/ProxyDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 111
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 116
    invoke-direct {p0, p2, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/admin/ProxyDeviceAdminInfo;->parseRequestedPermissions()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "icon"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p5, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 98
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 101
    iput-object p5, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 122
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 125
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 136
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    goto :goto_0
.end method

.method private parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 277
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 279
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 281
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v13, "android.app.device_admin"

    invoke-virtual {v1, v8, v13}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 282
    if-nez v7, :cond_1

    .line 283
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "No android.app.device_admin meta-data"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create context for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v13

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v13

    .line 287
    :cond_1
    :try_start_2
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 289
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 293
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 296
    :cond_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "nodeName":Ljava/lang/String;
    const-string v13, "device-admin"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 298
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v14, "Meta-data does not start with device-admin tag"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 302
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 304
    .local v6, "outerDepth":I
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v6, :cond_9

    .line 305
    :cond_6
    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    .line 308
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 309
    .local v11, "tagName":Ljava/lang/String;
    const-string v13, "uses-policies"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 310
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 312
    .local v4, "innerDepth":I
    :cond_7
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_5

    .line 313
    :cond_8
    const/4 v13, 0x3

    if-eq v12, v13, :cond_7

    const/4 v13, 0x4

    if-eq v12, v13, :cond_7

    .line 316
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "policyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 325
    .end local v4    # "innerDepth":I
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_a
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

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 185
    iget v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 186
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 187
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 188
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 189
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    :cond_0
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 202
    iget v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 203
    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :cond_1
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    if-eqz v2, :cond_0

    .line 209
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 210
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getIcon()[B
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 175
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReceiver()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
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
    .line 224
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    return v0
.end method

.method public parseRequestedPermissions()V
    .locals 18

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v15, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 332
    .local v10, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 333
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 335
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v2, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    .line 337
    .local v4, "cookie":I
    if-eqz v4, :cond_1

    .line 338
    const-string v15, "AndroidManifest.xml"

    invoke-virtual {v2, v4, v15}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :goto_0
    move-object v1, v2

    .line 345
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .end local v4    # "cookie":I
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    :goto_1
    if-nez v9, :cond_2

    .line 346
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 403
    :cond_0
    :goto_2
    return-void

    .line 340
    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v4    # "cookie":I
    :cond_1
    :try_start_2
    const-string v15, "ProxyDeviceAdminInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed adding asset path:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 342
    .end local v4    # "cookie":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 343
    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    const-string v15, "ProxyDeviceAdminInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 351
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 352
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 356
    :try_start_3
    new-instance v11, Landroid/content/res/Resources;

    const/4 v15, 0x0

    invoke-direct {v11, v1, v6, v15}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 357
    .local v11, "res":Landroid/content/res/Resources;
    move-object v3, v9

    .line 361
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 365
    :cond_4
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v11, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 367
    .local v12, "sa":Landroid/content/res/TypedArray;
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 369
    .local v8, "outerDepth":I
    :cond_5
    :goto_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 370
    :cond_6
    const/4 v15, 0x3

    if-eq v14, v15, :cond_5

    const/4 v15, 0x4

    if-eq v14, v15, :cond_5

    .line 374
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "tagName":Ljava/lang/String;
    if-eqz v13, :cond_5

    const-string v15, "uses-permission"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 376
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v11, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 382
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 397
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "outerDepth":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v5

    .line 398
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 401
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_2

    .line 395
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "outerDepth":I
    .restart local v11    # "res":Landroid/content/res/Resources;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v14    # "type":I
    :cond_8
    if-eqz v12, :cond_7

    .line 396
    :try_start_4
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 342
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "outerDepth":I
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "type":I
    :catch_2
    move-exception v5

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ProxyDeviceAdminInfo [mReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIconPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRequestedPermissions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 157
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 162
    :cond_0
    return-void
.end method
