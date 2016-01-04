.class public Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llidroid/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfo"
.end annotation


# instance fields
.field public mDensity:I

.field public mInput:Ljava/io/InputStream;

.field public mSize:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 491
    iput-wide p2, p0, Llidroid/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    .line 492
    return-void
.end method
