.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2824
    .local p3, rectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2825
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 2826
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    .line 2827
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v12, "true"

    const-string v11, "com.sec.android.app.camera"

    const-string v9, "Camera"

    .line 2830
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2831
    const-string v4, "Camera"

    const-string v4, "onCompleted: mCameraEnine is null"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_0
    :goto_0
    return-void

    .line 2834
    :cond_1
    const-string v4, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera getLastContentUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getViewerRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2837
    const-string v4, "Camera"

    const-string v4, "Skip launching the Viewer because another instance is neing launched"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2840
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/Camera;->setViewerRunning(Z)V

    .line 2843
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2845
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    const-string v5, "quickview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    const-string v5, "reviewon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    const-string v5, "blinkdetection"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2847
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 2848
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2849
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2851
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2852
    const-string v4, "blink-rect"

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2854
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x7d3

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2857
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v10, v10}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 2872
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2873
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.ReviewImage"

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2876
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    if-nez v4, :cond_6

    .line 2877
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2878
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2903
    :goto_1
    const-string v4, "android.intent.extra.fullScreen"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2904
    const-string v4, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2905
    const-string v4, "com.sec.android.app.camera.ReviewMode"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2907
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2910
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v10, v10}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 2880
    :cond_5
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 2884
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 2885
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)V

    .line 2886
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2887
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 2888
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 2889
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2890
    const-string v4, "Camera"

    const-string v4, "IllegalStateException."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 2893
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2895
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2896
    const-string v4, "Camera"

    const-string v4, "IllegalStateException."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 2899
    :cond_b
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2912
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    const-string v5, "from_app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2913
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2914
    .local v3, newExtras:Landroid/os/Bundle;
    const-string v4, "fromApp"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2916
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2917
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "circle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2918
    const-string v4, "circleCrop"

    const-string v5, "true"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    :cond_d
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    .line 2932
    const-string v4, "blink-rect"

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2935
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2936
    const-string v4, "output"

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2943
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2944
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2946
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2947
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2949
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x7d1

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2919
    .end local v0           #cropIntent:Landroid/content/Intent;
    :cond_f
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2920
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2921
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2923
    .local v1, extras:Landroid/os/Bundle;
    const-string v4, "rectCrop"

    const-string v5, "true"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const-string v4, "aspectX"

    const-string v5, "aspectX"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2925
    const-string v4, "aspectY"

    const-string v5, "aspectY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2926
    const-string v4, "outputX"

    const-string v5, "outputX"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2927
    const-string v4, "outputY"

    const-string v5, "outputY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2937
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2938
    const-string v4, "return-uri"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2940
    :cond_11
    const-string v4, "return-data"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method