.class Lcom/sec/android/app/camera/Camcorder$2;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$2;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 910
    return-void
.end method
