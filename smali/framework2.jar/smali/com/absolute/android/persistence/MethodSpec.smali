.class public Lcom/absolute/android/persistence/MethodSpec;
.super Ljava/lang/Object;
.source "MethodSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/MethodSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_apkOrJarPath:Ljava/lang/String;

.field private m_argTypes:[Ljava/lang/Class;

.field private m_argValues:[Ljava/lang/Object;

.field private m_className:Ljava/lang/String;

.field private m_methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/absolute/android/persistence/MethodSpec$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/MethodSpec$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    .line 157
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 158
    .local v0, "parent":Ljava/lang/ClassLoader;
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 161
    .local v1, "pathClassloader":Ldalvik/system/PathClassLoader;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lcom/absolute/android/persistence/MethodSpec;->loadArgumentTypes()V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodSpec$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/MethodSpec$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/MethodSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "apkOrJarPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "argValues"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "apk or jar path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    iput-object p1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lcom/absolute/android/persistence/MethodSpec;->loadArgumentTypes()V

    .line 69
    return-void
.end method

.method private loadArgumentTypes()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    iput-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getApkOrJarPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArgTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getArgValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 136
    return-void
.end method
