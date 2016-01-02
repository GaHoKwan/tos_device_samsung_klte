.class public interface abstract Lcom/samsung/android/glancecard/IGlanceCardChangedListener;
.super Ljava/lang/Object;
.source "IGlanceCardChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glancecard/IGlanceCardChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceivedAction(IILandroid/os/Bundle;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
