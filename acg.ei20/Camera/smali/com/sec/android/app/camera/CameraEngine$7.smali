.class Lcom/sec/android/app/camera/CameraEngine$7;
.super Landroid/view/OrientationEventListener;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/16 v2, 0x168

    .line 2116
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2117
    const-string v0, "CameraEngine"

    const-string v1, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :goto_0
    return-void

    .line 2121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->roundOrientation(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$002(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 2122
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$002(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 2125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1500(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$7;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    goto :goto_0
.end method
