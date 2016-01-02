.class public Landroid/media/audiofx/SoundAlive;
.super Landroid/media/audiofx/AudioEffect;
.source "SoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SoundAlive$1;,
        Landroid/media/audiofx/SoundAlive$Settings;,
        Landroid/media/audiofx/SoundAlive$BaseParameterListener;,
        Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_SQUAREUI_POSITION:I = 0xb

.field public static final PARAM_STRENGTH:I = 0xa

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SoundAlive"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "c4da1d1f-7cdf-42e2-ba60-efc7eb3508a3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 159
    sget-object v5, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 116
    iput-short v7, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 130
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 135
    iput-object v8, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 140
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    .line 161
    if-nez p2, :cond_0

    .line 162
    const-string v5, "SoundAlive"

    const-string v6, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfBands()S

    .line 167
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    .line 169
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-eqz v5, :cond_2

    .line 170
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    .line 171
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 172
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 173
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v7

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge v1, v5, :cond_2

    .line 175
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 176
    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/SoundAlive;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "length":I
    :goto_1
    aget-byte v5, v4, v2

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "SoundAlive"

    const-string v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 186
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 321
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 323
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 324
    aput p1, v0, v4

    .line 325
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 327
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 301
    new-array v0, v2, [I

    .line 302
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 303
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 304
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 305
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 307
    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    new-array v0, v4, [I

    .line 258
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 260
    .local v1, "result":[S
    aput v4, v0, v3

    .line 261
    aput p1, v0, v2

    .line 262
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 264
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 220
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 221
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 280
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 282
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 283
    aput p1, v0, v4

    .line 284
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 286
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 340
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 341
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eqz v2, :cond_0

    .line 198
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 205
    :goto_0
    return v2

    .line 200
    :cond_0
    new-array v0, v4, [I

    .line 201
    .local v0, "param":[I
    aput v3, v0, v3

    .line 202
    new-array v1, v4, [S

    .line 203
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 204
    aget-short v2, v1, v3

    iput-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 205
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    goto :goto_0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 369
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 370
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    .prologue
    .line 383
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProperties()Landroid/media/audiofx/SoundAlive$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 611
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 612
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/SoundAlive;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 613
    new-instance v2, Landroid/media/audiofx/SoundAlive$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/SoundAlive$Settings;-><init>()V

    .line 614
    .local v2, "settings":Landroid/media/audiofx/SoundAlive$Settings;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    .line 615
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    .line 616
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v3, :cond_0

    .line 618
    iget-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v1, v4}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    return-object v2
.end method

.method public getRoundedStrength(S)S
    .locals 5
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 425
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 427
    .local v1, "result":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 428
    aput p1, v0, v4

    .line 430
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 431
    aget-short v2, v1, v3

    return v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-array v0, v4, [I

    .line 238
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 240
    .local v1, "value":[S
    aput v4, v0, v2

    .line 241
    aput p1, v0, v3

    .line 242
    aput-short p2, v1, v2

    .line 243
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 244
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .prologue
    .line 520
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 522
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 523
    new-instance v0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V

    iput-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 524
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 526
    :cond_0
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/SoundAlive$Settings;)V
    .locals 7
    .param p1, "settings"    # Landroid/media/audiofx/SoundAlive$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 633
    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eq v2, v3, :cond_1

    .line 635
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_1
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 640
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v2, :cond_2

    .line 641
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SoundAlive;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 645
    return-void
.end method

.method public setSquarePostion(II)V
    .locals 5
    .param p1, "Sqrow"    # I
    .param p2, "Sqcol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
    new-array v0, v4, [I

    .line 446
    .local v0, "param":[I
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 448
    .local v1, "value":[I
    const/16 v2, 0xb

    aput v2, v0, v3

    .line 450
    aput p1, v1, v3

    .line 451
    aput p2, v1, v4

    .line 453
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 454
    return-void
.end method

.method public setStrength(SS)V
    .locals 5
    .param p1, "type"    # S
    .param p2, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 405
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 407
    .local v1, "value":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 408
    aput p1, v0, v4

    .line 409
    aput-short p2, v1, v3

    .line 411
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 412
    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SoundAlive;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 356
    return-void
.end method
