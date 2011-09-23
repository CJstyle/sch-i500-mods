.class Lcom/sec/android/app/camera/MenuHelper$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onShowMapClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 8
    .parameter "u"
    .parameter "image"

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 269
    :cond_0
    const/4 v2, 0x0

    .line 270
    .local v2, ok:Z
    invoke-static {p2}, Lcom/sec/android/app/camera/MenuHelper;->access$200(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 271
    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v1, 0x0

    .line 272
    .local v1, latlng:[F
    if-eqz v0, :cond_1

    .line 273
    const/4 v4, 0x2

    new-array v1, v4, [F

    .line 274
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const/4 v2, 0x1

    .line 279
    :cond_1
    if-nez v2, :cond_2

    .line 280
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$1$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/MenuHelper$1$1;-><init>(Lcom/sec/android/app/camera/MenuHelper$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 294
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, uri:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuHelper$1;->val$activity:Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
