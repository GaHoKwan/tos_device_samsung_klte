.class public abstract Landroid/os/IHardwareService$Stub;
.super Landroid/os/Binder;
.source "IHardwareService.java"

# interfaces
.implements Landroid/os/IHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHardwareService"

.field static final TRANSACTION_getFlashlightEnabled:I = 0x1

.field static final TRANSACTION_setFlashlightEnabled:I = 0x2

.field static final TRANSACTION_turnOffButtonLightOneShot:I = 0x4

.field static final TRANSACTION_turnOnButtonLightOneShot:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IHardwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.os.IHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHardwareService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IHardwareService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/IHardwareService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "android.os.IHardwareService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.os.IHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->getFlashlightEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "android.os.IHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setFlashlightEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v2, "android.os.IHardwareService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->turnOnButtonLightOneShot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v2, "android.os.IHardwareService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->turnOffButtonLightOneShot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
