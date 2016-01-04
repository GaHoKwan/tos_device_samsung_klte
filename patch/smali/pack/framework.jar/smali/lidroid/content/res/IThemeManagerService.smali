.class public interface abstract Llidroid/content/res/IThemeManagerService;
.super Ljava/lang/Object;
.source "IThemeManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llidroid/content/res/IThemeManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearCustomizedIcon()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract saveCustomizedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
