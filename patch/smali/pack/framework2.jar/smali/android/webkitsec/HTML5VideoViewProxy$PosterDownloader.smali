.class final Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosterDownloader"
.end annotation


# static fields
.field private static mQueueRefCount:I

.field private static mRequestQueue:Landroid/net/http/RequestQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Landroid/net/http/Headers;

.field private mPosterBytes:Ljava/io/ByteArrayOutputStream;

.field private final mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iput-object p2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 581
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    .line 582
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method static synthetic access$500(Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 555
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 555
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    .prologue
    .line 555
    iget v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :goto_0
    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 687
    :cond_0
    return-void

    .line 684
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    throw v0

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private releaseQueue()V
    .locals 1

    .prologue
    .line 698
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    if-nez v0, :cond_0

    .line 702
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    .line 703
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    goto :goto_0
.end method

.method private retainQueue()V
    .locals 2

    .prologue
    .line 691
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 694
    :cond_0
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mQueueRefCount:I

    .line 695
    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 606
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->releaseQueue()V

    .line 607
    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 663
    return-void
.end method

.method public data([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 624
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 628
    return-void
.end method

.method public endData()V
    .locals 5

    .prologue
    .line 632
    iget v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 633
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 634
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mPosterBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 636
    .local v1, "poster":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    # invokes: Landroid/webkitsec/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1}, Landroid/webkitsec/HTML5VideoViewProxy;->access$400(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V

    .line 638
    .end local v1    # "poster":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 658
    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    iget v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    iget v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    .line 642
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader$1;

    invoke-direct {v3, p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader$1;-><init>(Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    goto :goto_1
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cleanup()V

    .line 668
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    .line 619
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mHeaders:Landroid/net/http/Headers;

    .line 620
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 585
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->retainQueue()V

    .line 587
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "protocol":Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    :cond_2
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;

    goto :goto_0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .prologue
    .line 614
    iput p3, p0, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I

    .line 615
    return-void
.end method
