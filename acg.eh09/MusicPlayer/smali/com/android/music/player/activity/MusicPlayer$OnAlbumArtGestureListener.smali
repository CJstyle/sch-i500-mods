.class public Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnAlbumArtGestureListener"
.end annotation


# instance fields
.field public final PLAY_DELAY_TIME:I

.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 3674
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 3675
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->PLAY_DELAY_TIME:I

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3680
    if-nez p1, :cond_0

    .line 3684
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3704
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    .line 3705
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 3706
    .local v2, dx:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 3711
    const/4 v0, 0x0

    .line 3712
    .local v0, albumArt:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3713
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$700(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3714
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3715
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3724
    :goto_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040001

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3725
    .local v4, inAni:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 3732
    .local v5, outAni:Landroid/view/animation/Animation;
    const/4 v7, 0x0

    cmpg-float v7, p3, v7

    if-gez v7, :cond_4

    .line 3733
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/music/player/service/ICorePlayerService;->getNext(Z)Landroid/net/Uri;

    move-result-object v6

    .line 3734
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 3735
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3736
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3737
    const/4 v7, 0x0

    .line 3934
    .end local v0           #albumArt:Landroid/graphics/Bitmap;
    .end local v2           #dx:I
    .end local v4           #inAni:Landroid/view/animation/Animation;
    .end local v5           #outAni:Landroid/view/animation/Animation;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_1
    return v7

    .line 3717
    .restart local v0       #albumArt:Landroid/graphics/Bitmap;
    .restart local v2       #dx:I
    :cond_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3919
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 3920
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "MusicPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException occured 14 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 3739
    .restart local v4       #inAni:Landroid/view/animation/Animation;
    .restart local v5       #outAni:Landroid/view/animation/Animation;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v7, v6}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v1

    .line 3740
    .local v1, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    if-nez v1, :cond_3

    .line 3741
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "onFling(): getNext > mCorePlayer.getCurrentAlbumInfo()==null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    .line 3743
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1500(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 3744
    :cond_2
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3748
    :goto_3
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3750
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040002

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3751
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040003

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 3752
    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$1;

    invoke-direct {v7, p0, v6}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$1;-><init>(Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;Landroid/net/Uri;)V

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3820
    :goto_4
    if-nez v1, :cond_8

    .line 3821
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v10, 0x7f0a00ea

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3822
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v9, 0x7f0a00ec

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3823
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v9, 0x7f0a00eb

    invoke-virtual {v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3833
    :goto_5
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3834
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 3835
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3836
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3838
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7, v0}, Lcom/android/music/player/activity/MusicPlayer;->access$702(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3746
    :cond_3
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1300(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 3777
    .end local v1           #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getPrev()Landroid/net/Uri;

    move-result-object v6

    .line 3778
    .restart local v6       #uri:Landroid/net/Uri;
    if-nez v6, :cond_5

    .line 3779
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3780
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3781
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3783
    :cond_5
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v7, v6}, Lcom/android/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v1

    .line 3784
    .restart local v1       #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    if-nez v1, :cond_7

    .line 3785
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "onFling(): getPrev > mCorePlayer.getCurrentAlbumInfo()==null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_6

    .line 3787
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1500(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 3788
    :cond_6
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3792
    :goto_6
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3794
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040001

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3795
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 3796
    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;

    invoke-direct {v7, p0, v6}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;-><init>(Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;Landroid/net/Uri;)V

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_4

    .line 3790
    :cond_7
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1300(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    .line 3825
    :cond_8
    iget-object v7, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 3826
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v8, v8, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v8}, Lcom/android/music/player/service/ICorePlayerService;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3829
    :goto_7
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3830
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3828
    :cond_9
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 3929
    .end local v0           #albumArt:Landroid/graphics/Bitmap;
    .end local v1           #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    .end local v4           #inAni:Landroid/view/animation/Animation;
    .end local v5           #outAni:Landroid/view/animation/Animation;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3934
    .end local v2           #dx:I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1
.end method
