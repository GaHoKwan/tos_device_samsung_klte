.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataMultipleUri.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public GetMultipleUri()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 126
    const/4 v2, 0x0

    .line 134
    :cond_0
    return-object v2

    .line 128
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "multiUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 58
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 83
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_0
    return v1

    .line 61
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    move v1, v0

    .line 83
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_0

    .line 63
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    const/4 v0, 0x0

    .line 64
    goto :goto_1

    .line 66
    :pswitch_1
    const/4 v0, 0x0

    .line 67
    goto :goto_1

    .line 69
    :pswitch_2
    const/4 v0, 0x0

    .line 70
    goto :goto_1

    .line 72
    :pswitch_3
    const/4 v0, 0x0

    .line 73
    goto :goto_1

    .line 75
    :pswitch_4
    const/4 v0, 0x0

    .line 76
    goto :goto_1

    .line 78
    :pswitch_5
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->SetMultipleUriInternal(Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public SetMultipleUri(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_0

    .line 97
    const/4 v3, 0x0

    .line 104
    :goto_0
    return v3

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 101
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 102
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public SetMultipleUriInternal(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 116
    :goto_0
    return v3

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 111
    .local v0, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 113
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "uri":Ljava/lang/String;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 144
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "multiple uri equals"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 156
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_0
    return v1

    .line 149
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_1
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    if-nez v3, :cond_2

    move v1, v0

    .line 150
    .restart local v1    # "Result":I
    goto :goto_0

    .end local v1    # "Result":I
    :cond_2
    move-object v2, p1

    .line 152
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 154
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 156
    .restart local v1    # "Result":I
    goto :goto_0

    .line 154
    .end local v1    # "Result":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    .line 170
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this MultipleUri class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 161
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "ClipboardServiceEx"

    const-string v1, "Multiple Uri write to parcel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    return-void
.end method
