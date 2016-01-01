.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3


# instance fields
.field public call_domain:I

.field public call_type:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 119
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 120
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 5
    .param p1, "callType"    # Lcom/android/internal/telephony/Call$CallType;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_0

    .line 127
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 128
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 161
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_1

    .line 130
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 131
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_2

    .line 133
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 134
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 135
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_3

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 137
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_4

    .line 140
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 141
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qcif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_5

    .line 144
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 145
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "qvga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_6

    .line 148
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 149
    iput v4, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 150
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_7

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0

    .line 153
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    if-ne p1, v0, :cond_8

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 155
    iput v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v1, "resolution"

    const-string v2, "hd_land"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_8
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 159
    iput v3, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 166
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 167
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 170
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 194
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 195
    const/4 v4, 0x0

    .line 207
    :goto_0
    return-object v4

    .line 199
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 201
    if-eqz v1, :cond_1

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 207
    goto :goto_0
.end method

.method public static getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .param p0, "extras"    # [Ljava/lang/String;
    .param p1, "needDecode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 233
    :cond_0
    return-object v4

    .line 221
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 222
    .local v5, "s":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 223
    .local v6, "sep_index":I
    if-gez v6, :cond_2

    .line 221
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "value":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method


# virtual methods
.method public getCsvFromExtras()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, ""

    .line 254
    :goto_0
    return-object v3

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getExtraStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isChanged(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    .line 320
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iget v2, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-eq v1, v2, :cond_3

    .line 321
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 325
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 328
    goto :goto_0
.end method

.method public setExtraValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 177
    return-void
.end method

.method public setExtrasFromCsv(Ljava/lang/String;)V
    .locals 2
    .param p1, "newExtras"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    .line 259
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    goto :goto_0
.end method

.method public toCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "participants"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 263
    .local v0, "isConferenceCall":Z
    iget-object v2, p0, Lcom/android/internal/telephony/CallDetails;->mExtras:Ljava/util/Map;

    const-string v3, "resolution"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v5, :cond_9

    .line 266
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_1

    .line 267
    if-eqz v0, :cond_0

    .line 268
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    .line 300
    :goto_0
    return-object v2

    .line 270
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 272
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_6

    .line 273
    if-eqz v0, :cond_2

    .line 274
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 275
    :cond_2
    const-string v2, "qcif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 277
    :cond_3
    const-string v2, "qvga"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 279
    :cond_4
    const-string v2, "hd_land"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 280
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO_LAND:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 282
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 284
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_7

    .line 285
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 286
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_8

    .line 287
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 289
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 291
    :cond_9
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_c

    .line 292
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_a

    .line 293
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 294
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v6, :cond_b

    .line 295
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 297
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0

    .line 300
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallDetails;->getCsvFromExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
