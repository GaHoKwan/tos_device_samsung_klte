.class public Landroid/webkitsec/WebSubPart;
.super Ljava/lang/Object;
.source "WebSubPart.java"


# instance fields
.field private mCid:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "contentUri"    # Ljava/lang/String;
    .param p6, "fileSize"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/webkitsec/WebSubPart;->mCid:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Landroid/webkitsec/WebSubPart;->mFileName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Landroid/webkitsec/WebSubPart;->mMimeType:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Landroid/webkitsec/WebSubPart;->mPath:Ljava/lang/String;

    .line 34
    iput-wide p6, p0, Landroid/webkitsec/WebSubPart;->mFileSize:J

    .line 35
    iput-object p5, p0, Landroid/webkitsec/WebSubPart;->mContentUri:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public contentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public fileSize()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/webkitsec/WebSubPart;->mFileSize:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/webkitsec/WebSubPart;->mPath:Ljava/lang/String;

    return-object v0
.end method
