.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2180
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2181
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2182
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2183
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2184
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    :goto_0
    return-void

    .line 2185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2166
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2167
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2168
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2169
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2170
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    :goto_0
    return-void

    .line 2171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2149
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2151
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2153
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    :goto_0
    return-void

    .line 2154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2201
    const-string v0, "4,true "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2211
    :goto_0
    return-void

    .line 2205
    :cond_0
    const-string v0, "5,false "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    const/4 v3, 0x0

    .line 1603
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1605
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1606
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1607
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1613
    .end local v2    # "group":Landroid/view/ViewGroup;
    :goto_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1618
    if-eqz v4, :cond_3

    .line 1619
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1622
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "view":Landroid/view/View;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1611
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1615
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1616
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1618
    if-eqz v3, :cond_0

    .line 1619
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1618
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 1619
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    .line 1618
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1615
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/IGLViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1661
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1672
    :cond_0
    return-void

    .line 1665
    :cond_1
    invoke-interface {p1}, Landroid/view/IGLViewGroup;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1666
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/IGLViewGroup;

    if-eqz v2, :cond_3

    .line 1667
    check-cast v1, Landroid/view/IGLViewGroup;

    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V

    goto :goto_0

    .line 1668
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, Landroid/view/IGLView;

    if-eqz v2, :cond_2

    .line 1669
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v1, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_0
.end method

