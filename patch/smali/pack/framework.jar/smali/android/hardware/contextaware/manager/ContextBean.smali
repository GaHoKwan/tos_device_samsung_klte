.class public Landroid/hardware/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextBean;->clearContextBean()V

    .line 35
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final clearContextBean()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    .line 261
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final getContextBundleForDisplay()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 104
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final putContext(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final putContext(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final putContext(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final putContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 220
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 226
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 227
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 228
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 198
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 204
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 205
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 206
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 176
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 182
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 183
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 184
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 242
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 248
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 249
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 250
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 154
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 160
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 161
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 162
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContextForDisplay(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 323
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 311
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 299
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 335
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 287
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 421
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 425
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 426
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContextForDisplay(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 401
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 405
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 406
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContextForDisplay(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 382
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 386
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 387
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContextForDisplay(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 440
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 444
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 445
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final putContextForDisplay(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 363
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 367
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 368
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
