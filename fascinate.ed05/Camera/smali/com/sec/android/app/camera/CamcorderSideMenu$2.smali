.class Lcom/sec/android/app/camera/CamcorderSideMenu$2;
.super Ljava/lang/Object;
.source "CamcorderSideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderSideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$000(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .local v0, leftParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$200(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .local v1, rightParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$800(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showShutterButton()V

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$900(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideShutterButton()V

    goto :goto_0

    .line 119
    :cond_1
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$100(Lcom/sec/android/app/camera/CamcorderSideMenu;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$000(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$000(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$300(Lcom/sec/android/app/camera/CamcorderSideMenu;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$402(Lcom/sec/android/app/camera/CamcorderSideMenu;Z)Z

    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$800(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showShutterButton()V

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$1000(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->access$900(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideShutterButton()V

    goto/16 :goto_0
.end method