.method private static dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1648
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    .line 1653
    .local v1, "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/IGLContext;

    if-eqz v2, :cond_0

    .line 1654
    check-cast v1, Landroid/view/IGLContext;

    .end local v1    # "renderer":Landroid/opengl/GLSurfaceView$Renderer;
    invoke-interface {v1}, Landroid/view/IGLContext;->getGLRootView()Landroid/view/IGLViewGroup;

    move-result-object v0

    .line 1655
    .local v0, "group":Landroid/view/IGLViewGroup;
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, v0, p2, v2}, Landroid/view/ViewDebug$DumpZ;->dumpGLHierarchyWithProperties(Landroid/content/Context;Landroid/view/IGLViewGroup;Ljava/io/BufferedWriter;I)V

    goto :goto_0
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2258
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2261
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2262
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2237
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2250
    :cond_0
    return-void

    .line 2241
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2242
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2243
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2244
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2245
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 2242
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2247
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1629
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1644
    :cond_0
    return-void

    .line 1633
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1634
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1635
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1636
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1637
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1634
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1638
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_3

    .line 1639
    check-cast v2, Landroid/opengl/GLSurfaceView;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Ljava/io/BufferedWriter;I)V

    goto :goto_1

    .line 1641
    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1721
    const-string v16, ""

    .line 1723
    .local v16, "strValue":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v18, p1

    .line 1725
    check-cast v18, Landroid/view/View;

    .line 1727
    .local v18, "tempView":Landroid/view/View;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [I

    .line 1728
    .local v11, "location":[I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1731
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "strValue":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1732
    .restart local v16    # "strValue":Ljava/lang/String;
    const-string v19, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1735
    const-string/jumbo v19, "x"

    const/16 v20, 0x0

    aget v20, v11, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1738
    const-string/jumbo v19, "y"

    const/16 v20, 0x1

    aget v20, v11, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1741
    const-string/jumbo v19, "width"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1744
    const-string v19, "height"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1747
    const-string/jumbo v19, "scrollx"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollX()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1750
    const-string/jumbo v19, "scrolly"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScrollY()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1753
    const-string v19, "enable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isEnabled()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1755
    const-string v19, "longclickable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isLongClickable()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1757
    const-string v19, "clickable"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isClickable()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1759
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isFocusable()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1761
    const-string v19, "hasfocus"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1765
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1766
    .local v3, "TalkBack_value":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 1768
    const-string/jumbo v19, "talkback"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1772
    :cond_1
    const-string v19, "isselected"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isSelected()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1775
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_8

    .line 1777
    const-string/jumbo v19, "visibility"

    const-string v20, "VISIBLE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1797
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 1799
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1801
    const-string v19, "layouttype"

    const-string v20, "TYPE_BASE_APPLICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1939
    .local v15, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v19, "bottommargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1940
    const-string v19, "leftmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1941
    const-string/jumbo v19, "rightmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1942
    const-string/jumbo v19, "topmargin"

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1947
    .end local v15    # "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    const-string/jumbo v19, "willnotdraw"

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->willNotDraw()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1952
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v11    # "location":[I
    .end local v18    # "tempView":Landroid/view/View;
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1954
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1956
    .local v14, "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_2a

    aget-object v13, v4, v9

    .line 1957
    .local v13, "method":Ljava/lang/reflect/Method;
    const-string v19, "isFillViewport"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1958
    const-string v20, "fillviewport"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1961
    :cond_5
    const-string v19, "getFirstVisiblePosition"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1962
    const-string v20, "firstposition"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1965
    :cond_6
    const-string v19, "getCount"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1966
    const-string v20, "itemcount"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1956
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1779
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v11    # "location":[I
    .restart local v18    # "tempView":Landroid/view/View;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1781
    const-string/jumbo v19, "visibility"

    const-string v20, "INVISIBLE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1783
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1785
    const-string/jumbo v19, "visibility"

    const-string v20, "GONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1803
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    :try_start_3
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1805
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1932
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v19

    goto/16 :goto_1

    .line 1807
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1809
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_STARTING"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1811
    :cond_c
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1813
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1815
    :cond_d
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1817
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_MEDIA"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1819
    :cond_e
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3ea

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1821
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1823
    :cond_f
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3eb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1825
    const-string v19, "layouttype"

    const-string v20, "TYPE_APPLICATION_ATTACHED_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1827
    :cond_10
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1829
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1831
    :cond_11
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1833
    const-string v19, "layouttype"

    const-string v20, "TYPE_SEARCH_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1835
    :cond_12
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1837
    const-string v19, "layouttype"

    const-string v20, "TYPE_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1839
    :cond_13
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1841
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_ALERT"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1843
    :cond_14
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1845
    const-string v19, "layouttype"

    const-string v20, "TYPE_KEYGUARD"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1847
    :cond_15
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 1849
    const-string v19, "layouttype"

    const-string v20, "TYPE_TOAST"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1851
    :cond_16
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1853
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1855
    :cond_17
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1857
    const-string v19, "layouttype"

    const-string v20, "TYPE_PRIORITY_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1859
    :cond_18
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7de

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 1861
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1863
    :cond_19
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x830

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1865
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL_USER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1867
    :cond_1a
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 1869
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1871
    :cond_1b
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1873
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1875
    :cond_1c
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 1877
    const-string v19, "layouttype"

    const-string v20, "TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1879
    :cond_1d
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7da

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 1881
    const-string v19, "layouttype"

    const-string v20, "TYPE_SYSTEM_ERROR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1883
    :cond_1e
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7db

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 1885
    const-string v19, "layouttype"

    const-string v20, "TYPE_INPUT_METHOD"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1887
    :cond_1f
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 1889
    const-string v19, "layouttype"

    const-string v20, "TYPE_INPUT_METHOD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1891
    :cond_20
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 1893
    const-string v19, "layouttype"

    const-string v20, "TYPE_WALLPAPER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1895
    :cond_21
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7de

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 1897
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1899
    :cond_22
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7df

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    .line 1901
    const-string v19, "layouttype"

    const-string v20, "TYPE_SECURE_SYSTEM_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1903
    :cond_23
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    .line 1905
    const-string v19, "layouttype"

    const-string v20, "TYPE_DRAG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1907
    :cond_24
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    .line 1909
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1911
    :cond_25
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    .line 1913
    const-string v19, "layouttype"

    const-string v20, "TYPE_POINTER"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1915
    :cond_26
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    .line 1917
    const-string v19, "layouttype"

    const-string v20, "TYPE_NAVIGATION_BAR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1919
    :cond_27
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 1921
    const-string v19, "layouttype"

    const-string v20, "TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1923
    :cond_28
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 1925
    const-string v19, "layouttype"

    const-string v20, "TYPE_BOOT_PROGRESS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1927
    :cond_29
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x831

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1929
    const-string v19, "layouttype"

    const-string v20, "TYPE_STATUS_BAR_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1970
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v11    # "location":[I
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "tempView":Landroid/view/View;
    :catch_1
    move-exception v19

    .line 1973
    :cond_2a
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    move-object/from16 v8, p1

    .line 1975
    check-cast v8, Landroid/view/ViewGroup;

    .line 1976
    .local v8, "group":Landroid/view/ViewGroup;
    const-string v19, "childcount"

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1978
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x20000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a

    .line 1980
    const-string v19, "focusability"

    const-string v20, "FOCUS_BEFORE_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1992
    .end local v8    # "group":Landroid/view/ViewGroup;
    :cond_2b
    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_2c

    move-object/from16 v18, p1

    .line 1994
    check-cast v18, Landroid/widget/TextView;

    .line 1995
    .local v18, "tempView":Landroid/widget/TextView;
    const-string/jumbo v19, "text"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1998
    :try_start_4
    const-string/jumbo v19, "stringname"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getStringName()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2004
    :goto_5
    :try_start_5
    const-string v19, "hint"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2009
    :goto_6
    const-string/jumbo v19, "selectionstart"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2011
    const-string/jumbo v19, "selectionend"

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2014
    .end local v18    # "tempView":Landroid/widget/TextView;
    :cond_2c
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    move-object/from16 v6, p1

    .line 2016
    check-cast v6, Landroid/widget/Checkable;

    .line 2017
    .local v6, "checkable":Landroid/widget/Checkable;
    const-string v19, "ischecked"

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 2020
    .end local v6    # "checkable":Landroid/widget/Checkable;
    :cond_2d
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/IGLView;

    move/from16 v19, v0

    if-eqz v19, :cond_3e

    move-object/from16 v7, p1

    .line 2022
    check-cast v7, Landroid/view/IGLView;

    .line 2025
    .local v7, "glview":Landroid/view/IGLView;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2027
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2029
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_7
    if-ge v9, v10, :cond_3c

    aget-object v13, v4, v9

    .line 2031
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    const-string v19, "getObjectTag"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 2032
    const-string v20, "glTag"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2035
    :cond_2e
    const-string v19, "mLeft"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 2036
    const-string v20, "glleft"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2039
    :cond_2f
    const-string v19, "mBottom"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 2040
    const-string v20, "glbottom"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2043
    :cond_30
    const-string/jumbo v19, "mRight"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 2044
    const-string v20, "glright"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2047
    :cond_31
    const-string v19, "getOrientation"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 2048
    const-string v20, "glorientation"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2051
    :cond_32
    const-string v19, "getText"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 2052
    const-string v20, "gltext"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2055
    :cond_33
    const-string/jumbo v19, "mText"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2056
    const-string v20, "gltext"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2059
    :cond_34
    const-string v19, "getStringName"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 2060
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    .line 2061
    .local v17, "tempString":Ljava/lang/CharSequence;
    const-string v19, "glstringname"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2064
    .end local v17    # "tempString":Ljava/lang/CharSequence;
    :cond_35
    const-string/jumbo v19, "mStringName"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 2065
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    .line 2066
    .restart local v17    # "tempString":Ljava/lang/CharSequence;
    const-string v19, "glstringname"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 2069
    .end local v17    # "tempString":Ljava/lang/CharSequence;
    :cond_36
    const-string v19, "getAlpha"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    .line 2070
    const-string v20, "glalpha"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V

    .line 2073
    :cond_37
    const-string v19, "getVisibility"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_38

    .line 2074
    const-string v20, "gl_getVisibility"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 2077
    :cond_38
    const-string v19, "isVisible"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_39

    .line 2078
    const-string v20, "gl_isvisible"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2029
    :cond_39
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 1982
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "glview":Landroid/view/IGLView;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "group":Landroid/view/ViewGroup;
    :cond_3a
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x40000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3b

    .line 1984
    const-string v19, "focusability"

    const-string v20, "FOCUS_AFTER_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 1986
    :cond_3b
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v19

    const/high16 v20, 0x60000

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2b

    .line 1988
    const-string v19, "focusability"

    const-string v20, "FOCUS_BLOCK_DESCENDANTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 2082
    .end local v8    # "group":Landroid/view/ViewGroup;
    .restart local v7    # "glview":Landroid/view/IGLView;
    :catch_2
    move-exception v19

    .line 2086
    :cond_3c
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2088
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 2090
    .restart local v14    # "methods":[Ljava/lang/reflect/Method;
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/reflect/Method;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_8
    if-ge v9, v10, :cond_3e

    aget-object v13, v4, v9

    .line 2091
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    const-string/jumbo v19, "mTop"

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3d

    .line 2092
    const-string v20, "gltop"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2090
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2096
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "methods":[Ljava/lang/reflect/Method;
    :catch_3
    move-exception v19

    .line 2140
    .end local v7    # "glview":Landroid/view/IGLView;
    :cond_3e
    return-void

    .line 2006
    .restart local v18    # "tempView":Landroid/widget/TextView;
    :catch_4
    move-exception v19

    goto/16 :goto_6

    .line 2000
    :catch_5
    move-exception v19

    goto/16 :goto_5

    .line 1944
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v11    # "location":[I
    .local v18, "tempView":Landroid/view/View;
    :catch_6
    move-exception v19

    goto/16 :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 1680
    :try_start_0
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1682
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 1683
    .local v4, "tempView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1711
    .end local v4    # "tempView":Landroid/view/View;
    :goto_0
    return v5

    .line 1689
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 1690
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 1689
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1693
    :cond_1
    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1695
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1696
    .local v1, "arr_str":[Ljava/lang/String;
    const-string v6, "class"

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1703
    .end local v1    # "arr_str":[Ljava/lang/String;
    :goto_2
    const-string v6, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1704
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1705
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1711
    const/4 v5, 0x1

    goto :goto_0

    .line 1700
    :cond_2
    const-string v6, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1706
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1707
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "View"

    const-string v7, "Error while dumping hierarchy tree"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2219
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 2221
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2230
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2224
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2226
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 2228
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0
.end method
