.class Lcom/android/browser/BitmapWebViewSurface3D$2;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D;->unloadExtraTextures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$2;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$2;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->unloadExtraTexturesGL()V

    .line 472
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$2;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 477
    monitor-exit p0

    .line 481
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
