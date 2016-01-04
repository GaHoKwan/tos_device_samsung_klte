.class public Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;
.super Ljava/lang/Object;
.source "HttpResponseXmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .param p1, "responseEntity"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "document":Lorg/w3c/dom/Document;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 67
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 79
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getDoc(Lorg/apache/http/HttpResponse;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 44
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 46
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;->getDoc(Ljava/lang/String;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 57
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    .line 51
    .restart local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
