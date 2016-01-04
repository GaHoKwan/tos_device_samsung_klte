.class Landroid/webkitsec/WebViewCore$TextInputData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInputData"
.end annotation


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mStart:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "selectTextPtr"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    iput p1, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mStart:I

    .line 1145
    iput p2, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mEnd:I

    .line 1146
    iput-object p4, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    .line 1147
    iput p3, p0, Landroid/webkitsec/WebViewCore$TextInputData;->mSelectTextPtr:I

    .line 1148
    return-void
.end method
