.class public Landroid/webkitsec/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/JsDialogHelper$1;,
        Landroid/webkitsec/JsDialogHelper$PositiveListener;,
        Landroid/webkitsec/JsDialogHelper$CancelListener;,
        Landroid/webkitsec/JsDialogHelper$KeyListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkitsec/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkitsec/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    .line 59
    iput-object p3, p0, Landroid/webkitsec/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 61
    iput p2, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    .line 62
    iput-object p5, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkitsec/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    .line 67
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    .line 70
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/JsDialogHelper;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    return-object v0
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 181
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkitsec/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const v2, 0x10405f0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    .line 186
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "alertUrl":Ljava/net/URL;
    const v2, 0x10405ef

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 190
    .end local v0    # "alertUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkitsec/WebChromeClient;Landroid/webkitsec/WebView;)Z
    .locals 6
    .param p1, "client"    # Landroid/webkitsec/WebChromeClient;
    .param p2, "webView"    # Landroid/webkitsec/WebView;

    .prologue
    .line 74
    iget v0, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkitsec/WebChromeClient;->onJsAlert(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 78
    :pswitch_1
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkitsec/WebChromeClient;->onJsConfirm(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z

    move-result v0

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkitsec/WebChromeClient;->onJsBeforeUnload(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v2, p0, Landroid/webkitsec/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkitsec/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/WebChromeClient;->onJsPrompt(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsPromptResult;)Z

    move-result v0

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 89
    invoke-static {p1}, Landroid/webkitsec/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 90
    const-string v7, "JsDialogHelper"

    const-string v8, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v7, p0, Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v7}, Landroid/webkitsec/JsResult;->cancel()V

    .line 133
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v7, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 98
    const v7, 0x10405f1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "title":Ljava/lang/String;
    const v7, 0x10405f4

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "displayMessage":Ljava/lang/String;
    const v4, 0x10405f2

    .line 102
    .local v4, "positiveTextId":I
    const v3, 0x10405f3

    .line 109
    .local v3, "negativeTextId":I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    new-instance v7, Landroid/webkitsec/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v11}, Landroid/webkitsec/JsDialogHelper$CancelListener;-><init>(Landroid/webkitsec/JsDialogHelper;Landroid/webkitsec/JsDialogHelper$1;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    iget v7, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v7, Landroid/webkitsec/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v11}, Landroid/webkitsec/JsDialogHelper$PositiveListener;-><init>(Landroid/webkitsec/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    :goto_2
    iget v7, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    if-eq v7, v12, :cond_1

    .line 125
    new-instance v7, Landroid/webkitsec/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v11}, Landroid/webkitsec/JsDialogHelper$CancelListener;-><init>(Landroid/webkitsec/JsDialogHelper;Landroid/webkitsec/JsDialogHelper$1;)V

    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    :cond_1
    iget v7, p0, Landroid/webkitsec/JsDialogHelper;->mType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 129
    new-instance v7, Landroid/webkitsec/JsDialogHelper$KeyListener;

    invoke-direct {v7, p0, v11}, Landroid/webkitsec/JsDialogHelper$KeyListener;-><init>(Landroid/webkitsec/JsDialogHelper;Landroid/webkitsec/JsDialogHelper$1;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 104
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v3    # "negativeTextId":I
    .end local v4    # "positiveTextId":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Landroid/webkitsec/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 106
    .restart local v1    # "displayMessage":Ljava/lang/String;
    const v4, 0x104000a

    .line 107
    .restart local v4    # "positiveTextId":I
    const/high16 v3, 0x1040000

    .restart local v3    # "negativeTextId":I
    goto :goto_1

    .line 116
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1090065

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 118
    .local v6, "view":Landroid/view/View;
    const v7, 0x1020332

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 119
    .local v2, "edit":Landroid/widget/EditText;
    iget-object v7, p0, Landroid/webkitsec/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v7, Landroid/webkitsec/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v2}, Landroid/webkitsec/JsDialogHelper$PositiveListener;-><init>(Landroid/webkitsec/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/webkitsec/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
