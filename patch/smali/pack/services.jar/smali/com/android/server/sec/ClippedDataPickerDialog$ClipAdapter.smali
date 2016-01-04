.class public Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipAdapter"
.end annotation


# instance fields
.field layoutAni:Landroid/view/animation/Animation;

.field mBody:Landroid/widget/TextView;

.field private mChildViewIDs:[I

.field private mLayoutInflator:Landroid/view/LayoutInflater;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 2

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1460
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    .line 1466
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 1467
    return-void

    .line 1460
    :array_0
    .array-data 4
        0x1020402
        0x1020404
        0x1020403
        0x1020405
    .end array-data
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v11, 0x1

    .line 1660
    const/4 v7, 0x1

    .line 1661
    .local v7, "sampleSize":I
    const/4 v2, 0x0

    .line 1662
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v1, ""

    .line 1664
    .local v1, "bitmapPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1683
    .end local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    :pswitch_0
    if-nez v1, :cond_1

    .line 1684
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardServiceEx"

    const-string v9, "return empty data because of bitmapPath"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, v2

    .line 1755
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .local v3, "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-object v3

    .line 1669
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 1670
    goto :goto_0

    .line 1673
    .restart local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_2
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v1

    .line 1674
    goto :goto_0

    .line 1676
    .restart local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local p1    # "clipData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v1

    .line 1677
    goto :goto_0

    .line 1688
    :cond_1
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1691
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const-string v8, "bmp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1695
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1700
    :try_start_0
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardServiceEx"

    const-string v9, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_3
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1708
    :cond_4
    :goto_2
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outMimeType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_5
    iget-object v6, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 1711
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz v6, :cond_9

    const-string v8, "bmp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1715
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmapOption.outWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bitmapOption.outHieght:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_6
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGridItemWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mGridItemHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_7
    :goto_3
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v8, v7

    if-lt v8, p2, :cond_8

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, v7

    if-lt v8, p3, :cond_8

    .line 1720
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1702
    .end local v6    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1704
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1722
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 1725
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_9
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sampleSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_a
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1732
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1736
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1737
    const-string v8, "previewhtemlclipboarditem"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1738
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1749
    :cond_b
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    .line 1751
    .local v4, "degree":I
    if-nez v4, :cond_d

    move-object v3, v2

    .line 1752
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1740
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "degree":I
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_4

    .line 1742
    :catch_1
    move-exception v5

    .line 1743
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "ClipboardServiceEx"

    const-string v9, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1754
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "degree":I
    :cond_d
    invoke-virtual {p0, v2, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 1755
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1664
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDataTypeFromView(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1981
    const/4 v0, 0x0

    .line 1983
    .local v0, "ret":I
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1985
    const/4 v0, 0x2

    .line 1996
    :cond_0
    :goto_0
    return v0

    .line 1987
    :cond_1
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1989
    const/4 v0, 0x3

    goto :goto_0

    .line 1991
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1993
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 1762
    const/4 v0, 0x0

    .line 1763
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 1765
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 1769
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1770
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1772
    .local v4, "orientation":I
    if-eq v4, v7, :cond_1

    .line 1774
    packed-switch v4, :pswitch_data_0

    .line 1787
    .end local v4    # "orientation":I
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 1766
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1776
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1777
    goto :goto_1

    .line 1779
    :pswitch_2
    const/16 v0, 0xb4

    .line 1780
    goto :goto_1

    .line 1782
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 1774
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFilename(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1955
    const-string v7, ""

    .line 1956
    .local v7, "fileName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1957
    .local v9, "path":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1959
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1960
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1961
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1962
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1965
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    if-nez v9, :cond_1

    .line 1966
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1968
    :cond_1
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1970
    .local v8, "parts":[Ljava/lang/String;
    array-length v0, v8

    if-lez v0, :cond_2

    .line 1971
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v7, v8, v0

    .line 1975
    :goto_0
    return-object v7

    .line 1973
    :cond_2
    move-object v7, v9

    goto :goto_0
.end method

.method private setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "ItemViewParent"    # Landroid/view/View;

    .prologue
    .line 1811
    const/4 v4, 0x0

    .line 1813
    .local v4, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1818
    :goto_0
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_1

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v13, :cond_1

    move-object/from16 v13, p1

    .line 1820
    check-cast v13, Landroid/widget/TextView;

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1824
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1826
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1952
    :cond_0
    :goto_1
    return-void

    .line 1814
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v7

    .line 1815
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1829
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/ImageView;

    if-eqz v13, :cond_3

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v13, :cond_3

    .line 1834
    const/4 v3, 0x0

    .line 1836
    .local v3, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v13, v13, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1838
    if-eqz v3, :cond_2

    move-object/from16 v13, p1

    .line 1839
    check-cast v13, Landroid/widget/ImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v13, p1

    .line 1840
    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1844
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 1845
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1847
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1850
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_8

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v13, :cond_8

    move-object/from16 v10, p1

    .line 1854
    check-cast v10, Landroid/widget/TextView;

    .local v10, "tv":Landroid/widget/TextView;
    move-object v13, v4

    .line 1856
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    const/4 v3, 0x0

    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object v13, v4

    .line 1859
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v8

    .line 1861
    .local v8, "firstImagePath":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v8, :cond_6

    .line 1862
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_4

    const-string v13, "ClipboardServiceEx"

    const-string v14, "Get first image from file using thumbnail"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v13, v13, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1870
    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_2
    if-eqz v3, :cond_5

    .line 1872
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v2, v13, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1874
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v15, v15, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1875
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1877
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v2, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1888
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1889
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1890
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1865
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "ClipboardServiceEx"

    const-string v14, "Get first image from html tag"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_7
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v13, v13, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v4, v13, v14}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 1895
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v8    # "firstImagePath":Ljava/lang/String;
    .end local v10    # "tv":Landroid/widget/TextView;
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_9

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v13, :cond_9

    move-object/from16 v13, p1

    .line 1896
    check-cast v13, Landroid/widget/TextView;

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1899
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1900
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1902
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_9
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/ImageView;

    if-eqz v13, :cond_b

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v13, :cond_b

    .line 1903
    const/4 v3, 0x0

    .line 1905
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v13, v13, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1907
    if-eqz v3, :cond_a

    move-object/from16 v13, p1

    .line 1908
    check-cast v13, Landroid/widget/ImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v13, p1

    .line 1909
    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1913
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 1914
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1916
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1918
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/TextView;

    if-eqz v13, :cond_c

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-eqz v13, :cond_c

    move-object/from16 v13, p1

    .line 1919
    check-cast v13, Landroid/widget/TextView;

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 1922
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1923
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1925
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_c
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_10

    instance-of v13, v4, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    if-eqz v13, :cond_10

    move-object/from16 v9, p1

    .line 1926
    check-cast v9, Landroid/widget/LinearLayout;

    .line 1927
    .local v9, "layout":Landroid/widget/LinearLayout;
    const v13, 0x1020406

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1928
    .local v6, "contentNameView":Landroid/widget/TextView;
    const v13, 0x1020407

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1929
    .local v5, "contentCountView":Landroid/widget/TextView;
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v12

    .line 1930
    .local v12, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .line 1931
    .local v1, "N":I
    if-eqz v12, :cond_d

    .line 1932
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1934
    :cond_d
    if-eqz v1, :cond_e

    .line 1935
    const/4 v13, 0x1

    if-ne v1, v13, :cond_f

    .line 1936
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 1937
    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1942
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1130019

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v1, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 1946
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1947
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1939
    :cond_f
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 1940
    .restart local v11    # "uri":Landroid/net/Uri;
    const v13, 0x1040b54

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1950
    .end local v1    # "N":I
    .end local v5    # "contentCountView":Landroid/widget/TextView;
    .end local v6    # "contentNameView":Landroid/widget/TextView;
    .end local v9    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v4    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_10
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "ClipboardServiceEx"

    const-string v14, "Not Supported View type yet"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setOnClickListenerToBodyView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2148
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2176
    return-void
.end method

.method private setOnTouchListenerToWebView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2181
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2216
    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "clearFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2001
    if-eqz p3, :cond_2

    .line 2002
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    array-length v4, v13

    .line 2004
    .local v4, "cnt":I
    :cond_0
    :goto_0
    if-lez v4, :cond_2

    .line 2005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    add-int/lit8 v4, v4, -0x1

    aget v13, v13, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2006
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2008
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2009
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 2011
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 2016
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "cnt":I
    :cond_2
    const/4 v1, 0x0

    .line 2018
    .local v1, "BodyView":Landroid/view/View;
    const/4 v2, 0x0

    .line 2020
    .local v2, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2026
    :goto_1
    if-nez v2, :cond_4

    .line 2027
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cbData does not exist...position : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_3
    const/4 v13, 0x0

    .line 2143
    .end local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_2
    return-object v13

    .line 2021
    .restart local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v5

    .line 2022
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2031
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 2139
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_5

    const-string v13, "ClipboardServiceEx"

    const-string v14, "current Item to be shown is invalid item type"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :goto_3
    move-object v13, v1

    .line 2143
    goto :goto_2

    .line 2034
    .restart local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    const v13, 0x1020402

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2035
    .local v9, "tv":Landroid/widget/TextView;
    move-object v1, v9

    .line 2036
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2037
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 2044
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_3

    .line 2041
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v13}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    goto :goto_4

    .line 2051
    .end local v9    # "tv":Landroid/widget/TextView;
    :pswitch_1
    const v13, 0x1020404

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2052
    .local v10, "tvHTML":Landroid/widget/TextView;
    move-object v1, v10

    .line 2053
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    .line 2054
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    .line 2067
    :cond_8
    if-eqz p3, :cond_5

    .line 2068
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 2087
    .end local v10    # "tvHTML":Landroid/widget/TextView;
    :pswitch_2
    const v13, 0x1020403

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2088
    .local v7, "iv":Landroid/widget/ImageView;
    move-object v1, v7

    .line 2090
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2092
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2093
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2100
    .end local v7    # "iv":Landroid/widget/ImageView;
    :pswitch_3
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v8

    .line 2101
    .local v8, "previewImgPath":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2102
    const v13, 0x1020403

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2103
    .local v12, "uriv":Landroid/widget/ImageView;
    move-object v1, v12

    .line 2104
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2105
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2106
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2110
    .end local v12    # "uriv":Landroid/widget/ImageView;
    :cond_9
    const v13, 0x1020402

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2111
    .local v12, "uriv":Landroid/widget/TextView;
    move-object v1, v12

    .line 2112
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2113
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2114
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2121
    .end local v8    # "previewImgPath":Ljava/lang/String;
    .end local v12    # "uriv":Landroid/widget/TextView;
    .restart local v2    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_4
    const v13, 0x1020402

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2122
    .local v6, "intentv":Landroid/widget/TextView;
    move-object v1, v6

    .line 2123
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2124
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2130
    .end local v6    # "intentv":Landroid/widget/TextView;
    :pswitch_5
    const v13, 0x1020405

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2131
    .local v11, "urimultiv":Landroid/widget/LinearLayout;
    move-object v1, v11

    .line 2132
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 2133
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v13, v1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2031
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 5

    .prologue
    .line 1570
    const/4 v1, 0x0

    .line 1573
    .local v1, "size":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 1574
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :cond_0
    :goto_0
    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    const/16 v1, 0x14

    .line 1582
    :cond_1
    return v1

    .line 1575
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1590
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1596
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1591
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1600
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 1471
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView()position :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    const/4 v3, 0x0

    .line 1476
    .local v3, "itemView":Landroid/view/View;
    const/4 v0, 0x0

    .line 1478
    .local v0, "bodyView":Landroid/view/View;
    if-nez p2, :cond_6

    .line 1479
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v5, 0x10900e9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1482
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1517
    :goto_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    :goto_1
    if-eqz v0, :cond_7

    .line 1541
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V

    .line 1545
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1547
    if-eqz v0, :cond_2

    .line 1548
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1551
    :cond_2
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->showProtectedMarker(Landroid/view/View;I)V

    .line 1553
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1554
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1557
    :cond_3
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1202(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 1559
    :cond_4
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1200(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    .line 1560
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0098

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1561
    .local v2, "fadeIn":Landroid/view/animation/Animation;
    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1565
    .end local v2    # "fadeIn":Landroid/view/animation/Animation;
    :cond_5
    return-object v3

    .line 1483
    :catch_0
    move-exception v1

    .line 1485
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1519
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object v3, p2

    .line 1522
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1523
    :catch_1
    move-exception v1

    .line 1524
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1543
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ClipboardServiceEx"

    const-string v5, " Item View is null !!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1791
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1792
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1793
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1796
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1797
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_0

    .line 1798
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    move-object p1, v7

    .line 1806
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 1802
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 1803
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
