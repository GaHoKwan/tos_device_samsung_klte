.class public Lcom/android/server/am/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# instance fields
.field isSecretMode:Z

.field lastDescription:Ljava/lang/CharSequence;

.field lastThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method disposeThumbnail()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    .line 29
    return-void
.end method
