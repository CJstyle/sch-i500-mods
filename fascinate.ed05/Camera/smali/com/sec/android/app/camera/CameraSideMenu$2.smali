.class Lcom/sec/android/app/camera/CameraSideMenu$2;
.super Ljava/lang/Object;
.source "CameraSideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraSideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .local v0, leftParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .local v1, rightParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$800(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->showShutterButton()V

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$900(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideShutterButton()V

    goto :goto_0

    .line 125
    :cond_1
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSideMenu;->access$100(Lcom/sec/android/app/camera/CameraSideMenu;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSideMenu;->access$300(Lcom/sec/android/app/camera/CameraSideMenu;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->access$402(Lcom/sec/android/app/camera/CameraSideMenu;Z)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$800(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->showShutterButton()V

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$1000(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->access$900(Lcom/sec/android/app/camera/CameraSideMenu;)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu$2;->this$0:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideShutterButton()V

    goto/16 :goto_0
.end method
