.class public Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
.super Ljava/lang/Object;
.source "SmartClipDataRepositoryImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/smartclip/SmartClipDataRepository;


# static fields
.field public static final CONTENT_TYPE_AUDIO:Ljava/lang/String; = "music"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_NAMECARD:Ljava/lang/String; = "namecard"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final CONTENT_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final CONTENT_TYPE_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FIELD_CAPTURED_IMAGE_PATH:Ljava/lang/String; = "captured_image_path"

.field protected static final FIELD_CAPTURED_IMAGE_STYLE:Ljava/lang/String; = "captured_image_style"

.field protected static final FIELD_CONTENT_RECT:Ljava/lang/String; = "content_rect"

.field protected static final FIELD_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field protected static final FIELD_META_TAGS:Ljava/lang/String; = "meta_tags"

.field protected static final FIELD_META_TAG_EXTRA_DATA:Ljava/lang/String; = "meta_tag_extra_value"

.field protected static final FIELD_META_TAG_TYPE:Ljava/lang/String; = "meta_tag_type"

.field protected static final FIELD_META_TAG_VALUE:Ljava/lang/String; = "meta_tag_value"

.field public static final IMAGE_STYLE_LASSO:I = 0x0

.field public static final IMAGE_STYLE_PIN_MODE:I = 0x3

.field public static final IMAGE_STYLE_RECTANGLE:I = 0x1

.field public static final IMAGE_STYLE_SEGMENTATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataRepositoryImpl"


# instance fields
.field protected mAppPackageName:Ljava/lang/String;

.field protected mCapturedImageFilePath:Ljava/lang/String;

.field protected mCapturedImageFileStyle:I

.field protected mContentRect:Landroid/graphics/Rect;

.field protected mContentType:Ljava/lang/String;

.field protected mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

.field protected mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mTargetWindowLayer:I

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V
    .locals 4
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 83
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 85
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 87
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 89
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 92
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 93
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 103
    return-void
.end method

