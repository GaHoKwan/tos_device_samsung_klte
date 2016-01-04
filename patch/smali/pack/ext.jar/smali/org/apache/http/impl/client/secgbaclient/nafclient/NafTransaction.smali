.class public Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;
.super Ljava/lang/Object;
.source "NafTransaction.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "NafTransaction"


# instance fields
.field protected curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

.field protected curNafRequest:Lorg/apache/http/HttpRequest;

.field protected curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

.field protected gbaType:Ljava/lang/String;

.field private final maxRealmCount:I

.field protected nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

.field protected final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafTransaction"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;Lorg/apache/http/HttpRequest;)V
    .locals 4
    .param p1, "nafRequestContxt"    # Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;
    .param p2, "nafRequest"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->maxRealmCount:I

    .line 37
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .line 38
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curNafRequest:Lorg/apache/http/HttpRequest;

    .line 39
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .line 40
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->syncObj:Ljava/lang/Object;

    .line 42
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curNafRequest:Lorg/apache/http/HttpRequest;

    .line 46
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    .line 47
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gbaType is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected handleUnauthorizedRes(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 31
    .param p1, "nafResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 53
    const/16 v22, 0x0

    .line 54
    .local v22, "myAuthHeaderparser":Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;
    const/16 v30, 0x0

    .line 55
    .local v30, "secureProtoId":Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;
    const/16 v23, 0x0

    .line 56
    .local v23, "nafFqdn":Ljava/lang/String;
    const/16 v29, 0x0

    .line 57
    .local v29, "realmVal":Ljava/lang/String;
    const/16 v16, 0x0

    .line 58
    .local v16, "curSecurityProtocolId":[B
    const/4 v15, 0x0

    .line 59
    .local v15, "curNafId":[B
    const/16 v19, 0x0

    .line 60
    .local v19, "gbaKey":[B
    const/4 v13, 0x0

    .line 61
    .local v13, "bsfRes":Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;
    new-instance v14, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    invoke-direct {v14, v3}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;-><init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;)V

    .line 62
    .local v14, "bsfTransaction":Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;
    const/16 v28, 0x0

    .line 63
    .local v28, "parsedGbaKey":[B
    const/4 v10, 0x0

    .line 64
    .local v10, "passwordStr":Ljava/lang/String;
    const/16 v21, 0x0

    .line 65
    .local v21, "isQop":Z
    const/16 v18, 0x0

    .line 67
    .local v18, "finalNafResponse":Lorg/apache/http/HttpResponse;
    if-nez p1, :cond_0

    .line 233
    .end local p1    # "nafResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "nafResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v22, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    .end local v22    # "myAuthHeaderparser":Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;
    invoke-direct/range {v22 .. v22}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;-><init>()V

    .line 75
    .restart local v22    # "myAuthHeaderparser":Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->WwwAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    const/16 v21, 0x1

    .line 83
    :cond_1
    new-instance v25, Lorg/apache/http/impl/client/secgbaclient/Nonce;

    invoke-direct/range {v25 .. v25}, Lorg/apache/http/impl/client/secgbaclient/Nonce;-><init>()V

    .line 84
    .local v25, "nafNonce":Lorg/apache/http/impl/client/secgbaclient/Nonce;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->parseNonce(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getRand()[B

    move-result-object v26

    .line 92
    .local v26, "nafRand":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 94
    .local v27, "newRealm":[Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gbaType is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v27, :cond_6

    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 98
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new Realm length is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    const-string v4, "gba-me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    const/4 v3, 0x0

    aget-object v3, v27, v3

    const-string v4, "uicc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    const/4 v3, 0x1

    aget-object v29, v27, v3

    .line 119
    :goto_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realmVal is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setRealm(Ljava/lang/String;)V

    .line 123
    const/16 v3, 0x40

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 124
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nafFqdn is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v30, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;

    .end local v30    # "secureProtoId":Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;
    invoke-direct/range {v30 .. v30}, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;-><init>()V

    .line 127
    .restart local v30    # "secureProtoId":Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->getUaSecureProtoId(Ljava/lang/String;)[B

    move-result-object v16

    .line 130
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    move-result-object v20

    .line 131
    .local v20, "gbaService":Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;
    if-eqz v20, :cond_9

    .line 134
    :try_start_0
    const-string v3, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getNafId([B[B)[B

    move-result-object v15

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    const-string v4, "gba-me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 136
    const-string v3, "gba-me"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v3}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getGbaKey([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 151
    :goto_2
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NafFQDN is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityProtoId is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NafID is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-nez v19, :cond_2

    .line 158
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    const-string v5, "GbaKey not Found Need to perform Bootstrapping"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    :try_start_1
    invoke-virtual {v14, v15}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->performBsfAuth([B)Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    move-result-object v13

    .line 163
    if-eqz v13, :cond_c

    .line 165
    if-eqz v20, :cond_b

    .line 167
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bsfRes.getImpi()=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->getImpi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curNafId=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bsfRes.getLifeTime()=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->getLifeTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v13}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->getRand()[B

    move-result-object v3

    invoke-virtual {v13}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->getbTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->getLifeTime()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->gbaType:Ljava/lang/String;

    const-string v5, "gba-me"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 172
    const-string v3, "gba-me"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v15}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->generateGbaKey([B[B)[B

    move-result-object v19

    .line 176
    :goto_3
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gbaKey in naftransaction is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_2
    new-instance v24, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-direct/range {v24 .. v24}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;-><init>()V

    .line 193
    .local v24, "nafKeyResp":Lorg/apache/http/impl/client/secgbaclient/AkaResponse;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->parseResKeyFromIsimResponse([B)V

    .line 194
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->getRes()[B

    move-result-object v28

    .line 195
    new-instance v10, Ljava/lang/String;

    .end local v10    # "passwordStr":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    const-string v4, "CP1252"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 197
    .restart local v10    # "passwordStr":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.curParsedAuthHeader.getAlgorithm()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.curParsedAuthHeader.getRealm()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.curParsedAuthHeader.getNonce()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.curParsedAuthHeader.getQop()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.curParsedAuthHeader.getOpaque()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new String(gbaKey)=passwordStr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this.curNafRequest.getRequestLine().getMethod()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curNafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v6}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v2, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getBtId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curParsedAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curNafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v9}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curNafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v12}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 220
    .local v2, "authorizationHeaderCreator":Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->createAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getAuthorizationHeaderVal(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->setNafAuthorizationHeaderVal(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addAuthorizationHeader()V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->sendSecondNafRequest()Lorg/apache/http/HttpResponse;

    move-result-object v18

    move-object/from16 p1, v18

    .line 233
    goto/16 :goto_0

    .line 104
    .end local v2    # "authorizationHeaderCreator":Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;
    .end local v20    # "gbaService":Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;
    .end local v24    # "nafKeyResp":Lorg/apache/http/impl/client/secgbaclient/AkaResponse;
    :cond_3
    const/4 v3, 0x0

    aget-object v29, v27, v3

    goto/16 :goto_1

    .line 108
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v27, v3

    const-string v4, "uicc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    const/4 v3, 0x0

    aget-object v29, v27, v3

    goto/16 :goto_1

    .line 111
    :cond_5
    const/4 v3, 0x1

    aget-object v29, v27, v3

    goto/16 :goto_1

    .line 114
    :cond_6
    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 115
    const/4 v3, 0x0

    aget-object v29, v27, v3

    goto/16 :goto_1

    .line 117
    :cond_7
    const-string v29, "3GPP-bootstrapping@mms.msg.eng.t-mobile.com"

    goto/16 :goto_1

    .line 139
    .restart local v20    # "gbaService":Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;
    :cond_8
    :try_start_2
    const-string v3, "gba-u"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v3}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getGbaKey([B[B)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    goto/16 :goto_2

    .line 141
    :catch_0
    move-exception v17

    .line 143
    .local v17, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 148
    .end local v17    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafTransaction"

    const-string v5, "Gba Service is not running or Binding failed"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 174
    :cond_a
    :try_start_3
    const-string v3, "gba-u"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v15}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->generateGbaKey([B[B)[B

    move-result-object v19

    goto/16 :goto_3

    .line 180
    :cond_b
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    const-string v6, "Gba Service is not running or Binding failed"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 190
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 185
    :cond_c
    :try_start_4
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafTransaction"

    const-string v6, "Final Bsf Response data is Null"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
