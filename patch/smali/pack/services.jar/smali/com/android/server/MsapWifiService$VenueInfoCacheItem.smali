.class Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
.super Ljava/lang/Object;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MsapWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VenueInfoCacheItem"
.end annotation


# instance fields
.field mBssId:Ljava/lang/String;

.field mParseError:I

.field mServerId:Ljava/lang/String;

.field mSsId:Ljava/lang/String;

.field mVenueHash:Ljava/lang/String;

.field mVenueName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MsapWifiService;


# direct methods
.method constructor <init>(Lcom/android/server/MsapWifiService;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/android/server/MsapWifiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "venueHash"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "bssId"    # Ljava/lang/String;
    .param p5, "ssId"    # Ljava/lang/String;
    .param p6, "venueName"    # Ljava/lang/String;
    .param p7, "parseError"    # I

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    .line 199
    iput-object p6, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    .line 200
    iput p7, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    .line 201
    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 235
    if-nez p1, :cond_0

    const-string v0, ""

    .line 236
    .local v0, "tmpStr1":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v1, ""

    .line 237
    .local v1, "tmpStr2":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .end local v0    # "tmpStr1":Ljava/lang/String;
    .end local v1    # "tmpStr2":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 235
    goto :goto_0

    .restart local v0    # "tmpStr1":Ljava/lang/String;
    :cond_1
    move-object v1, p2

    .line 236
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    .line 211
    .local v0, "venueInfoCacheItem":Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v1, p0, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method
