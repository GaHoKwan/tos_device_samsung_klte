.class public Landroid/content/res/LidroidTypedArray;
.super Landroid/content/res/TypedArray;
.source "LidroidTypedArray.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LidroidTypedArray"


# instance fields
.field private mIsLidroidResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 10
    invoke-virtual {p0}, Landroid/content/res/LidroidTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/LidroidResources;

    iput-boolean v0, p0, Landroid/content/res/LidroidTypedArray;->mIsLidroidResources:Z

    .line 14
    return-void
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "cs":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Landroid/content/res/LidroidTypedArray;->mIsLidroidResources:Z

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Landroid/content/res/LidroidTypedArray;->mData:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 20
    iget-object v2, p0, Landroid/content/res/LidroidTypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x3

    aget v1, v2, v3

    .line 21
    .local v1, "type":I
    invoke-virtual {p0}, Landroid/content/res/LidroidTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v2, Landroid/content/res/LidroidResources;

    invoke-virtual {v2, v1}, Landroid/content/res/LidroidResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 29
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 33
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/LidroidTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 34
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 41
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/LidroidTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method
