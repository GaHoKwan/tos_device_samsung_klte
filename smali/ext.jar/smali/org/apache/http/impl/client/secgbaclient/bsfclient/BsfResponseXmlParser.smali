.class public Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;
.super Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;
.source "BsfResponseXmlParser.java"


# static fields
.field private static final BOOTSTRAPPINGINFO_NODE:Ljava/lang/String; = "BootstrappingInfo"

.field private static final BTID_NODE:Ljava/lang/String; = "btid"

.field private static final LIFETIME_NODE:Ljava/lang/String; = "lifetime"

.field private static final TAG:Ljava/lang/String; = "BsfResponseXmlParser"

.field private static final gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfResponseXmlParser"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;-><init>()V

    .line 43
    return-void
.end method

.method private parseSetBtid(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 7
    .param p1, "bootstrappingInfoElement"    # Lorg/w3c/dom/Element;
    .param p2, "finalAuthResData"    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    .prologue
    .line 67
    const-string v3, "btid"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 69
    .local v2, "btidNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 71
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 72
    .local v0, "bTidNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "bTidVal":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfResponseXmlParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bTidVal====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2, v1}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setbTid(Ljava/lang/String;)V

    .line 76
    .end local v0    # "bTidNode":Lorg/w3c/dom/Node;
    .end local v1    # "bTidVal":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseSetLifetime(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 7
    .param p1, "bootstrappingInfoElement"    # Lorg/w3c/dom/Element;
    .param p2, "finalAuthResData"    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    .prologue
    .line 80
    const-string v3, "lifetime"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 82
    .local v1, "lifeTimeNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 85
    .local v0, "lifeTimeNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "lifeTimeVal":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfResponseXmlParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lifeTimeVal====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, v2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setLifeTime(Ljava/lang/String;)V

    .line 89
    .end local v0    # "lifeTimeNode":Lorg/w3c/dom/Node;
    .end local v2    # "lifeTimeVal":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public parseFinalBsfRes(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "finalAuthResData"    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;->getDoc(Lorg/apache/http/HttpResponse;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 47
    .local v2, "document":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_0

    .line 49
    const-string v4, "BootstrappingInfo"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 50
    .local v3, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 52
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "bootstrappingInfoNode":Lorg/w3c/dom/Node;
    move-object v0, v1

    .line 53
    check-cast v0, Lorg/w3c/dom/Element;

    .line 54
    .local v0, "bootstrappingInfoElement":Lorg/w3c/dom/Element;
    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->parseSetBtid(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V

    .line 55
    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->parseSetLifetime(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V

    .line 63
    .end local v0    # "bootstrappingInfoElement":Lorg/w3c/dom/Element;
    .end local v1    # "bootstrappingInfoNode":Lorg/w3c/dom/Node;
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_0
    return-void

    .line 59
    .restart local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "BootStrapping Info not present in BSF Response"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
