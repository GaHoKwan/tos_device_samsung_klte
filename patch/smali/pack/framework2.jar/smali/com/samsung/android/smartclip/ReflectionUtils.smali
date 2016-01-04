.class Lcom/samsung/android/smartclip/ReflectionUtils;
.super Ljava/lang/Object;
.source "SmartClipDataCropperImpl.java"


# static fields
.field public static final MATCH_TYPE_CLASS_NAME_ONLY:I = 0x1

.field public static final MATCH_TYPE_FULL_NAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpObjectFields(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 9
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I

    .prologue
    const/4 v3, 0x0

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, v3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method protected static dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 31
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p2, "fieldNamePrefix"    # Ljava/lang/String;
    .param p3, "fieldInfo"    # Ljava/lang/reflect/Field;
    .param p4, "fullPath"    # Ljava/lang/String;
    .param p5, "depth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "classTypeFilter"    # Ljava/lang/String;
    .param p8, "valueFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 898
    .local p1, "dumpedObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 903
    .local v17, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    .line 904
    .local v29, "objectTypeStr":Ljava/lang/String;
    const/16 v30, 0x0

    .line 906
    .local v30, "objectValueStr":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    const/4 v14, 0x1

    .line 908
    .local v14, "alreadyDumpedObj":Z
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const-string v4, "java.lang."

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 909
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 913
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [arraySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 917
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getIndentString(I)Ljava/lang/String;

    move-result-object v24

    .line 919
    .local v24, "indent":Ljava/lang/String;
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    .line 920
    .local v20, "fieldTypeStr":Ljava/lang/String;
    :goto_3
    const-string v4, "[L"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 922
    if-nez p2, :cond_4

    .line 923
    const-string p2, ""

    .line 925
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 927
    .local v19, "fieldName":Ljava/lang/String;
    if-nez p4, :cond_5

    .line 928
    const-string p4, ""

    .line 931
    :cond_5
    if-eqz p7, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    :cond_6
    if-eqz p8, :cond_7

    move-object/from16 v0, p8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 934
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 935
    :cond_8
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_9
    :goto_5
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 943
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/smartclip/ReflectionUtils;->extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 945
    if-nez v14, :cond_0

    .line 946
    add-int/lit8 v4, p5, 0x1

    move/from16 v0, p6

    if-ge v4, v0, :cond_b

    .line 947
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArraySize(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v16

    .line 956
    .local v16, "arrayLength":I
    const/16 v12, 0x64

    .line 957
    .local v12, "accessLimit":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    const/16 v4, 0x64

    move/from16 v0, v22

    if-ge v0, v4, :cond_13

    .line 958
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/ReflectionUtils;->getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 960
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_d

    .line 961
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 962
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    add-int/lit8 v7, p5, 0x1

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 906
    .end local v2    # "o":Ljava/lang/Object;
    .end local v12    # "accessLimit":I
    .end local v14    # "alreadyDumpedObj":Z
    .end local v16    # "arrayLength":I
    .end local v19    # "fieldName":Ljava/lang/String;
    .end local v20    # "fieldTypeStr":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v24    # "indent":Ljava/lang/String;
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 911
    .restart local v14    # "alreadyDumpedObj":Z
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2

    .line 919
    .restart local v24    # "indent":Ljava/lang/String;
    :cond_10
    const-string v20, ""

    goto/16 :goto_3

    .line 925
    .restart local v20    # "fieldTypeStr":Ljava/lang/String;
    :cond_11
    const-string v4, ""

    goto/16 :goto_4

    .line 937
    .restart local v19    # "fieldName":Ljava/lang/String;
    :cond_12
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 966
    .restart local v12    # "accessLimit":I
    .restart local v16    # "arrayLength":I
    .restart local v22    # "i":I
    :cond_13
    const/16 v4, 0x64

    move/from16 v0, v16

    if-le v0, v4, :cond_0

    .line 967
    const-string v4, "ReflectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\t[Dumped until index "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 970
    .end local v12    # "accessLimit":I
    .end local v16    # "arrayLength":I
    .end local v22    # "i":I
    :cond_14
    invoke-static/range {v29 .. v29}, Lcom/samsung/android/smartclip/ReflectionUtils;->isPrimitiveDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "java.lang."

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 971
    :goto_7
    if-eqz v17, :cond_0

    .line 972
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v21

    .line 974
    .local v21, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v15, v21

    .local v15, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v15

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_19

    aget-object v6, v15, v23

    .line 975
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 979
    .local v3, "fieldObject":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v13

    .line 980
    .local v13, "accessable":Z
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 981
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 982
    invoke-virtual {v6, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 991
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v13    # "accessable":Z
    :goto_9
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_17

    const/16 v26, 0x1

    .line 992
    .local v26, "isFinalField":Z
    :goto_a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_18

    const/16 v27, 0x1

    .line 993
    .local v27, "isStaticField":Z
    :goto_b
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v25

    .line 995
    .local v25, "isEnumField":Z
    if-nez v25, :cond_16

    if-eqz v27, :cond_15

    if-nez v26, :cond_16

    .line 998
    :cond_15
    add-int/lit8 v4, p5, 0x1

    move/from16 v0, p6

    if-ge v4, v0, :cond_16

    .line 999
    const/4 v5, 0x0

    add-int/lit8 v8, p5, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_16
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 983
    .end local v25    # "isEnumField":Z
    .end local v26    # "isFinalField":Z
    .end local v27    # "isStaticField":Z
    :catch_0
    move-exception v18

    .line 984
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .line 985
    .restart local v3    # "fieldObject":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 986
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v18

    .line 987
    .local v18, "e":Ljava/lang/IllegalAccessException;
    const/4 v3, 0x0

    .line 988
    .restart local v3    # "fieldObject":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 991
    .end local v3    # "fieldObject":Ljava/lang/Object;
    .end local v18    # "e":Ljava/lang/IllegalAccessException;
    :cond_17
    const/16 v26, 0x0

    goto :goto_a

    .line 992
    .restart local v26    # "isFinalField":Z
    :cond_18
    const/16 v27, 0x0

    goto :goto_b

    .line 1004
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "isFinalField":Z
    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v17

    .line 1005
    goto :goto_7
.end method

.method public static dumpObjectFieldsWithClassTypeFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "classTypeFilter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / Object type filter : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method public static dumpObjectFieldsWithValueFilter(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "objToDump"    # Ljava/lang/Object;
    .param p1, "objName"    # Ljava/lang/String;
    .param p2, "maxDepth"    # I
    .param p3, "valueFilter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v1, "objList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "ReflectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------- Field list dump start : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / Value filter : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ----------"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, v3

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/smartclip/ReflectionUtils;->dumpObjectFields(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "ReflectionUtils"

    const-string v2, "-------- Field list dump finished ----------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void
.end method

.method public static dumpObjectMethods(Ljava/lang/Object;)V
    .locals 10
    .param p0, "objToDump"    # Ljava/lang/Object;

    .prologue
    .line 1011
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1013
    .local v2, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------- Method list dump start : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ----------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :goto_0
    if-eqz v2, :cond_1

    .line 1016
    const-string v7, "ReflectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -- Methods of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " class --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1019
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1020
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "curMethodName":Ljava/lang/String;
    const-string v7, "ReflectionUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1023
    .end local v1    # "curMethodName":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1024
    goto :goto_0

    .line 1026
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    const-string v7, "ReflectionUtils"

    const-string v8, "-------- Method list dump finished ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void
.end method

.method protected static extractClassNameFromFullClassPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 860
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 862
    const-string v1, ""

    .line 864
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method protected static findObjFromArrayList(Ljava/util/ArrayList;Ljava/lang/Object;)I
    .locals 3
    .param p1, "objToFind"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 844
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 845
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 849
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 844
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected static getArraySize(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "objectTypeStr"    # Ljava/lang/String;

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 774
    .local v0, "arrayLength":I
    const-string v1, "[I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    array-length v0, p0

    .line 795
    :goto_0
    return v0

    .line 776
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    const-string v1, "[Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    array-length v0, p0

    goto :goto_0

    .line 778
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    const-string v1, "[J"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    array-length v0, p0

    goto :goto_0

    .line 780
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    const-string v1, "[B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 781
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    array-length v0, p0

    goto :goto_0

    .line 782
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    const-string v1, "[F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    array-length v0, p0

    goto :goto_0

    .line 784
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    const-string v1, "[C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 785
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    array-length v0, p0

    goto :goto_0

    .line 786
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    const-string v1, "[S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 787
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    array-length v0, p0

    goto :goto_0

    .line 788
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    const-string v1, "[D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 789
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    array-length v0, p0

    goto :goto_0

    .line 790
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    const-string v1, "[L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 791
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    goto :goto_0

    .line 793
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getArrayValueObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 800
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 801
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "dataTypeStr":Ljava/lang/String;
    const-string v2, "[I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    new-instance v2, Ljava/lang/Integer;

    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [I

    aget v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 822
    :goto_0
    return-object v2

    .line 805
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    const-string v2, "[Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    new-instance v2, Ljava/lang/Boolean;

    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Z

    aget-boolean v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 807
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    const-string v2, "[J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    new-instance v2, Ljava/lang/Long;

    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [J

    aget-wide v3, p0, p1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 809
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    const-string v2, "[B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    new-instance v2, Ljava/lang/Byte;

    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [B

    aget-byte v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    .line 811
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    const-string v2, "[F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 812
    new-instance v2, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [F

    aget v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 813
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 814
    new-instance v2, Ljava/lang/Integer;

    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [C

    aget-char v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 815
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    const-string v2, "[S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 816
    new-instance v2, Ljava/lang/Short;

    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [S

    aget-short v3, p0, p1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    .line 817
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    const-string v2, "[D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 818
    new-instance v2, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [D

    aget-wide v3, p0, p1

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 819
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    const-string v2, "[L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 820
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    aget-object v2, p0, p1

    goto/16 :goto_0

    .line 822
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getFieldObjectByFieldName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 1127
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v5, v9

    .line 1153
    :goto_0
    return-object v5

    .line 1131
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1132
    .local v3, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v3, :cond_4

    .line 1133
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1135
    .local v6, "fields":[Ljava/lang/reflect/Field;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_3

    aget-object v4, v1, v7

    .line 1136
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, "curFieldName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v11, :cond_2

    .line 1140
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    .line 1141
    .local v0, "accessable":Z
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1142
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1143
    .local v5, "fieldObject":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1146
    .end local v0    # "accessable":Z
    .end local v5    # "fieldObject":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 1135
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1151
    .end local v2    # "curFieldName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1152
    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    move-object v5, v9

    .line 1153
    goto :goto_0

    .line 1147
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "curFieldName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method protected static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    .locals 24
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p5, "curDepth"    # I
    .param p6, "maxDepth"    # I
    .param p7, "skipWellKnownClass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_1

    .line 1106
    :cond_0
    return-void

    .line 1035
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 1037
    .local v14, "curObjClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v14, :cond_0

    .line 1038
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_2

    .line 1039
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1040
    .local v12, "className":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1041
    const-string v3, "android.view."

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "java."

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1047
    .end local v12    # "className":Ljava/lang/String;
    :cond_2
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    .line 1049
    .local v17, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v11, v17

    .local v11, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v11

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .local v20, "i$":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget-object v15, v11, v20

    .line 1050
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 1051
    .local v13, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1055
    .local v16, "fieldType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v10

    .line 1056
    .local v10, "accessable":Z
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1057
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1058
    .local v2, "memberObj":Ljava/lang/Object;
    invoke-virtual {v15, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1060
    if-eqz v2, :cond_6

    .line 1061
    const/16 v22, 0x0

    .line 1063
    .local v22, "matched":Z
    packed-switch p1, :pswitch_data_0

    .line 1070
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1074
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_7

    .line 1075
    const/16 v18, 0x0

    .line 1078
    .local v18, "haveSameObject":Z
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v20    # "i$":I
    .local v19, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .line 1079
    .local v23, "o":Ljava/lang/Object;
    move-object/from16 v0, v23

    if-ne v0, v2, :cond_3

    .line 1080
    const/16 v18, 0x1

    .line 1085
    .end local v23    # "o":Ljava/lang/Object;
    :cond_4
    if-nez v18, :cond_5

    .line 1087
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    .end local v18    # "haveSameObject":Z
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    if-lez p3, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-ge v3, v0, :cond_0

    .line 1049
    .end local v2    # "memberObj":Ljava/lang/Object;
    .end local v10    # "accessable":Z
    .end local v22    # "matched":Z
    :cond_6
    :goto_4
    add-int/lit8 v19, v20, 0x1

    .local v19, "i$":I
    move/from16 v20, v19

    .end local v19    # "i$":I
    .restart local v20    # "i$":I
    goto :goto_1

    .line 1065
    .restart local v2    # "memberObj":Ljava/lang/Object;
    .restart local v10    # "accessable":Z
    .restart local v22    # "matched":Z
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    .line 1066
    goto :goto_2

    .line 1090
    :cond_7
    add-int/lit8 v7, p5, 0x1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1098
    .end local v2    # "memberObj":Ljava/lang/Object;
    .end local v10    # "accessable":Z
    .end local v20    # "i$":I
    .end local v22    # "matched":Z
    :catch_0
    move-exception v3

    goto :goto_4

    .line 1103
    .end local v13    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "fieldType":Ljava/lang/String;
    .restart local v20    # "i$":I
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    .line 1104
    goto/16 :goto_0

    .line 1099
    .end local v20    # "i$":I
    .restart local v13    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "fieldType":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_4

    .line 1063
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;
    .locals 8
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "maxDepth"    # I
    .param p5, "skipWellKnownClass"    # Z

    .prologue
    .line 1114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v4, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1117
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1122
    :goto_0
    return-object v0

    .line 1120
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;ILjava/util/ArrayList;IIZ)V

    .line 1122
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IZ)[Ljava/lang/Object;
    .locals 6
    .param p0, "srcObj"    # Ljava/lang/Object;
    .param p1, "matchType"    # I
    .param p2, "fieldObjectType"    # Ljava/lang/String;
    .param p3, "maxSearchResultCount"    # I
    .param p4, "skipWellKnownClass"    # Z

    .prologue
    .line 1110
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/smartclip/ReflectionUtils;->getFieldObjectByObjectType(Ljava/lang/Object;ILjava/lang/String;IIZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getIndentString(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    .line 853
    const-string v1, ""

    .line 854
    .local v1, "indent":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_0
    return-object v1
.end method

.method protected static isPrimitiveDataType(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dataType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 827
    const-string/jumbo v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
