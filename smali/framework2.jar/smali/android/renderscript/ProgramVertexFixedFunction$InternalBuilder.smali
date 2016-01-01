.class Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 9

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7}, Landroid/renderscript/RenderScript;->validate()V

    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    iget v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    new-array v5, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputCount:I

    if-ge v0, v7, :cond_0

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputCount:I

    if-ge v0, v7, :cond_1

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstantCount:I

    if-ge v0, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureCount:I

    if-ge v0, v7, :cond_3

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v7, v7, v0

    iget v7, v7, Landroid/renderscript/Program$TextureType;->mID:I

    aput v7, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mTextureNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    new-instance v4, Landroid/renderscript/ProgramVertexFixedFunction;

    iget-object v7, p0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v7}, Landroid/renderscript/ProgramVertexFixedFunction;-><init>(ILandroid/renderscript/RenderScript;)V

    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->initProgram(Landroid/renderscript/Program;)V

    return-object v4
.end method
