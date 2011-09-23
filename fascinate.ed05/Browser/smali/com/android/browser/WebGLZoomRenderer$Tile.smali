.class Lcom/android/browser/WebGLZoomRenderer$Tile;
.super Ljava/lang/Object;
.source "WebGLZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebGLZoomRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Tile"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mRect:Landroid/graphics/Rect;

.field mTexID:I

.field final synthetic this$0:Lcom/android/browser/WebGLZoomRenderer;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLZoomRenderer;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x100

    .line 887
    iput-object p1, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    invoke-static {p1}, Lcom/android/browser/WebGLZoomRenderer;->access$000(Lcom/android/browser/WebGLZoomRenderer;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 890
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mTexID:I

    .line 891
    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 1

    .prologue
    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method set(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "aX"
    .parameter "aY"
    .parameter "aRect"

    .prologue
    .line 895
    iput p1, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->x:I

    .line 896
    iput p2, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->y:I

    .line 898
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTexTiles:[[I

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->x:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mTexID:I

    .line 900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mRect:Landroid/graphics/Rect;

    .line 903
    return-void
.end method
