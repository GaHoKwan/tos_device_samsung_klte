.class public abstract Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowServiceCallback.java"

# interfaces
.implements Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

.field static final TRANSACTION_onArrangeStateUpdate:I = 0x2

.field static final TRANSACTION_onMinimizeUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->onMinimizeUpdate(FF)V

    goto :goto_0

    :sswitch_2
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->onArrangeStateUpdate(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
