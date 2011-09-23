.class Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailUpdate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->updateThumbnailButton()V

    goto :goto_0
.end method
