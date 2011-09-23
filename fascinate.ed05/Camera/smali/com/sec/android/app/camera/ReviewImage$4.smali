.class Lcom/sec/android/app/camera/ReviewImage$4;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ReviewImage;->setupZoomButtonController(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 311
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 2
    .parameter "zoomIn"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomIn()V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$300(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 321
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$4;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomOut()V

    goto :goto_0
.end method
