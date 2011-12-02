.class Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEqualizerSeekBarChangeListener"
.end annotation


# instance fields
.field private mCustomEqNum:I

.field private mHideBubble:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method public constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;I)V
    .locals 1
    .parameter
    .parameter "num"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    .line 579
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    .line 580
    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 595
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 597
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 603
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_2

    .line 604
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 611
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 612
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v3

    iget v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    const/4 v5, 0x6

    sub-int v5, p2, v5

    aput v5, v3, v4

    .line 613
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v4

    iget v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :goto_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 620
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 622
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1300(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 623
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1302(Lcom/android/music/common/settings/MusicSettingsEqualizer;Z)Z

    .line 628
    :try_start_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v3

    sget-object v4, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mappingMenuArray:[I

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$900(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    :cond_1
    :goto_2
    return-void

    .line 606
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 633
    .local v2, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomEqualizerSeekBarChangeListener:onProgressChanged()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 614
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 642
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 643
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    .line 648
    .local v2, progress:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 652
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 663
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 664
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    const/4 v4, 0x6

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 671
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 672
    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto :goto_0

    .line 665
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 678
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 679
    return-void
.end method
