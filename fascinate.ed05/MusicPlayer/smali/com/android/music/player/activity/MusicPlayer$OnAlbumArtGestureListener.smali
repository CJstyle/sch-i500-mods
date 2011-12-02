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


# static fields
.field public static final PLAY_DELAY_TIME:I = 0x320


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 4844
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v0, v0, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v1, "OnAlbumArtGestureListener:onDown() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4850
    if-nez p1, :cond_0

    .line 4851
    const-string v0, "MusicPlayer"

    const-string v1, "Player, Sweep, MotionEvent : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4861
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "OnGestureListener:onFling() is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1900(Lcom/android/music/player/activity/MusicPlayer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4865
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "OnGestureListener:onFling() - bIsSkipFlingEvent is true. ignore onFlicg"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    const/4 v7, 0x1

    .line 5088
    :goto_0
    return v7

    .line 4870
    :cond_0
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    .line 4871
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v2, v7

    .line 4872
    .local v2, dx:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 4875
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v7}, Lcom/android/music/player/activity/MusicPlayer;->hideLyricPanel()V

    .line 4876
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/music/player/activity/MusicPlayer;->bCorePlayerStatusRefeshed:Z

    .line 4877
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v7}, Lcom/android/music/player/activity/MusicPlayer;->updatePlayStatus()V

    .line 4880
    const/4 v0, 0x0

    .line 4881
    .local v0, albumArt:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 4882
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v8}, Lcom/android/music/player/activity/MusicPlayer;->access$1000(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4883
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4884
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4893
    :goto_1
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040001

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 4894
    .local v4, inAni:Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 4896
    .local v5, outAni:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 4899
    .local v1, albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    const/4 v7, 0x0

    cmpg-float v7, p3, v7

    if-gez v7, :cond_6

    .line 4900
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/music/player/service/ICorePlayerService;->getNext(Z)Landroid/net/Uri;

    move-result-object v6

    .line 4901
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-nez v7, :cond_1

    .line 4903
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v1

    .line 4905
    :cond_1
    if-nez v1, :cond_5

    .line 4906
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "onFling(): getNext > mCorePlayer.getCurrentAlbumInfo()==null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/music/player/activity/MusicPlayer;->access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4908
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    .line 4909
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 4910
    :cond_2
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4914
    :goto_2
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4916
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040002

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 4917
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040003

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 4918
    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$1;

    invoke-direct {v7, p0, v6}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$1;-><init>(Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;Landroid/net/Uri;)V

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4987
    :goto_3
    if-eqz v1, :cond_3

    .line 4989
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4990
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4991
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4994
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4995
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 4996
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4997
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4999
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7, v0}, Lcom/android/music/player/activity/MusicPlayer;->access$1002(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5079
    .end local v1           #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    .end local v4           #inAni:Landroid/view/animation/Animation;
    .end local v5           #outAni:Landroid/view/animation/Animation;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4886
    :cond_4
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 5073
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 5074
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

    goto :goto_4

    .line 4912
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v1       #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    .restart local v4       #inAni:Landroid/view/animation/Animation;
    .restart local v5       #outAni:Landroid/view/animation/Animation;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1800(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 4945
    .end local v6           #uri:Landroid/net/Uri;
    :cond_6
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getPrev()Landroid/net/Uri;

    move-result-object v6

    .line 4946
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mLaunchMode:I

    if-nez v7, :cond_7

    .line 4948
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v7}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v1

    .line 4950
    :cond_7
    if-nez v1, :cond_9

    .line 4951
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v8, "onFling(): getPrev > mCorePlayer.getCurrentAlbumInfo()==null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/music/player/activity/MusicPlayer;->access$1602(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4953
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_8

    .line 4954
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1700(Lcom/android/music/player/activity/MusicPlayer;Ljava/lang/Integer;Z)Landroid/graphics/Bitmap;

    .line 4955
    :cond_8
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v7}, Lcom/android/music/player/activity/MusicPlayer;->access$1600(Lcom/android/music/player/activity/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4959
    :goto_5
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4961
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040001

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 4962
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v7, v7, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 4963
    new-instance v7, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;

    invoke-direct {v7, p0, v6}, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener$2;-><init>(Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;Landroid/net/Uri;)V

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_3

    .line 4957
    :cond_9
    iget-object v7, p0, Lcom/android/music/player/activity/MusicPlayer$OnAlbumArtGestureListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v8, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbumID:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/music/player/activity/MusicPlayer;->access$1800(Lcom/android/music/player/activity/MusicPlayer;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5

    .line 5081
    .end local v0           #albumArt:Landroid/graphics/Bitmap;
    .end local v1           #albumInfo:Lcom/android/music/player/data/MusicAlbumInfo;
    .end local v4           #inAni:Landroid/view/animation/Animation;
    .end local v5           #outAni:Landroid/view/animation/Animation;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_a
    const-string v7, "MusicPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Player, Sweep (no fling) - dx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 5086
    .end local v2           #dx:I
    :cond_b
    const-string v7, "MusicPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Player, Sweep (Event null) -  Event1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Event2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
