.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field static displayDensity:F


# instance fields
.field private final REFRESH_PROGRESSBAR_DELAY:I

.field private endX:I

.field private endY:I

.field private isOnCall:Z

.field private isdelmessage:Z

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFinishAfterPlay:Z

.field private mFlick:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerRefresh:Landroid/os/Handler;

.field private mHasDrmMedia:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerController;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mShowController:Z

.field public mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerStart:Ljava/lang/Runnable;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private mVolumeLevel:I

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

.field private slideShowFinished:Z

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field private view:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isdelmessage:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishAfterPlay:Z

    .line 165
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->REFRESH_PROGRESSBAR_DELAY:I

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 400
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 485
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1181
    return-void
.end method

.method private SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .parameter "showModel"

    .prologue
    .line 408
    move-object v0, p1

    .line 409
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->slideShowFinished:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFinishAfterPlay:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isdelmessage:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->isdelmessage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideshowActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method private accquireWakeLock()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1275
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 596
    return-void
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1199
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1200
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$7;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;)V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1232
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1233
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1235
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1262
    if-eqz v3, :cond_0

    .line 1264
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v2

    .line 1267
    :goto_0
    return-object v1

    .line 1239
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1243
    new-instance v7, Lcom/android/mms/ui/SlideshowActivity$9;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v7, p0, v1, v2, v5}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;IFZ)V

    .line 1249
    .local v7, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1250
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v6, item:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_4

    .line 1255
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1257
    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1262
    :goto_1
    if-eqz v3, :cond_2

    .line 1264
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v0

    .line 1267
    goto :goto_0

    .line 1262
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v7           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v3, :cond_3

    .line 1264
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1262
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 1259
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v6

    .end local v6           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1111
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1112
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1113
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1114
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1115
    const/4 v0, 0x1

    .line 1116
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1117
    const/4 v1, 0x0

    .line 1118
    iget v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1123
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    .line 1124
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v7, 0x1

    move v5, v7

    .line 1125
    :goto_1
    return v5

    .line 1124
    :cond_3
    const/4 v7, 0x0

    move v5, v7

    goto :goto_1
.end method

.method private getHasVideoInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 3
    .parameter "slides"

    .prologue
    .line 1099
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1100
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    const/4 v2, 0x1

    .line 1105
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsPlayerController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setAnchorView(Landroid/view/View;)V

    .line 508
    return-void
.end method

