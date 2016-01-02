.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public dateTaken:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:J

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public height:J

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeTypeEnum:I

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1621
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1622
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1623
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1624
    iput-wide v1, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1625
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1626
    const/4 v0, 0x3

    iput v0, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1627
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1628
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MediaObject;->year:I

    .line 1630
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1631
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1632
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1633
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1634
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1635
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1636
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1637
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1638
    iput-wide v1, p0, Landroid/mtp/MediaObject;->width:J

    .line 1639
    iput-wide v1, p0, Landroid/mtp/MediaObject;->height:J

    .line 1640
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1644
    const-string v0, "MTPJNIInterface"

    const-string v1, "Inside MediaObject Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "composer"    # Ljava/lang/String;
    .param p5, "creationDate"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "duration"    # J
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "language"    # Ljava/lang/String;
    .param p11, "latitude"    # Ljava/lang/String;
    .param p12, "longitude"    # Ljava/lang/String;
    .param p13, "mimeTypeEnum"    # I
    .param p14, "modificationDate"    # Ljava/lang/String;
    .param p15, "path"    # Ljava/lang/String;
    .param p16, "size"    # Ljava/lang/String;
    .param p17, "title"    # Ljava/lang/String;
    .param p18, "year"    # I
    .param p19, "genreName"    # Ljava/lang/String;
    .param p20, "width"    # J
    .param p22, "height"    # J
    .param p24, "dateTaken"    # Ljava/lang/String;

    .prologue
    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1621
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1622
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1623
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1624
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1625
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1626
    const/4 v2, 0x3

    iput v2, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1627
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1628
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1629
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    .line 1630
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1631
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1632
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1633
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1634
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1635
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1636
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1637
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1638
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->width:J

    .line 1639
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->height:J

    .line 1640
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1650
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1651
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1652
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1653
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1654
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1655
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1656
    iput-wide p7, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1658
    iput-object p9, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1660
    iput-object p10, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1662
    iput-object p11, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1664
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1666
    move/from16 v0, p13

    iput v0, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1668
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1670
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1672
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1674
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1676
    move/from16 v0, p18

    iput v0, p0, Landroid/mtp/MediaObject;->year:I

    .line 1678
    move-object/from16 v0, p19

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1680
    move-wide/from16 v0, p20

    iput-wide v0, p0, Landroid/mtp/MediaObject;->width:J

    .line 1682
    move-wide/from16 v0, p22

    iput-wide v0, p0, Landroid/mtp/MediaObject;->height:J

    .line 1684
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1687
    return-void
.end method
