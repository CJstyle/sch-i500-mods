.class Lcom/nemustech/tiffany/world/TFEffect$28;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageCurlTrans(ZIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$28;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 0
    .parameter "pagePanel"

    .prologue
    .line 1959
    return-void
.end method

.method public beforeUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 6
    .parameter "pagePanel"

    .prologue
    const/16 v5, 0x168

    const/16 v4, 0xb4

    .line 1935
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v0

    .line 1936
    .local v0, degree:I
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v2

    .line 1937
    .local v2, t:F
    invoke-static {p1, v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$2300(Lcom/nemustech/tiffany/world/TFPagePanel;F)I

    move-result v1

    .line 1938
    .local v1, maxDegree:I
    const/16 v3, 0x5a

    if-ge v0, v3, :cond_1

    .line 1939
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1940
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1954
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 1955
    return-void

    .line 1942
    :cond_1
    if-ge v0, v4, :cond_2

    .line 1943
    sub-int v3, v4, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1944
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1946
    :cond_2
    const/16 v3, 0x10e

    if-ge v0, v3, :cond_3

    .line 1947
    add-int/lit16 v3, v1, 0xb4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1948
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1950
    :cond_3
    if-ge v0, v5, :cond_0

    .line 1951
    sub-int v3, v5, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1952
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method
