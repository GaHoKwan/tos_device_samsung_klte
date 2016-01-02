.class public Landroid/app/ExtraAttr$Owner;
.super Ljava/lang/Object;
.source "SpellScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExtraAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Owner"
.end annotation


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field private mLocalHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    .line 2137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addExtraAttr(Landroid/app/ExtraAttr;)V
    .locals 3
    .param p1, "attr"    # Landroid/app/ExtraAttr;

    .prologue
    .line 2156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2160
    :cond_1
    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getLabelId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2161
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :goto_1
    iget v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    goto :goto_0

    .line 2163
    :cond_2
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ExtraAttr;->getLabelId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 2204
    instance-of v7, p1, Landroid/app/ExtraAttr$Owner;

    if-nez v7, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 2208
    check-cast v3, Landroid/app/ExtraAttr$Owner;

    .line 2210
    .local v3, "other":Landroid/app/ExtraAttr$Owner;
    iget v7, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    iget v8, v3, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v7

    iget-object v8, v3, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2215
    iget-object v7, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2216
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2218
    .local v2, "objValue":Ljava/lang/Object;
    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 2219
    iget-object v7, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v3, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 2224
    :cond_3
    iget-object v7, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2225
    .local v5, "value":Ljava/lang/String;
    iget-object v7, v3, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2227
    .local v4, "otherValue":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    if-nez v5, :cond_5

    if-nez v4, :cond_0

    .line 2232
    :cond_5
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 2237
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "objValue":Ljava/lang/Object;
    .end local v4    # "otherValue":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method getExtraAttrsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2171
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2172
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2173
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2178
    iget-object v4, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2179
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 2180
    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2182
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2183
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2184
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 2185
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2187
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2192
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2148
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExtraString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2140
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2198
    iget v0, p0, Landroid/app/ExtraAttr$Owner;->mLocalHash:I

    return v0
.end method
