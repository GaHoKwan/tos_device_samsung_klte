.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_0

    .line 94
    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 65
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 69
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 73
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 77
    :pswitch_3
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 78
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 81
    :pswitch_4
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 82
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 86
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 87
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
