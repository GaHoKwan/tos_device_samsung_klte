.class public final Lcom/absolute/android/persistservice/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field private static final b:I = 0xea60

.field private static final c:I = 0xea60

.field private static d:Lcom/absolute/android/sslutil/SslUtil;

.field private static e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/absolute/android/persistservice/x;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/aa;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 196
    .line 198
    new-instance v0, Lcom/absolute/android/persistence/AppInfoProperties;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>()V

    .line 206
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 209
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v4, v2, v3, p4}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 229
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 230
    :try_start_3
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 234
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 236
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_6

    .line 238
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    :goto_1
    if-eqz v2, :cond_0

    .line 274
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 280
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 284
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 286
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 291
    :cond_2
    :goto_4
    return-object v0

    .line 219
    :catch_0
    move-exception v2

    const/4 v2, 0x1

    :try_start_8
    invoke-static {v4, p1, v2, p4}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 260
    :catch_1
    move-exception v1

    :try_start_9
    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/io/Reader;Ljava/util/Properties;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 273
    :goto_5
    if-eqz v1, :cond_3

    .line 274
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 278
    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    .line 280
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 284
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 286
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 272
    :cond_5
    :goto_8
    throw v0

    .line 265
    :cond_6
    :try_start_d
    invoke-static {v2, p3}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/aa;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Server returned error in response to GetAppInfo HTTP request for URL: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " response: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 272
    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;)Lcom/absolute/android/sslutil/SslUtil;
    .locals 2

    .prologue
    .line 775
    sget-object v0, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/absolute/android/sslutil/SslUtil;

    const-string v1, "APS"

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    .line 778
    :cond_0
    sget-object v0, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v0, "AccessKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "PersistenceVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Platform="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Make="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "OSVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "BuildFingerprint="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Hardware="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Revision="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getHardwareRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MacAddress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "IMEI="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {p4}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SerialNo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "RilSerialNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string/jumbo v0, "ril.serialnumber"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/aa;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 542
    .line 543
    const/4 v2, 0x0

    .line 546
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 560
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 558
    :cond_0
    :goto_2
    throw v0

    .line 555
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 558
    if-eqz v1, :cond_2

    .line 560
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 568
    :cond_2
    :goto_3
    return-object v0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 561
    :catch_1
    move-exception v1

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception closing error BufferedReader after executing HTTP request. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 558
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    const v4, 0xea60

    .line 480
    .line 484
    if-eqz p1, :cond_4

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 499
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 500
    sget-object v2, Lcom/absolute/android/persistservice/x;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 504
    sget-object v2, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    if-nez v2, :cond_1

    new-instance v2, Lcom/absolute/android/sslutil/SslUtil;

    const-string v3, "APS"

    invoke-direct {v2, p3, v3}, Lcom/absolute/android/sslutil/SslUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    :cond_1
    sget-object v2, Lcom/absolute/android/persistservice/x;->d:Lcom/absolute/android/sslutil/SslUtil;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/absolute/android/sslutil/SslUtil;->trustOurHost(Ljava/lang/String;Z)V

    .line 505
    sget-object v2, Lcom/absolute/android/persistservice/x;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 510
    if-eqz p2, :cond_3

    .line 511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 514
    :cond_3
    const-string v1, "Content-Type"

    const-string/jumbo v2, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 522
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 525
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 527
    return-object v0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method private static a(Ljava/io/Reader;Ljava/util/Properties;)V
    .locals 12

    .prologue
    .line 602
    if-nez p0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 610
    const/16 v0, 0x28

    new-array v3, v0, [C

    .line 611
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 612
    const/4 v0, 0x1

    .line 614
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v6

    move v6, v5

    move v5, v4

    .line 617
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v4

    .line 618
    const/4 v8, -0x1

    if-eq v4, v8, :cond_11

    .line 619
    int-to-char v8, v4

    .line 623
    array-length v4, v3

    if-ne v2, v4, :cond_19

    .line 624
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 625
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    :goto_1
    const/4 v3, 0x2

    if-ne v7, v3, :cond_18

    .line 629
    const/16 v3, 0x10

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 630
    if-ltz v3, :cond_1

    .line 631
    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v3

    .line 632
    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x4

    if-ge v3, v5, :cond_2

    move v5, v3

    move-object v3, v4

    .line 633
    goto :goto_0

    .line 635
    :cond_1
    const/4 v3, 0x4

    if-gt v5, v3, :cond_3

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v3

    .line 638
    :cond_3
    const/4 v7, 0x0

    .line 639
    add-int/lit8 v3, v2, 0x1

    int-to-char v10, v6

    aput-char v10, v4, v2

    .line 640
    const/16 v2, 0xa

    if-ne v8, v2, :cond_17

    move v2, v3

    move v3, v7

    .line 641
    :goto_2
    const/4 v7, 0x1

    if-ne v3, v7, :cond_6

    .line 645
    const/4 v7, 0x0

    .line 646
    sparse-switch v8, :sswitch_data_0

    .line 743
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 744
    const/4 v3, 0x4

    if-ne v7, v3, :cond_5

    .line 746
    const/4 v7, 0x0

    move v1, v2

    .line 748
    :cond_5
    add-int/lit8 v3, v2, 0x1

    aput-char v8, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    .line 648
    :sswitch_0
    const/4 v3, 0x3

    move v7, v3

    move-object v3, v4

    .line 649
    goto :goto_0

    .line 651
    :sswitch_1
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 652
    goto :goto_0

    .line 654
    :sswitch_2
    const/16 v0, 0x8

    move v8, v0

    .line 655
    goto :goto_3

    .line 657
    :sswitch_3
    const/16 v0, 0xc

    move v8, v0

    .line 658
    goto :goto_3

    .line 660
    :sswitch_4
    const/16 v0, 0xa

    move v8, v0

    .line 661
    goto :goto_3

    .line 663
    :sswitch_5
    const/16 v0, 0xd

    move v8, v0

    .line 664
    goto :goto_3

    .line 666
    :sswitch_6
    const/16 v0, 0x9

    move v8, v0

    .line 667
    goto :goto_3

    .line 669
    :sswitch_7
    const/4 v5, 0x2

    .line 670
    const/4 v3, 0x0

    move v6, v3

    move v7, v5

    move v5, v3

    move-object v3, v4

    .line 671
    goto :goto_0

    .line 674
    :cond_6
    sparse-switch v8, :sswitch_data_1

    .line 726
    :cond_7
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 727
    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    .line 728
    const/4 v3, 0x5

    .line 731
    :cond_8
    if-eqz v2, :cond_16

    if-eq v2, v1, :cond_16

    const/4 v7, 0x5

    if-eq v3, v7, :cond_16

    .line 732
    const/4 v7, -0x1

    if-ne v1, v7, :cond_f

    .line 735
    const/4 v3, 0x4

    move v7, v3

    move-object v3, v4

    .line 736
    goto/16 :goto_0

    .line 677
    :sswitch_8
    if-eqz v0, :cond_7

    .line 679
    :cond_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v7

    .line 680
    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    .line 681
    int-to-char v7, v7

    .line 684
    const/16 v8, 0xd

    if-eq v7, v8, :cond_16

    const/16 v8, 0xa

    if-ne v7, v8, :cond_9

    move v7, v3

    move-object v3, v4

    .line 685
    goto/16 :goto_0

    .line 692
    :sswitch_9
    const/4 v7, 0x3

    if-ne v3, v7, :cond_a

    .line 693
    const/4 v3, 0x5

    move v7, v3

    move-object v3, v4

    .line 694
    goto/16 :goto_0

    .line 698
    :cond_a
    :sswitch_a
    const/4 v3, 0x0

    .line 699
    const/4 v0, 0x1

    .line 700
    if-gtz v2, :cond_b

    if-nez v2, :cond_d

    if-nez v1, :cond_d

    .line 701
    :cond_b
    const/4 v7, -0x1

    if-ne v1, v7, :cond_c

    move v1, v2

    .line 704
    :cond_c
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v2}, Ljava/lang/String;-><init>([CII)V

    .line 705
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_d
    const/4 v1, -0x1

    .line 709
    const/4 v2, 0x0

    move v7, v3

    move-object v3, v4

    .line 710
    goto/16 :goto_0

    .line 712
    :sswitch_b
    const/4 v7, 0x4

    if-ne v3, v7, :cond_e

    move v1, v2

    .line 715
    :cond_e
    const/4 v3, 0x1

    move v7, v3

    move-object v3, v4

    .line 716
    goto/16 :goto_0

    .line 719
    :sswitch_c
    const/4 v7, -0x1

    if-ne v1, v7, :cond_7

    .line 720
    const/4 v1, 0x0

    move-object v3, v4

    move v7, v1

    move v1, v2

    .line 722
    goto/16 :goto_0

    :cond_f
    move v7, v3

    .line 739
    const/4 v0, 0x5

    if-eq v7, v0, :cond_10

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 740
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 750
    :cond_11
    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    const/4 v0, 0x4

    if-gt v5, v0, :cond_12

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_12
    const/4 v0, -0x1

    if-ne v1, v0, :cond_13

    if-lez v2, :cond_13

    move v1, v2

    .line 756
    :cond_13
    if-ltz v1, :cond_15

    .line 757
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 758
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    const/4 v1, 0x1

    if-ne v7, v1, :cond_14

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_14
    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :cond_15
    return-void

    :cond_16
    move v7, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_17
    move v2, v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_18
    move v3, v7

    goto/16 :goto_2

    :cond_19
    move-object v4, v3

    goto/16 :goto_1

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    .line 674
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/aa;Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 334
    const/4 v5, 0x0

    .line 335
    const/4 v1, 0x0

    .line 336
    const/4 v2, 0x0

    .line 337
    const/4 v4, 0x0

    .line 345
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 348
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p9

    invoke-static {v3, v6, v7, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 363
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 365
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_5

    .line 368
    :try_start_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 370
    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 372
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    :try_start_4
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v3, v8}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 375
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 376
    const/16 v2, 0x2000

    :try_start_6
    new-array v8, v2, [B

    .line 379
    const/4 v5, 0x0

    .line 380
    const/4 v2, 0x0

    .line 381
    :cond_0
    :goto_1
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 382
    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 383
    if-eqz p6, :cond_0

    .line 384
    add-int/2addr v5, v9

    .line 386
    sub-int v9, v5, v2

    move/from16 v0, p7

    mul-int/lit16 v10, v0, 0x400

    if-lt v9, v10, :cond_0

    .line 394
    :try_start_7
    move-object/from16 v0, p6

    invoke-interface {v0, p0, p1, v7, v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadProgress(Ljava/lang/String;III)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move v2, v5

    .line 400
    goto :goto_1

    .line 358
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    :try_start_8
    move-object/from16 v0, p9

    invoke-static {v3, p3, v6, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    goto :goto_0

    .line 396
    :catch_1
    move-exception v2

    .line 397
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got exception invoking IABTDownloadReceiver.onDownloadProgress() for package: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v9, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v5

    .line 400
    goto :goto_1

    .line 406
    :cond_1
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 408
    invoke-static/range {p4 .. p4}, Lcom/absolute/android/crypt/HexUtilities;->GetBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 411
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const-string v5, "Downloaded APK failed digest verification for algorithm: SHA256"

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 418
    :catch_2
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    :goto_2
    :try_start_a
    new-instance v4, Lcom/absolute/android/persistservice/DownloadApkException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Downloaded APK for package: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "failed - unsupported digest verification algorithmSHA256"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 430
    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    move-object v2, v6

    .line 431
    :goto_3
    if-eqz v2, :cond_2

    .line 432
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 437
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 438
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 439
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 443
    :cond_3
    :goto_5
    if-eqz v5, :cond_a

    .line 444
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 430
    :cond_4
    :goto_6
    throw v1

    .line 423
    :cond_5
    :try_start_e
    move-object/from16 v0, p8

    invoke-static {v6, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/net/HttpURLConnection;Lcom/absolute/android/persistservice/aa;)Ljava/lang/String;

    move-result-object v7

    .line 424
    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Server returned error in response to download APK HTTP request for URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " response: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v4, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 430
    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    .line 431
    :cond_6
    if-eqz v6, :cond_7

    .line 432
    :try_start_f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 437
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 438
    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 439
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 443
    :cond_8
    :goto_8
    if-eqz v4, :cond_b

    .line 444
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 450
    :cond_9
    :goto_9
    return-void

    :catch_3
    move-exception v2

    goto :goto_4

    .line 446
    :cond_a
    if-eqz v4, :cond_4

    .line 447
    :try_start_12
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_6

    :catch_5
    move-exception v2

    goto :goto_7

    .line 446
    :cond_b
    if-eqz v3, :cond_9

    .line 447
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v2

    goto :goto_5

    .line 430
    :catchall_2
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v11

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto/16 :goto_3

    .line 418
    :catch_9
    move-exception v3

    move-object v3, v5

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_2

    :catch_a
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method
