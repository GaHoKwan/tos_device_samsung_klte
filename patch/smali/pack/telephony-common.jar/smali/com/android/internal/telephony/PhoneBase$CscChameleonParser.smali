.class Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;
.super Ljava/lang/Object;
.source "PhoneBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CscChameleonParser"
.end annotation


# static fields
.field private static final CSC_CHAMELEON_FILE:Ljava/lang/String; = "/carrier/chameleon.xml"

.field private static final PATH_OPERATORS_BRANDALPHA:Ljava/lang/String; = "Operators.BrandAlpha"

.field private static final PATH_OPERATORS_NETWORKCODE:Ljava/lang/String; = "Operators.AndroidOperatorNetworkCode"

.field private static final PATH_OPERATORS_RESELLERID:Ljava/lang/String; = "Operators.SubscriberCarrierId"


# instance fields
.field private isFileExist:Z

.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->this$0:Lcom/android/internal/telephony/PhoneBase;

    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->isFileExist:Z

    .line 2139
    const-string v1, "PhoneBase"

    const-string v2, "[CscChameleonParser] init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    :try_start_0
    const-string v1, "/carrier/chameleon.xml"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    :goto_0
    return-void

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isFileExists()Z
    .locals 3

    .prologue
    .line 2150
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFileExists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->isFileExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->isFileExist:Z

    return v0
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2155
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 2156
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2158
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2161
    const-string v3, "PhoneBase"

    const-string v4, "[CscChameleonParser] Update"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    .line 2163
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    .line 2164
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->isFileExist:Z

    .line 2169
    :goto_0
    return-void

    .line 2166
    :cond_0
    const-string v3, "PhoneBase"

    const-string v4, "[CscChameleonParser] Update: File not exist"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->isFileExist:Z

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2186
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 2187
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 2190
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOperatorBrandAlpha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2172
    const-string v0, "Operators.BrandAlpha"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorNetworkCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2176
    const-string v0, "Operators.AndroidOperatorNetworkCode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorResellerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2180
    const-string v0, "Operators.SubscriberCarrierId"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2194
    if-nez p1, :cond_1

    move-object v0, v3

    .line 2209
    :cond_0
    :goto_0
    return-object v0

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    .line 2198
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2201
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 2203
    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 2204
    goto :goto_0

    .line 2206
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase$CscChameleonParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2207
    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2213
    if-nez p1, :cond_1

    move-object v0, v4

    .line 2231
    :cond_0
    :goto_0
    return-object v0

    .line 2217
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 2219
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 2220
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2222
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2223
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2225
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    move-object v0, v4

    .line 2231
    goto :goto_0
.end method
