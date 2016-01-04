.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    .line 128
    return-void
.end method

.method private getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    .locals 9
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 291
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v4

    .line 312
    :goto_0
    return-object v3

    .line 295
    :cond_1
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo, carrier=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], simop=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    .local v0, "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    if-nez v0, :cond_2

    .line 299
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo - no entry for carrier=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 300
    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .line 304
    .local v3, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getImsiSubset()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "imsiSubset":Ljava/lang/String;
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo - imsiSubset=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v2, v8, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 311
    .end local v2    # "imsiSubset":Ljava/lang/String;
    .end local v3    # "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    :cond_4
    const-string v5, "SpnOverride"

    const-string v6, "[SpnOverride] getMatchingSpnOverrideInfo - no match found"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 312
    goto/16 :goto_0
.end method

.method private loadSpnOverrides()V
    .locals 15

    .prologue
    .line 158
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/spn-conf.xml"

    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v13, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v14, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 171
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 173
    const-string v1, "spnOverrides"

    invoke-static {v12, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 178
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "name":Ljava/lang/String;
    const-string v1, "spnOverride"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 217
    if-eqz v14, :cond_0

    .line 218
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :goto_1
    return-void

    .line 163
    :catch_0
    move-exception v10

    .line 164
    .local v10, "e":Ljava/io/FileNotFoundException;
    const-string v1, "SpnOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "etc/spn-conf.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "spnReader":Ljava/io/FileReader;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    const/4 v1, 0x0

    const-string v2, "numeric"

    invoke-interface {v12, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-string v3, "spn"

    invoke-interface {v12, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-string v4, "spn_display_rule"

    invoke-interface {v12, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-string v5, "spn_override_only_on"

    invoke-interface {v12, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const-string v6, "fake_home_on"

    invoke-interface {v12, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const-string v7, "imsi_subset"

    invoke-interface {v12, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const-string v8, "fake_roaming_on"

    invoke-interface {v12, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;-><init>(Lcom/android/internal/telephony/uicc/SpnOverride;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v0, "newSoi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    # getter for: Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 200
    .local v9, "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    if-nez v9, :cond_2

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .restart local v9    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    :cond_2
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v1, Lcom/android/internal/telephony/uicc/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    # getter for: Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 210
    .end local v0    # "newSoi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    .end local v9    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v10

    .line 211
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v1, "SpnOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    if-eqz v14, :cond_0

    .line 218
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 220
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 212
    :catch_3
    move-exception v10

    .line 213
    .local v10, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "SpnOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 217
    if-eqz v14, :cond_0

    .line 218
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 216
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 217
    if-eqz v14, :cond_3

    .line 218
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 216
    :cond_3
    :goto_2
    throw v1

    .line 220
    :catch_4
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, -0x1

    .line 236
    .local v0, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v3

    .line 238
    .local v3, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v3, :cond_0

    move v1, v0

    .line 255
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 242
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpnDisplayRule()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "rule":Ljava/lang/String;
    if-nez v2, :cond_1

    move v1, v0

    .line 244
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 247
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    .line 248
    const-string v4, "SPN_RULE_SHOW_SPN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_2
    const-string v4, "SPN_RULE_SHOW_PLMN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    add-int/lit8 v0, v0, 0x2

    :cond_3
    move v1, v0

    .line 255
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 274
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 283
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 265
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 269
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpnOverrideOnlyOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 148
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpn()Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