.method private initializeViewComponents()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 345
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 347
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewStub;

    .line 348
    .local v10, stub:Landroid/view/ViewStub;
    if-eqz v10, :cond_2

    .line 349
    invoke-virtual {v10}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->view:Lcom/android/mms/ui/SlideView;

    .line 357
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->view:Lcom/android/mms/ui/SlideView;

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->view:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->setOrientationBaseView()V

    .line 360
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    .line 363
    .local v8, size:I
    if-ne v8, v12, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    sub-int v1, v8, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 365
    new-instance v9, Lcom/android/mms/model/SlideModel;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v9, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 366
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v9}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 373
    .end local v8           #size:I
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_1
    const/4 v11, 0x0

    .line 375
    .local v11, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, preSubject:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 377
    if-nez v11, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->view:Lcom/android/mms/ui/SlideView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v7           #preSubject:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 397
    :goto_3
    return-void

    .line 351
    .end local v11           #subject:Ljava/lang/String;
    :cond_2
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto/16 :goto_0

    .line 368
    .restart local v8       #size:I
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    sub-int v1, v8, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_1

    .line 381
    .end local v8           #size:I
    .restart local v11       #subject:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 382
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "Cannot display the slide title."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 395
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_3
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 651
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 652
    .local v0, msgUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 7
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 659
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 661
    :goto_0
    return v0

    .line 660
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1280
    :cond_0
    return-void
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 12
    .parameter "slides"
    .parameter "callback"

    .prologue
    .line 1129
    const/4 v3, 0x0

    .line 1130
    .local v3, hasDrmMedia:Z
    const/4 v4, 0x1

    .line 1131
    .local v4, hasRight:Z
    const/4 v5, 0x0

    .line 1132
    .local v5, i:I
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v2, v10, [Ljava/lang/String;

    .line 1133
    .local v2, filePaths:[Ljava/lang/String;
    iget v10, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v1, v10, [Ljava/lang/String;

    .line 1134
    .local v1, fileNames:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/SlideModel;

    .line 1135
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 1136
    .local v8, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1137
    const/4 v3, 0x1

    .line 1138
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1139
    const/4 v4, 0x0

    .line 1140
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 1141
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    .line 1142
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1147
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1151
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0901a8

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1152
    const v10, 0x104000a

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;

    invoke-direct {v11, p0, v2, v1, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1153
    const v10, 0x1040009

    new-instance v11, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;

    invoke-direct {v11, p0, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1156
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void
.end method

.method private touchListener(IIII)V
    .locals 6
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v5, 0x14

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 931
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 933
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    .line 934
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 935
    if-gez v1, :cond_1

    .line 936
    const/4 v0, 0x1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 940
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 941
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v3, :cond_0

    .line 942
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    goto :goto_0
.end method

.method private updateControlButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1285
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1287
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1323
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1328
    .local v0, notification:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1329
    return-void

    .line 1292
    .end local v0           #notification:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1296
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1297
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1298
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1310
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1311
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1302
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1303
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1306
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1307
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1313
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1314
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1318
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 514
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 529
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 516
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    goto :goto_0

    .line 521
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    .line 523
    iget v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->touchListener(IIII)V

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 846
    move-object v0, p1

    .line 847
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1213
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1214
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$8;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/mms/ui/SlideshowActivity$8;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :goto_0
    monitor-exit p0

    return-void

    .line 1226
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 906
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 913
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    :cond_0
    if-eqz v0, :cond_1

    .line 920
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 921
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 922
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 926
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 185
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 187
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 189
    const-string v5, "audio"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    .line 196
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v12, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v5, v12, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 200
    const-string v5, "power"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 201
    .local v18, pm:Landroid/os/PowerManager;
    const v5, 0x2000000a

    const-string v6, "MMS viewer LCD on wakelock"

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 206
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 207
    .local v17, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v17           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 229
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setFormat(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 233
    .local v16, intent:Landroid/content/Intent;
    const-string v5, "msgId"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    .line 234
    const-string v5, "thread_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 237
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 242
    :goto_1
    const-string v5, "FINISH_AFTER_PLAY"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mFinishAfterPlay:Z

    .line 244
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 245
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 249
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v6, v0

    const-string v8, "mms"

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    new-instance v5, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v9, v0

    const-string v11, "mms"

    move-object/from16 v7, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 274
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 281
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    .line 282
    .local v19, slideCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v19

    .line 283
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    const/16 v6, 0x1388

    if-ge v5, v6, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideModel;->setDuration(I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 208
    .end local v15           #i:I
    .end local v16           #intent:Landroid/content/Intent;
    .end local v19           #slideCount:I
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 210
    .local v14, e1:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    .line 211
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v14           #e1:Landroid/os/RemoteException;
    .restart local v16       #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 251
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 252
    .local v13, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 340
    .end local v13           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_4
    return-void

    .line 277
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 288
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 289
    .local v13, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/SlideshowActivity"

    const-string v6, "Cannot present the slide show."

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_4

    .line 294
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .restart local v15       #i:I
    .restart local v19       #slideCount:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->initializeViewComponents()V

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    move v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getHasVideoInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901d6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_4

    .line 321
    :cond_6
    const-string v5, "SlideshowPresenter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->view:Lcom/android/mms/ui/SlideView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v7, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object p1

    check-cast p1, Lcom/android/mms/ui/SlideshowPresenter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 322
    const/4 v5, 0x0

    sput v5, Lcom/android/mms/ui/SlideshowPresenter;->currentSlide:I

    .line 323
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SlideshowActivity;->slideShowFinished:Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1081
    packed-switch p1, :pswitch_data_0

    .line 1091
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1083
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09019d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1088
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 718
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 719
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 723
    sparse-switch p1, :sswitch_data_0

    .line 753
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 757
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 727
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    goto :goto_0

    .line 739
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 723
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 762
    packed-switch p1, :pswitch_data_0

    .line 767
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 764
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->exitSlideshowActivity()V

    .line 765
    const/4 v0, 0x1

    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->isdelmessage:Z

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 895
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 896
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 901
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 628
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 876
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 878
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 881
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_2

    .line 615
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    .line 618
    :cond_2
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const-string v4, "Mms/SlideshowActivity"

    .line 632
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "mMsgUri not exist!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 648
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 642
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "mMsgId not exist!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 666
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 667
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 671
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    if-eqz v1, :cond_1

    .line 672
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v1, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 679
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v1, :cond_3

    .line 680
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 684
    :goto_0
    :try_start_0
    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_4

    .line 685
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_2

    .line 701
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    .line 704
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 705
    :goto_2
    return-void

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 687
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 689
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 690
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "Cannot present the slide show."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_2

    .line 697
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 497
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 501
    :cond_0
    return-void
.end method
