.class Landroid/webkitsec/GeolocationPermissionsClassic$1;
.super Landroid/os/Handler;
.source "GeolocationPermissionsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/GeolocationPermissionsClassic;->createUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/GeolocationPermissionsClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/GeolocationPermissionsClassic;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Landroid/webkitsec/GeolocationPermissionsClassic$1;->this$0:Landroid/webkitsec/GeolocationPermissionsClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 75
    .local v4, "values":Ljava/util/Map;
    const-string/jumbo v5, "origins"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 76
    .local v3, "origins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "callback"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkitsec/ValueCallback;

    .line 77
    .local v2, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2, v3}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v2    # "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "origins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "values":Ljava/util/Map;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 81
    .restart local v4    # "values":Ljava/util/Map;
    const-string v5, "allowed"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 82
    .local v0, "allowed":Ljava/lang/Boolean;
    const-string v5, "callback"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkitsec/ValueCallback;

    .line 83
    .local v1, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-interface {v1, v0}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
