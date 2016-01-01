.class public abstract Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.super Landroid/os/Binder;
.source "IABTPersistedFile.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistedFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistedFile"

.field static final TRANSACTION_close:I = 0x6

.field static final TRANSACTION_delete:I = 0x7

.field static final TRANSACTION_exists:I = 0x1

.field static final TRANSACTION_read:I = 0x4

.field static final TRANSACTION_skip:I = 0x5

.field static final TRANSACTION_write:I = 0x2

.field static final TRANSACTION_writeWithCount:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->exists()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->write([B)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->writeWithCount([BII)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->read([B)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :sswitch_5
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->skip(J)J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :sswitch_6
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v8, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->delete()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
