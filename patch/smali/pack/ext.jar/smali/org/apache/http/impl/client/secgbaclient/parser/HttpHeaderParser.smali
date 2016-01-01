.class Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final QUOTE:Ljava/lang/String; = "\""

.field protected static final REGEX_ALGORITHM:Ljava/lang/String; = "algorithm[\\s]*="

.field protected static final REGEX_DOMAIN:Ljava/lang/String; = "domain[\\s]*="

.field protected static final REGEX_NONCE:Ljava/lang/String; = "nonce[\\s]*="

.field protected static final REGEX_OPAQUE:Ljava/lang/String; = "opaque[\\s]*="

.field protected static final REGEX_QOP:Ljava/lang/String; = "qop[\\s]*="

.field protected static final REGEX_REALM:Ljava/lang/String; = "realm[\\s]*="

.field protected static final REGEX_STALE:Ljava/lang/String; = "stale[\\s]*="

.field private static final SPACE_REGEX:Ljava/lang/String; = "[\\s]*"

.field protected static final SPACE_SEPERATOR_REGEX:Ljava/lang/String; = "[\\s]*="


# instance fields
.field private paramMatcher:Ljava/util/regex/Matcher;

.field private paramPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 37
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    .line 61
    return-void
.end method


# virtual methods
.method protected getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "headerName"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "headerValue":Ljava/lang/String;
    invoke-interface {p1, p2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 68
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_0
    return-object v1
.end method

.method protected getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "splitHeader"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    .line 86
    .local v0, "paramVal":Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "\""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 107
    .local v0, "paramSplit":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 108
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    .line 110
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method protected parse(Lorg/apache/http/impl/client/secgbaclient/AuthenticationHeaders;Ljava/lang/String;)V
    .locals 0
    .param p1, "parsedHeader"    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationHeaders;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
