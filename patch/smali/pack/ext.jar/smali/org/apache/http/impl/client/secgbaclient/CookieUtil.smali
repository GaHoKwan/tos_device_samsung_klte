.class public Lorg/apache/http/impl/client/secgbaclient/CookieUtil;
.super Ljava/lang/Object;
.source "CookieUtil.java"


# static fields
.field private static final DEFAULT_COOKIE2:Ljava/lang/String; = "$Version=1"

.field private static final HEADER_COOKIE_LIST:[Ljava/lang/String;

.field private static final HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "Cookie"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "Cookie"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Cookie"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cookie2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cookie3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cookie4"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->HEADER_COOKIE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/http/HttpResponse;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 72
    :cond_0
    return-object v1

    .line 60
    :cond_1
    move-object v5, p1

    .line 61
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string v6, "Set-Cookie"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 63
    .local v3, "iterator":Lorg/apache/http/HeaderIterator;
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "hValue":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, "offset":I
    const/4 v6, 0x0

    if-lez v4, :cond_2

    .end local v4    # "offset":I
    :goto_1
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cookie":Ljava/lang/String;
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "Cookie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cookie is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "cookie":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1
.end method

.method public setCookies(Lorg/apache/http/HttpRequest;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 80
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "cookie":Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "index":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cookie":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 85
    .restart local v0    # "cookie":Ljava/lang/String;
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cookie is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->HEADER_COOKIE_LIST:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-object v4, v4, v1

    invoke-interface {p1, v4, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 88
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/CookieUtil;->HEADER_COOKIE_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "$Version=1"

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
