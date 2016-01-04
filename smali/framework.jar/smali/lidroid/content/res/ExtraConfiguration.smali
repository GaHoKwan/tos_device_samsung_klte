.class public final Llidroid/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_THEME_CHANGED:I = -0x80000000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Llidroid/content/res/ExtraConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKG_CONTACTS_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final PKG_MMS_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final PKG_SETTINGS_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final PKG_SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final THEME_FLAG_ALL:I = 0x7b007f

.field public static final THEME_FLAG_ANIM:I = 0x2

.field public static final THEME_FLAG_AUDIO_EFFECT:I = 0x100000

.field public static final THEME_FLAG_BOOT_ANIMATION:I = 0x20000

.field public static final THEME_FLAG_BOOT_AUDIO:I = 0x400000

.field public static final THEME_FLAG_CONTACTS:I = 0x20

.field public static final THEME_FLAG_FONT:I = 0x80000

.field public static final THEME_FLAG_FRAMEWORK:I = 0x1

.field public static final THEME_FLAG_ICONS:I = 0x4

.field public static final THEME_FLAG_LOCKSCREEN:I = 0x8

.field public static final THEME_FLAG_MMS:I = 0x40

.field public static final THEME_FLAG_NOTIFICATION:I = 0x200000

.field public static final THEME_FLAG_RINGTONE:I = 0x400000

.field public static final THEME_FLAG_SETTINGS:I = 0x80

.field public static final THEME_FLAG_SYSTEMUI:I = 0x10

.field public static final THEME_FLAG_WALLPAPER:I = 0x10000


# instance fields
.field public themeChanged:I

.field public themeChangedFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Llidroid/content/res/ExtraConfiguration$1;

    invoke-direct {v0}, Llidroid/content/res/ExtraConfiguration$1;-><init>()V

    sput-object v0, Llidroid/content/res/ExtraConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Llidroid/content/res/ExtraConfiguration;->setToDefaults()V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Llidroid/content/res/ExtraConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Llidroid/content/res/ExtraConfiguration$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Llidroid/content/res/ExtraConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Llidroid/content/res/ExtraConfiguration;)V
    .locals 0
    .param p1, "o"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration;->setTo(Llidroid/content/res/ExtraConfiguration;)V

    .line 56
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .prologue
    .line 144
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needReloadPreloaded(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 64
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartContacts(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 68
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 80
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartPackage(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 88
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Llidroid/content/res/ExtraConfiguration;->needRestartSettings(I)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p1}, Llidroid/content/res/ExtraConfiguration;->needRestartContacts(I)Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {p1}, Llidroid/content/res/ExtraConfiguration;->needRestartMms(I)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-static {p1}, Llidroid/content/res/ExtraConfiguration;->needRestartSystemUI(I)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 84
    and-int/lit16 v0, p0, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSystemUI(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 76
    and-int/lit8 v0, p0, 0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 173
    instance-of v0, p1, Llidroid/content/res/ExtraConfiguration;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Llidroid/content/res/ExtraConfiguration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration;->compareToInner(Llidroid/content/res/ExtraConfiguration;)I

    move-result v0

    .line 176
    :goto_0
    return v0

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public compareToInner(Llidroid/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "that"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    .line 181
    iget v1, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    sub-int v0, v1, v2

    .line 182
    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 184
    .end local v0    # "n":I
    :goto_0
    return v0

    .restart local v0    # "n":I
    :cond_0
    iget v1, p1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    iget v2, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Llidroid/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "delta"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "changed":I
    iget v1, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 137
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 140
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 195
    :try_start_0
    check-cast p1, Llidroid/content/res/ExtraConfiguration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration;->equals(Llidroid/content/res/ExtraConfiguration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Llidroid/content/res/ExtraConfiguration;)Z
    .locals 3
    .param p1, "that"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    if-nez p1, :cond_1

    move v0, v1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-eq p1, p0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 203
    const/16 v0, 0x11

    .line 204
    .local v0, "result":I
    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit16 v0, v1, 0x20f

    .line 205
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    add-int v0, v1, v2

    .line 206
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 155
    return-void
.end method

.method public setTo(Llidroid/content/res/ExtraConfiguration;)V
    .locals 1
    .param p1, "o"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    .line 102
    iget v0, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    .line 103
    iget v0, p1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 104
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    .line 118
    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Llidroid/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "delta"    # Llidroid/content/res/ExtraConfiguration;

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "changed":I
    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    iget v2, p1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    if-eq v1, v2, :cond_0

    .line 124
    iget v1, p1, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    iput v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 126
    :cond_0
    iget v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    if-eq v1, v2, :cond_1

    .line 127
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 128
    iget v1, p1, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    .line 131
    :cond_1
    return v0
.end method

.method public updateTheme(I)V
    .locals 1
    .param p1, "changedFlags"    # I

    .prologue
    .line 59
    iget v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    .line 60
    iput p1, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 148
    iget v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Llidroid/content/res/ExtraConfiguration;->themeChangedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
