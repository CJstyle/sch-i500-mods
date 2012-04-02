.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 4
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 2541
    if-eqz p3, :cond_0

    .line 2543
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2545
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez p2, :cond_1

    .line 2546
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2550
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->brightnessVal:I
    invoke-static {v1, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I

    .line 2551
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2552
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged - brightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 2548
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 2557
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 2560
    return-void
.end method
