.class public Landroid/renderscript/Allocation$Adapter2D;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter2D"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(Landroid/renderscript/Allocation;ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/renderscript/Allocation$Adapter2D;->this$0:Landroid/renderscript/Allocation;

    .line 198
    invoke-direct {p0, p3}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 199
    iput p2, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    .line 200
    return-void
.end method


# virtual methods
.method public data([F)V
    .locals 2
    .parameter "d"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 214
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter2DData(I[F)V

    .line 215
    return-void
.end method

.method public data([I)V
    .locals 2
    .parameter "d"

    .prologue
    .line 208
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 209
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAdapter2DData(I[I)V

    .line 210
    return-void
.end method

.method public setConstraint(Landroid/renderscript/Dimension;I)V
    .locals 3
    .parameter "dim"
    .parameter "value"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 204
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    iget v2, p1, Landroid/renderscript/Dimension;->mID:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nAdapter2DSetConstraint(III)V

    .line 205
    return-void
.end method

.method public subData(IIII[F)V
    .locals 7
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 223
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 224
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAdapter2DSubData(IIIII[F)V

    .line 225
    return-void
.end method

.method public subData(IIII[I)V
    .locals 7
    .parameter "xoff"
    .parameter "yoff"
    .parameter "w"
    .parameter "h"
    .parameter "d"

    .prologue
    .line 218
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 219
    iget-object v0, p0, Landroid/renderscript/Allocation$Adapter2D;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Allocation$Adapter2D;->mID:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAdapter2DSubData(IIIII[I)V

    .line 220
    return-void
.end method