.method public static createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 22
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 532
    .local v13, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 535
    .local v9, "json_repository":Lorg/json/JSONObject;
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 536
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 540
    :cond_0
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 541
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 542
    .local v8, "json_rect":Lorg/json/JSONArray;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 546
    .end local v8    # "json_rect":Lorg/json/JSONArray;
    :cond_1
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 547
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "capturedImageFilePath":Ljava/lang/String;
    const-string v17, "captured_image_style"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 549
    .local v3, "capturedImageFileStyle":I
    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {v13, v2, v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;I)V

    .line 555
    .end local v2    # "capturedImageFilePath":Ljava/lang/String;
    .end local v3    # "capturedImageFileStyle":I
    :cond_2
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 556
    new-instance v17, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 558
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 559
    .local v11, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 560
    .local v14, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_3

    .line 561
    const/4 v12, 0x0

    .line 562
    .local v12, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 564
    .local v10, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v17, "meta_tag_type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 565
    .local v15, "tagType":Ljava/lang/String;
    const-string/jumbo v17, "meta_tag_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 568
    .local v16, "tagValue":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v17, "meta_tag_extra_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "extraDataStr":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 571
    .local v5, "extraData":[B
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Decoding : Length of extra data = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v12, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0, v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 578
    .end local v5    # "extraData":[B
    .end local v6    # "extraDataStr":Ljava/lang/String;
    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_1
    :try_start_2
    iget-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 560
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 575
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :catch_0
    move-exception v4

    .line 576
    .local v4, "e":Lorg/json/JSONException;
    new-instance v12, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_1

    .line 582
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    .end local v9    # "json_repository":Lorg/json/JSONObject;
    .end local v10    # "json_tag":Lorg/json/JSONObject;
    .end local v11    # "json_tagArray":Lorg/json/JSONArray;
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v14    # "tagCount":I
    .end local v15    # "tagType":Ljava/lang/String;
    .end local v16    # "tagValue":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 583
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONException throwed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 585
    const/4 v13, 0x0

    .line 588
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_3
    return-object v13
.end method


# virtual methods
.method protected addMetaTagFromSmartParseResult(Landroid/util/secutil/SmartParsingData;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;ILjava/lang/String;)V
    .locals 5
    .param p1, "parsedData"    # Landroid/util/secutil/SmartParsingData;
    .param p2, "tagArray"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .param p3, "smartParsingDataType"    # I
    .param p4, "metaTagType"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p1, p3}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 416
    .local v3, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    .local v0, "curTag":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-direct {v2, p4, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v2, "newMetaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    .end local v0    # "curTag":Ljava/lang/String;
    .end local v2    # "newMetaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public determineContentType()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 143
    const/4 v6, 0x0

    .line 144
    .local v6, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, "bHaveBrowserView":Z
    const/4 v5, 0x0

    .line 146
    .local v5, "bHaveYoutubeView":Z
    const/4 v0, 0x0

    .line 147
    .local v0, "bHaveAudioFilePath":Z
    const/4 v4, 0x0

    .line 148
    .local v4, "bHaveVideoFilePath":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "bHaveImageFilePath":Z
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 151
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v7, :cond_7

    .line 152
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v8

    .line 154
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_4

    .line 155
    const-string/jumbo v10, "url"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    move v3, v9

    .line 157
    .local v3, "bHaveUrlTag":Z
    :goto_1
    const-string v10, "file_path_audio"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 161
    :cond_0
    const-string v10, "file_path_video"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 162
    const/4 v4, 0x1

    .line 165
    :cond_1
    const-string v10, "file_path_image"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 166
    const/4 v2, 0x1

    .line 169
    :cond_2
    if-ne v3, v9, :cond_4

    .line 170
    instance-of v10, v8, Landroid/webkit/WebView;

    if-nez v10, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.chromium.content.browser.ChromeView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.samsung.content.sbrowser.SbrContentView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_6

    .line 174
    :cond_3
    const/4 v1, 0x1

    .line 182
    .end local v3    # "bHaveUrlTag":Z
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v7, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 183
    goto :goto_0

    .line 155
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 175
    .restart local v3    # "bHaveUrlTag":Z
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    const-string v11, "com.google.android.youtube"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PlayerView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v9, :cond_4

    .line 177
    const/4 v5, 0x1

    goto :goto_2

    .line 185
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "view":Landroid/view/View;
    :cond_7
    if-ne v0, v9, :cond_8

    .line 186
    const-string/jumbo v6, "music"

    .line 199
    :goto_3
    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 201
    return v9

    .line 187
    :cond_8
    if-ne v4, v9, :cond_9

    .line 188
    const-string/jumbo v6, "video"

    goto :goto_3

    .line 189
    :cond_9
    if-ne v2, v9, :cond_a

    .line 190
    const-string v6, "image"

    goto :goto_3

    .line 191
    :cond_a
    if-ne v5, v9, :cond_b

    .line 192
    const-string/jumbo v6, "youtube"

    goto :goto_3

    .line 193
    :cond_b
    if-ne v1, v9, :cond_c

    .line 194
    const-string/jumbo v6, "web"

    goto :goto_3

    .line 196
    :cond_c
    const-string v6, "image"

    goto :goto_3
.end method

.method public dump(Z)Z
    .locals 4
    .param p1, "dumpMetaTags"    # Z

    .prologue
    const/4 v3, 0x1

    .line 424
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- Start of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Meta area rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Captured image file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-ne p1, v3, :cond_0

    .line 433
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** mTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->dump()V

    .line 441
    :goto_0
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** Element tree **"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    .line 447
    :cond_0
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- End of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v3

    .line 437
    :cond_1
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string/jumbo v1, "mTags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encodeRepositoryToString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 593
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 596
    .local v10, "json_repository":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 597
    const-string v14, "content_type"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 602
    .local v3, "contentRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    .line 603
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 605
    .local v9, "json_rect":Lorg/json/JSONArray;
    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 606
    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 607
    const/4 v14, 0x2

    iget v15, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 608
    const/4 v14, 0x3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 610
    const-string v14, "content_rect"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    .end local v9    # "json_rect":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "capturedImageFilePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFileStyle()I

    move-result v2

    .line 616
    .local v2, "capturedImageFileStyle":I
    if-eqz v1, :cond_2

    .line 617
    const-string v14, "captured_image_path"

    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string v14, "captured_image_style"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v13

    .line 623
    .local v13, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v13, :cond_6

    .line 624
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 626
    .local v12, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 627
    .local v4, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    if-eqz v4, :cond_3

    .line 628
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 629
    .local v11, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v14, "meta_tag_type"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string/jumbo v14, "meta_tag_value"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    instance-of v14, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v14, :cond_4

    .line 632
    move-object v0, v4

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-object v5, v0

    .line 633
    .local v5, "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_4

    .line 634
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    .line 635
    .local v7, "extraData":[B
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encoding : Length of extra data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string/jumbo v14, "meta_tag_extra_value"

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    .end local v5    # "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .end local v7    # "extraData":[B
    :cond_4
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    .end local v1    # "capturedImageFilePath":Ljava/lang/String;
    .end local v2    # "capturedImageFileStyle":I
    .end local v3    # "contentRect":Landroid/graphics/Rect;
    .end local v4    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "json_repository":Lorg/json/JSONObject;
    .end local v11    # "json_tag":Lorg/json/JSONObject;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    .end local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :catch_0
    move-exception v6

    .line 650
    .local v6, "e":Lorg/json/JSONException;
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSONException throwed : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 652
    const-string v14, ""

    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v14

    .line 643
    .restart local v1    # "capturedImageFilePath":Ljava/lang/String;
    .restart local v2    # "capturedImageFileStyle":I
    .restart local v3    # "contentRect":Landroid/graphics/Rect;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "json_repository":Lorg/json/JSONObject;
    .restart local v12    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_5
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 644
    const-string/jumbo v14, "meta_tags"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    :cond_6
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_1
.end method

.method public extractMetaTagFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcString"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 394
    .local v2, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-nez p2, :cond_0

    .line 410
    :goto_0
    return-object v2

    .line 398
    :cond_0
    new-instance v1, Landroid/util/secutil/SmartParser;

    invoke-direct {v1, p2, p1}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 399
    .local v1, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v1}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v0

    .line 401
    .local v0, "parsedData":Landroid/util/secutil/SmartParsingData;
    const/4 v3, 0x5

    const-string/jumbo v4, "url"

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->addMetaTagFromSmartParseResult(Landroid/util/secutil/SmartParsingData;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAllMetaTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    .line 341
    .local v0, "arrayList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    return-object v0
.end method

.method public getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .locals 9

    .prologue
    .line 304
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_1

    .line 305
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 333
    :cond_0
    :goto_0
    return-object v3

    .line 307
    :cond_1
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 309
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 311
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v1, :cond_4

    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 313
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_3

    .line 314
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 315
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 316
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 318
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "plain_text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 319
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 325
    goto :goto_1

    .line 328
    .end local v6    # "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 330
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFileStyle()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .locals 12

    .prologue
    const v11, 0x1869f

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 235
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_1

    .line 236
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 300
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 239
    .local v4, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .local v2, "contentRect":Landroid/graphics/Rect;
    :goto_1
    if-eqz v4, :cond_b

    .line 242
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-eq v6, v10, :cond_a

    .line 243
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_6

    .line 244
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 245
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_2
    if-eqz v0, :cond_a

    .line 247
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 248
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_5

    .line 249
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_2

    .line 250
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 252
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_3

    .line 253
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 255
    :cond_3
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_4

    .line 256
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 258
    :cond_4
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_5

    .line 259
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 263
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 264
    goto :goto_2

    .line 266
    .end local v0    # "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 267
    .restart local v5    # "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_a

    .line 268
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_7

    .line 269
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 271
    :cond_7
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_8

    .line 272
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 274
    :cond_8
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_9

    .line 275
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 277
    :cond_9
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_a

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_a

    .line 278
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 284
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v4, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    goto/16 :goto_1

    .line 287
    :cond_b
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_c

    .line 288
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "contentRect":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/16 :goto_0

    .line 291
    .restart local v2    # "contentRect":Landroid/graphics/Rect;
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 292
    :cond_d
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 293
    .local v3, "contentWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 294
    .local v1, "contentHeight":I
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 295
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 296
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 297
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedPlainTextTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-nez v1, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->collectPlainTextTag()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "mergedText":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 9
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 347
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 349
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_1

    .line 350
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 351
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 352
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 353
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_1
    const-string/jumbo v7, "plain_text"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 361
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v4    # "plainText":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 366
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 369
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_5

    .line 370
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 371
    .restart local v5    # "tagCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 372
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 374
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_4

    .line 375
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 380
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 381
    goto :goto_1
.end method

.method public getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    return-object v0
.end method

.method public getWindowLayer()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 492
    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 507
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 508
    .local v0, "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    const-class v1, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 509
    .restart local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 510
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 126
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "imageStyle"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 131
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "capturedImageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setWindowLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 222
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 468
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 484
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 485
    return-void
.end method
