.class Lcom/sec/android/app/carcradle/CarCradleMain$2;
.super Ljava/lang/Object;
.source "CarCradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$300(Lcom/sec/android/app/carcradle/CarCradleMain;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$302(Lcom/sec/android/app/carcradle/CarCradleMain;Z)Z

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$400(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$2;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$500(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
