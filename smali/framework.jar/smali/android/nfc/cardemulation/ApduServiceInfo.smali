.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field final mAidGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mBannerResourceId:I

.field final mCategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mDescription:Ljava/lang/String;

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

.field final mService:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 125
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    const/4 v14, 0x0

    .line 126
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x0

    .line 128
    .local v10, "extParser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    .line 129
    :try_start_0
    const-string v20, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 130
    if-nez v14, :cond_3

    .line 131
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :catch_0
    move-exception v8

    .line 250
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to create context for: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v20

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v20

    .line 135
    :cond_1
    :try_start_2
    const-string v20, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 136
    if-nez v14, :cond_2

    .line 137
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 142
    :cond_2
    const-string v20, "android.nfc.cardemulation.se_extensions"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 143
    if-nez v10, :cond_3

    .line 144
    const-string v20, "ApduServiceInfo"

    const-string v21, "No android.nfc.cardemulation.se_extensions meta-data"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    .line 150
    .local v9, "eventType":I
    :goto_0
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v9, v0, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_4

    .line 151
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    goto :goto_0

    .line 154
    :cond_4
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 155
    .local v19, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string v20, "host-apdu-service"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 156
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 158
    :cond_5
    if-nez p3, :cond_6

    const-string v20, "offhost-apdu-service"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 159
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 163
    :cond_6
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 164
    .local v15, "res":Landroid/content/res/Resources;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 165
    .local v5, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_b

    .line 166
    sget-object v20, Lcom/android/internal/R$styleable;->HostApduService:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 168
    .local v16, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 169
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 171
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 174
    const/16 v20, 0x2

    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 176
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    :goto_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    .line 190
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    .line 191
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    .line 192
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 193
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 194
    .local v7, "depth":I
    const/4 v6, 0x0

    .line 198
    .local v6, "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_7
    :goto_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v9, v0, :cond_8

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v7, :cond_12

    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_12

    .line 199
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 200
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v9, v0, :cond_d

    const-string v20, "aid-group"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    if-nez v6, :cond_d

    .line 202
    sget-object v20, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 205
    .local v11, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "groupDescription":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 209
    .local v12, "groupCategory":Ljava/lang/String;
    const-string v20, "payment"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 210
    const-string v12, "other"

    .line 212
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 213
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    if-eqz v6, :cond_c

    .line 214
    const-string v20, "other"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 215
    const-string v20, "ApduServiceInfo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " category"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v6, 0x0

    .line 222
    :cond_a
    :goto_3
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 178
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    .end local v7    # "depth":I
    .end local v11    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v12    # "groupCategory":Ljava/lang/String;
    .end local v13    # "groupDescription":Ljava/lang/String;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    sget-object v20, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 180
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 181
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 183
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 184
    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 186
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 220
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    .restart local v7    # "depth":I
    .restart local v11    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v12    # "groupCategory":Ljava/lang/String;
    .restart local v13    # "groupDescription":Ljava/lang/String;
    :cond_c
    new-instance v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    invoke-direct {v6, v12, v13}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    goto :goto_3

    .line 223
    .end local v11    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v12    # "groupCategory":Ljava/lang/String;
    .end local v13    # "groupDescription":Ljava/lang/String;
    :cond_d
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v9, v0, :cond_10

    const-string v20, "aid-group"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    if-eqz v6, :cond_10

    .line 225
    iget-object v0, v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_e
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 231
    :cond_f
    const-string v20, "ApduServiceInfo"

    const-string v21, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 234
    :cond_10
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v9, v0, :cond_7

    const-string v20, "aid-filter"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    if-eqz v6, :cond_7

    .line 236
    sget-object v20, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v20

    invoke-virtual {v15, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 238
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidAid(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    iget-object v0, v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 241
    iget-object v0, v6, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 244
    :cond_11
    const-string v20, "ApduServiceInfo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 252
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_12
    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 256
    :cond_13
    if-eqz v10, :cond_1b

    .line 259
    :try_start_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    .line 260
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 261
    const/16 v17, 0x0

    .line 263
    .local v17, "seName":Ljava/lang/String;
    :goto_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v9, v0, :cond_14

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_14

    .line 264
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    goto :goto_6

    .line 266
    :cond_14
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 267
    const-string v20, "extensions"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 268
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Meta-data does not start with <extensions> tag "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    .end local v17    # "seName":Ljava/lang/String;
    :catchall_1
    move-exception v20

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    throw v20

    .line 272
    .restart local v17    # "seName":Ljava/lang/String;
    :cond_15
    :try_start_4
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v9, v0, :cond_16

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v7, :cond_18

    :cond_16
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_18

    .line 273
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 275
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v9, v0, :cond_15

    const-string v20, "se-id"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 277
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 278
    if-eqz v17, :cond_17

    const-string v20, "eSE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_15

    const-string v20, "UICC"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 279
    :cond_17
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsupported se name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 283
    :cond_18
    if-eqz v17, :cond_1a

    .line 284
    new-instance v21, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const-string v20, "eSE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 285
    const-string v20, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :goto_8
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 298
    .end local v17    # "seName":Ljava/lang/String;
    :goto_9
    return-void

    .line 284
    .restart local v17    # "seName":Ljava/lang/String;
    :cond_19
    const/16 v20, 0x2

    goto :goto_7

    .line 287
    :cond_1a
    :try_start_5
    new-instance v20, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v21, 0x2

    invoke-direct/range {v20 .. v21}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    .line 293
    .end local v17    # "seName":Ljava/lang/String;
    :cond_1b
    if-nez p3, :cond_1c

    .line 294
    new-instance v20, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v21, 0x2

    invoke-direct/range {v20 .. v21}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    goto :goto_9

    .line 296
    :cond_1c
    new-instance v20, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v21, -0x1

    invoke-direct/range {v20 .. v21}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;ZILandroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p5, "requiresUnlock"    # Z
    .param p6, "bannerResource"    # I
    .param p7, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;ZI",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 107
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    .line 111
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 112
    iput-boolean p5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 113
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 114
    .local v0, "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 117
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_0
    iput p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 119
    iput-object p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 120
    return-void
.end method

.method static isValidAid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 357
    if-nez p0, :cond_0

    .line 370
    :goto_0
    return v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 361
    .local v0, "aidLength":I
    if-eqz v0, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 362
    :cond_1
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correctly formatted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 367
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is shorter than 5 bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 387
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    .line 388
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 389
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 391
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v0, 0x0

    .line 344
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 345
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 352
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 351
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 338
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 334
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, ", AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 380
    .local v0, "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 382
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 412
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 414
    :cond_0
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    return-void

    :cond_1
    move v0, v2

    .line 409
    goto :goto_0

    :cond_2
    move v1, v2

    .line 414
    goto :goto_1
.end method
