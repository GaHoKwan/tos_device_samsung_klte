.class public Landroid/util/fenghen/CityLocator/FenhenCityLocator;
.super Ljava/lang/Object;
.source "FenhenCityLocator.java"


# static fields
.field private static final AUTHOR:Ljava/lang/String; = "kenping: kenping@qq.com"

.field private static final BIN_DEFAULT_DIR:Ljava/lang/String; = "/data/data/com.android.phone/HomeLocationDB.bin"

.field private static final BIN_ORIG_DEFAULT_DIR:Ljava/lang/String; = "/system/etc/HomeLocationDB.bin"

.field private static final HEADER_SIZE:I = 0x2

.field private static final KP_LANG_CHINA:I = 0x0

.field private static final KP_LANG_ENGLISH:I = 0x1

.field private static final KP_LANG_KOREA:I = 0x2

.field private static final MOBILE_SIZE:I = 0x81

.field private static final PROVINCE_SIZE:I = 0x60

.field private static final TEL_SIZE:I = 0x83

.field private static final TITLE_SEEK_COUNT:I = 0xc

.field private static final VERSION:Ljava/lang/String; = "1.1"

.field private static knowncities:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getPhoneLocation(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static close()V
    .locals 1

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getPhoneLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "number_region_activation_preference"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getPhoneLocation(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPhoneLocation(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "17951"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17909"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "12593"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17950"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_4

    const-string v1, ""

    :goto_1
    return-object v1

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    invoke-static {v0, p2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->queryLocation(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getUnicodeString([BII)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_0

    const-string v3, ""

    :goto_1
    return-object v3

    :cond_0
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-nez v3, :cond_1

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_1

    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static hgqueryLocation(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    move-object v0, p0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "17951"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17909"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "12593"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "17950"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_3

    invoke-static {v0, p1}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->queryLocation(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    const-string/jumbo v1, "\u6682\u65e0\u5f52\u5c5e\u5730"

    goto :goto_0
.end method

.method private static initChinaSNumbers()V
    .locals 3

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10000"

    const-string/jumbo v2, "\u4e2d\u56fd\u7535\u4fe1\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10011"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u624b\u673a\u5145\u503c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10012"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10015"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u6295\u8bc9\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10018"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u661f\u7ea7\u5ba2\u6237\u81ea\u52a9\u670d\u52a1\u70ed\u7ebf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10050"

    const-string/jumbo v2, "\u4e2d\u56fd\u94c1\u901a\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10060"

    const-string/jumbo v2, "\u4e2d\u56fd\u7f51\u901a\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10070"

    const-string/jumbo v2, "\u4e2d\u56fd\u536b\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10086"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10088"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u8d35\u5bbe\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10198"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u6cd5\u5f8b\u987e\u95ee"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "11185"

    const-string/jumbo v2, "\u90ae\u653fEMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12121"

    const-string/jumbo v2, "\u5929\u6c14\u9884\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12306"

    const-string/jumbo v2, "\u94c1\u8def\u5ba2\u670d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12312"

    const-string/jumbo v2, "\u4fdd\u62a4\u77e5\u8bc6\u4ea7\u6743\u4e3e\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12315"

    const-string/jumbo v2, "\u5de5\u5546\u4e3e\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12319"

    const-string/jumbo v2, "\u57ce\u5efa\u670d\u52a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12320"

    const-string/jumbo v2, "\u5168\u56fd\u516c\u5171\u536b\u751f\u516c\u76ca\u70ed\u7ebf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12333"

    const-string/jumbo v2, "\u52b3\u52a8\u4fdd\u969c\u653f\u7b56\u54a8\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12348"

    const-string/jumbo v2, "\u6cd5\u5f8b\u54a8\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12358"

    const-string/jumbo v2, "\u4ef7\u683c\u4e3e\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12365"

    const-string/jumbo v2, "\u8d28\u91cf\u76d1\u7763"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12366"

    const-string/jumbo v2, "\u7eb3\u7a0e\u670d\u52a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12369"

    const-string/jumbo v2, "\u73af\u4fdd\u6295\u8bc9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12520"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u98de\u4fe1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12520"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u98de\u4fe1\u7cfb\u7edf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "12580"

    const-string v2, "12580\u751f\u6d3b\u64ad\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95500"

    const-string/jumbo v2, "\u592a\u5e73\u6d0b\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95501"

    const-string/jumbo v2, "\u6df1\u5733\u53d1\u5c55\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95502"

    const-string/jumbo v2, "\u6c38\u5b89\u8d22\u4ea7\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95503"

    const-string/jumbo v2, "\u4e1c\u65b9\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95505"

    const-string/jumbo v2, "\u5929\u5b89\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95506"

    const-string/jumbo v2, "\u6c11\u5b89\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95507"

    const-string/jumbo v2, "\u5927\u4f17\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95508"

    const-string/jumbo v2, "\u5e7f\u4e1c\u53d1\u5c55\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95509"

    const-string/jumbo v2, "\u534e\u6cf0\u8d22\u4ea7\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95510"

    const-string/jumbo v2, "\u9633\u5149\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "02195511"

    const-string/jumbo v2, "\u4e2d\u56fd\u5e73\u5b89\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "02195512"

    const-string/jumbo v2, "\u4e2d\u56fd\u5e73\u5b89\u4ea7\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "02895550"

    const-string/jumbo v2, "\u5929\u5e73\u6c7d\u8f66\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "01095510"

    const-string/jumbo v2, "\u9633\u5149\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "02195590"

    const-string/jumbo v2, "\u5927\u5730\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "02195500"

    const-string/jumbo v2, "\u592a\u5e73\u6d0b\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95511"

    const-string/jumbo v2, "\u5e73\u5b89\u4eba\u5bff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95512"

    const-string/jumbo v2, "\u4e2d\u56fd\u5e73\u5b89\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95513"

    const-string/jumbo v2, "\u8054\u5408\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95515"

    const-string/jumbo v2, "\u5408\u4f17\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95516"

    const-string/jumbo v2, "\u4e2d\u56fd\u94f6\u8054"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95517"

    const-string/jumbo v2, "\u5b89\u4fe1\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95518"

    const-string/jumbo v2, "\u4e2d\u56fd\u4eba\u6c11\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95519"

    const-string/jumbo v2, "\u4e2d\u56fd\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95520"

    const-string/jumbo v2, "\u4e0a\u6d77\u5409\u7965\u822a\u7a7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95521"

    const-string/jumbo v2, "\u56fd\u6cf0\u541b\u5b89\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95522"

    const-string/jumbo v2, "\u6cf0\u5eb7\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95523"

    const-string/jumbo v2, "\u7533\u94f6\u4e07\u56fd\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95525"

    const-string/jumbo v2, "\u5149\u5927\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95527"

    const-string/jumbo v2, "\u6d59\u5546\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95528"

    const-string/jumbo v2, "\u6d66\u53d1\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95529"

    const-string/jumbo v2, "\u592a\u5e73\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95530"

    const-string/jumbo v2, "\u4e1c\u65b9\u822a\u7a7a\u670d\u52a1\u70ed\u7ebf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95533"

    const-string/jumbo v2, "\u4e2d\u56fd\u5efa\u8bbe\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95535"

    const-string/jumbo v2, "\u751f\u547d\u4eba\u5bff\u4fdd\u9669\u516c\u53f8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95536"

    const-string/jumbo v2, "\u56fd\u4fe1\u8bc1\u5238\u80a1\u4efd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95538"

    const-string/jumbo v2, "\u9f50\u9c81\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95539"

    const-string/jumbo v2, "\u5357\u65b9\u822a\u7a7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95548"

    const-string/jumbo v2, "\u4e2d\u4fe1\u63a7\u80a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95550"

    const-string/jumbo v2, "\u5929\u5e73\u6c7d\u8f66\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95551"

    const-string/jumbo v2, "\u4e2d\u56fd\u94f6\u6cb3\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95552"

    const-string/jumbo v2, "\u6c38\u8bda\u8d22\u4ea7\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95553"

    const-string/jumbo v2, "\u6d77\u901a\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95555"

    const-string/jumbo v2, "\u62db\u5546\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95556"

    const-string/jumbo v2, "\u534e\u5b89\u8d22\u4ea7\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95557"

    const-string/jumbo v2, "\u53a6\u95e8\u822a\u7a7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95558"

    const-string/jumbo v2, "\u4e2d\u4fe1\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95559"

    const-string/jumbo v2, "\u4e2d\u56fd\u4ea4\u901a\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95560"

    const-string/jumbo v2, "\u5e78\u798f\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95561"

    const-string/jumbo v2, "\u5174\u4e1a\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95562"

    const-string/jumbo v2, "\u5174\u4e1a\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95563"

    const-string/jumbo v2, "\u56fd\u6d77\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95565"

    const-string/jumbo v2, "\u62db\u5546\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95566"

    const-string/jumbo v2, "\u4e2d\u56fd\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95567"

    const-string/jumbo v2, "\u65b0\u534e\u4eba\u5bff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95568"

    const-string/jumbo v2, "\u4e2d\u56fd\u6c11\u751f\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95569"

    const-string/jumbo v2, "\u5b89\u90a6\u8d22\u4ea7\u4fdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95571"

    const-string/jumbo v2, "\u65b9\u6b63\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95573"

    const-string/jumbo v2, "\u5c71\u897f\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95575"

    const-string/jumbo v2, "\u5e7f\u53d1\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95576"

    const-string/jumbo v2, "\u957f\u57ce\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95577"

    const-string/jumbo v2, "\u534e\u590f\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95578"

    const-string/jumbo v2, "\u56fd\u5143\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95579"

    const-string/jumbo v2, "\u957f\u6c5f\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95580"

    const-string/jumbo v2, "\u4e2d\u56fd\u90ae\u653f\u50a8\u84c4\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95581"

    const-string/jumbo v2, "\u5609\u79be\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95583"

    const-string/jumbo v2, "\u4e2d\u56fd\u56fd\u9645\u822a\u7a7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95584"

    const-string/jumbo v2, "\u534e\u897f\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95585"

    const-string/jumbo v2, "\u4e2d\u534e\u8054\u5408\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95587"

    const-string/jumbo v2, "\u4e2d\u4fe1\u5efa\u6295\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95588"

    const-string/jumbo v2, "\u4e2d\u56fd\u5de5\u5546\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95589"

    const-string/jumbo v2, "\u592a\u5e73\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95590"

    const-string/jumbo v2, "\u4e2d\u56fd\u5927\u5730\u8d22\u4ea7\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95592"

    const-string/jumbo v2, "\u957f\u5b89\u8d23\u4efb\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95593"

    const-string/jumbo v2, "\u56fd\u5bb6\u5f00\u53d1\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95595"

    const-string/jumbo v2, "\u4e2d\u56fd\u5149\u5927\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95596"

    const-string/jumbo v2, "\u6c11\u751f\u4eba\u5bff\u4fdd\u9669"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95597"

    const-string/jumbo v2, "\u534e\u6cf0\u8bc1\u5238"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95598"

    const-string/jumbo v2, "\u56fd\u5bb6\u7535\u7f51"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95599"

    const-string/jumbo v2, "\u4e2d\u56fd\u519c\u4e1a\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96100"

    const-string/jumbo v2, "\u6c11\u653f\u670d\u52a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96118"

    const-string/jumbo v2, "\u65c5\u6e38\u6295\u8bc9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96178"

    const-string/jumbo v2, "\u5ec9\u653f\u6295\u8bc9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96198"

    const-string/jumbo v2, "\u519c\u4e1a\u4fe1\u7528\u8054\u793e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96310"

    const-string/jumbo v2, "\u57ce\u7ba1\u6267\u6cd5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96588"

    const-string/jumbo v2, "\u5fbd\u5546\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "96666"

    const-string/jumbo v2, "\u6c11\u822a\u90d1\u5dde\u673a\u573a\u552e\u7968\u5904"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "100101"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u5f53\u524d\u8bdd\u8d39\u67e5\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "100102"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u4f59\u989d\u67e5\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "101901"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u8bdd\u8d39\u67e5\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "116114"

    const-string/jumbo v2, "\u8054\u901a\u67e5\u53f7\u53f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "118114"

    const-string/jumbo v2, "\u53f7\u7801\u767e\u4e8b\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "118114"

    const-string/jumbo v2, "\u53f7\u7801\u767e\u4e8b\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "886921"

    const-string/jumbo v2, "\u4e2d\u83ef\u96fb\u4fe1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1008611"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u67e5\u8be2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1013088"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u5145\u503c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1013089"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u67e5\u8d39"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1836050"

    const-string/jumbo v2, "\u6c5f\u82cf\u8fde\u4e91\u6e2f\u79fb\u52a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1836096"

    const-string/jumbo v2, "\u6c5f\u82cf\u6dee\u5b89\u79fb\u52a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010000"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010020"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010100"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010202"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010333"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010755"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10010022"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "75510010"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10655111"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u624b\u673a\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10655898"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10658000"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10658139"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u90ae\u7bb1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10658258"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u751f\u6d3b\u597d\u7ba1\u5bb6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10658688"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u97f5\u5473\u5e2e\u624b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95105366"

    const-string/jumbo v2, "\u4e2d\u94c1\u5feb\u8fd0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "95105768"

    const-string/jumbo v2, "\u6d77\u5eb7\u4eba\u5bff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "106289799"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u98de\u5f71"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "106558787"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u6570\u636e\u5361\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1065795555"

    const-string/jumbo v2, "\u62db\u5546\u94f6\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1065888090"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u751f\u6d3b\u64ad\u62a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4000095567"

    const-string/jumbo v2, "\u65b0\u534e\u4eba\u5bff\u4fdd\u9669\u4e0a\u6d77\u5206\u516c\u53f8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4006789000"

    const-string/jumbo v2, "\u5b85\u6025\u9001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008108000"

    const-string v2, "DHL\u5feb\u9012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008111111"

    const-string/jumbo v2, "\u987a\u4e30\u901f\u8fd0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008123123"

    const-string/jumbo v2, "\u5fc5\u80dc\u5ba2\u5b85\u6025\u9001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008208388"

    const-string v2, "UPS\u5feb\u9012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008209868"

    const-string v2, "TNT\u5feb\u9012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008517517"

    const-string/jumbo v2, "\u9ea6\u5f53\u52b3\u9ea6\u4e50\u9001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008823823"

    const-string/jumbo v2, "\u80af\u5fb7\u57fa\u5b85\u6025\u9001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008861888"

    const-string/jumbo v2, "\u8054\u90a6\u5feb\u9012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "4008888400"

    const-string/jumbo v2, "\u4e0a\u6d77\u8bc1\u5238\u4ea4\u6613\u6240"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10690866782"

    const-string/jumbo v2, "\u795e\u5dde\u79df\u8f66"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "13800138000"

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8\u5145\u503c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "106550578680"

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "106903335111"

    const-string/jumbo v2, "\u987a\u4e30\u5feb\u9012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1065502180906"

    const-string/jumbo v2, "\u643a\u7a0b\u65c5\u884c\u7f51\u5929\u6c14\u63d0\u9192"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "1065502188882"

    const-string/jumbo v2, "\u643a\u7a0b\u65c5\u884c\u7f51"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10657302012366"

    const-string/jumbo v2, "\u5e7f\u5dde\u56fd\u7a0e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "10657516012988"

    const-string/jumbo v2, "\u8f6c\u8fd0\u4e2d\u56fd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "110"

    const-string/jumbo v2, "\u532a\u8b66\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "112"

    const-string/jumbo v2, "\u7d27\u6025\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "119"

    const-string/jumbo v2, "\u706b\u8b66\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "120"

    const-string/jumbo v2, "\u6025\u6551\u4e2d\u5fc3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "122"

    const-string/jumbo v2, "\u4ea4\u901a\u62a5\u8b66"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    const-string v1, "999"

    const-string/jumbo v2, "\u6025\u6551\u4e2d\u5fc3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static mobileHeaderSearch([BII)I
    .locals 4

    const/4 v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    mul-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    invoke-static {v0}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedShort([B)I

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static putKnowCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static putSpecialFeature(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feature_chn"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ip_call"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "disable_format_number"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "permanent_save_view_by_setting"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "phone_number_locator"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "phone_icon_to_keypad"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call_block_ui"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "voice_call_recording"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static queryLocation(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 33

    const-string v15, ""

    const/16 v22, 0x0

    const/4 v14, 0x0

    :try_start_0
    sget-object v29, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-static {}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->initChinaSNumbers()V

    :cond_0
    sget-object v29, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    sget-object v29, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    :goto_0
    return-object v29

    :cond_1
    const/4 v11, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/4 v11, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x33

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2

    const/16 v29, 0x0

    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    :cond_2
    :goto_1
    if-nez v22, :cond_5

    const-string v29, ""

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2

    const/4 v11, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto :goto_1

    :cond_5
    sget-object v29, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    sget-object v29, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->knowncities:Ljava/util/Map;

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v29, Ljava/io/File;

    const-string v30, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_a

    const-string v29, "/data/data/com.android.phone/HomeLocationDB.bin"

    :goto_2
    const-string/jumbo v30, "r"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v6, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v5, v0, [B

    const-wide/16 v29, 0x48

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v29, 0x0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v5}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedInt([B)J

    move-result-wide v26

    const/16 v29, 0x0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v5}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedInt([B)J

    move-result-wide v17

    const/16 v29, 0x0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v5, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v5}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedInt([B)J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v29

    const-wide/16 v31, 0x30

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v29, 0xba0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    if-eqz v11, :cond_d

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v29

    const-wide/16 v31, 0x83

    mul-long v31, v31, v26

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v29, 0x81

    mul-long v29, v29, v17

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v29, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    const-wide/16 v29, 0x2

    mul-long v29, v29, v8

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v7, v0, [B

    const/16 v29, 0x0

    array-length v0, v7

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    long-to-int v0, v8

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->mobileHeaderSearch([BII)I

    move-result v20

    if-ltz v20, :cond_9

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [B

    const/16 v29, 0x4e20

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v28, v0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v29

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v29, 0x0

    const/16 v30, 0x4e20

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move/from16 v0, v23

    rem-int/lit16 v10, v0, 0x2710

    const/16 v29, 0x0

    mul-int/lit8 v30, v10, 0x2

    aget-byte v30, v28, v30

    aput-byte v30, v4, v29

    const/16 v29, 0x1

    mul-int/lit8 v30, v10, 0x2

    add-int/lit8 v30, v30, 0x1

    aget-byte v30, v28, v30

    aput-byte v30, v4, v29

    invoke-static {v4}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedShort([B)I

    move-result v21

    add-int/lit8 v29, v21, -0x1

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x81

    move/from16 v29, v0

    aget-byte v3, v16, v29

    if-lez v21, :cond_9

    if-ltz v3, :cond_9

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_7

    add-int/lit8 v29, v3, -0x1

    mul-int/lit8 v29, v29, 0x60

    add-int/lit8 v29, v29, 0x0

    const/16 v30, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v29, v21, -0x1

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x81

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v29, "134,135,136,137,138,139,147,150,151,152,157,158,159,182,183,187,188"

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    const-string/jumbo v29, "\u79fb\u52a8"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_9
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1, v15}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->putKnowCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :goto_5
    move-object/from16 v29, v15

    goto/16 :goto_0

    :cond_a
    const-string v29, "/system/etc/HomeLocationDB.bin"

    goto/16 :goto_2

    :cond_b
    const-string v29, "130,131,132,145,155,156,185,186"

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    const-string/jumbo v29, "\u8054\u901a"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_0
    move-exception v29

    goto :goto_5

    :cond_c
    const-string v29, "133,153,180,189"

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_8

    const-string/jumbo v29, "\u7535\u4fe1"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const-wide/16 v29, 0x83

    mul-long v29, v29, v26

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->teleBinarySearch([BII)I

    move-result v13

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_9

    mul-int/lit16 v0, v13, 0x83

    move/from16 v29, v0

    aget-byte v3, v25, v29

    if-ltz v3, :cond_9

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_e

    add-int/lit8 v29, v3, -0x1

    mul-int/lit8 v29, v29, 0x60

    const/16 v30, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    mul-int/lit16 v0, v13, 0x83

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    const/16 v30, 0x20

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_4
.end method

.method private static readUnsignedInt([B)J
    .locals 10

    const/4 v6, 0x0

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    const/4 v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long v2, v6, v8

    const/4 v6, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long v4, v6, v8

    const/4 v6, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v6, v8

    return-wide v6
.end method

.method private static readUnsignedShort([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static setLocationText(Landroid/content/Context;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/TextView;

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0, p3}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->getPhoneLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static teleBinarySearch([BII)I
    .locals 4

    const/4 v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    mul-int/lit16 v3, v1, 0x83

    add-int/lit16 v3, v3, 0x83

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    mul-int/lit16 v3, v1, 0x83

    add-int/lit16 v3, v3, 0x83

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    invoke-static {v0}, Landroid/util/fenghen/CityLocator/FenhenCityLocator;->readUnsignedShort([B)I

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
