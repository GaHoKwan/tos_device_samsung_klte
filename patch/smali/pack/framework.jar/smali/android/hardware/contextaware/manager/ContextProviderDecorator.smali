.class abstract Landroid/hardware/contextaware/manager/ContextProviderDecorator;
.super Landroid/hardware/contextaware/manager/ContextComponent;
.source "ContextProviderDecorator.java"


# instance fields
.field protected final mProvider:Landroid/hardware/contextaware/manager/ContextComponent;


# direct methods
.method protected constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Landroid/hardware/contextaware/manager/ContextComponent;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextComponent;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    .line 35
    return-void
.end method


# virtual methods
.method public final getContextProvider()Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextProvider()Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public abstract start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method public abstract stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method
