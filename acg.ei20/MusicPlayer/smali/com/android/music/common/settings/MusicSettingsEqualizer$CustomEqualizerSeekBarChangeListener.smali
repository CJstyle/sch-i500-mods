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
    .line 701
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener$1;-><init>(Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    .line 702
    iput p2, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    .line 703
    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 10
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 718
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 719
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 721
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 727
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getOrientation()I

    move-result v5

    if-eqz v5, :cond_2

    .line 728
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    .line 739
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    invoke-virtual {v5, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 740
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    iget v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    const/4 v7, 0x6

    sub-int v7, p2, v7

    aput v7, v5, v6

    .line 741
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v6

    iget v7, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mCustomEqNum:I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 746
    :goto_1
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 747
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 749
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1200(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 750
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 752
    :cond_0
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    iget-object v6, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v6

    iget-object v7, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1202(Lcom/android/music/common/settings/MusicSettingsEqualizer;Z)Z

    .line 755
    :try_start_1
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 757
    .local v2, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v2, :cond_1

    .line 758
    const/4 v4, 0x0

    .line 763
    .local v4, eq:I
    invoke-static {}, Lcom/android/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v4

    .line 764
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v5}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$800(Lcom/android/music/common/settings/MusicSettingsEqualizer;)[I

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    .end local v2           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .end local v4           #eq:I
    :cond_1
    :goto_2
    return-void

    .line 730
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    goto/16 :goto_0

    .line 766
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 767
    .local v3, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CustomEqualizerSeekBarChangeListener:onProgressChanged()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 742
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 775
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 776
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 777
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    .line 782
    .local v2, progress:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 786
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

    .line 787
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 797
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 798
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    const/4 v4, 0x6

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_1
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 805
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v3}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 806
    return-void

    .line 789
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    goto :goto_0

    .line 799
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 812
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$CustomEqualizerSeekBarChangeListener;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$1100(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 813
    return-void
.end method
