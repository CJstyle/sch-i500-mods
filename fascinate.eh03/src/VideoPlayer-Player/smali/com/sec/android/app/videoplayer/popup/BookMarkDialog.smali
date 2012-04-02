.class public Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;
.super Landroid/app/Dialog;
.source "BookMarkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mBookMarkArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ExceptThumnail:Z

.field private before_setting:Z

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mLeftButton:Landroid/view/View$OnClickListener;

.field private mLeftSk:Landroid/widget/Button;

.field private mListType:I

.field private mOldPostion:I

.field private mPausing:Z

.field private mPrevCheckBox:Landroid/widget/CheckBox;

.field private final mRightButton:Landroid/view/View$OnClickListener;

.field private mRightSk:Landroid/widget/Button;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mThumbnailCreateThread:Ljava/lang/Thread;

.field private mThumbnailHandler:Landroid/os/Handler;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoId:J

.field private m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

.field private nonebookmark:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    .line 41
    sput-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x400

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailHandler:Landroid/os/Handler;

    .line 44
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 46
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightSk:Landroid/widget/Button;

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 52
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    .line 55
    iput v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I

    .line 56
    iput v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    .line 58
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mFilePath:Ljava/lang/String;

    .line 59
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z

    .line 60
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->before_setting:Z

    .line 61
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    .line 311
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightButton:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$4;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftButton:Landroid/view/View$OnClickListener;

    .line 349
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->exitDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->getCheckBox(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->deleteBookmarkListArrayList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->inNotifyDataSetChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPrevCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mOldPostion:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->changeListView(I)V

    return-void
.end method

.method private changeListView(I)V
    .locals 2
    .parameter "mList"

    .prologue
    .line 417
    const-string v0, "BookMarkDialog"

    const-string v1, "changeListView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    if-eq v0, p1, :cond_0

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z

    .line 422
    :cond_0
    iput p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->init()V

    .line 426
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->initGridView()V

    .line 428
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    if-nez v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->startThumbnailCreateThread()V

    .line 430
    :cond_1
    return-void
.end method

.method private deleteBookmarkListArrayList()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    .local v0, checkedIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->deleteBookmark(JLjava/util/ArrayList;)I

    .line 405
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v4

    .line 412
    :goto_0
    return v1

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->nonebookmark:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->nonebookmark:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private exitDialog()V
    .locals 4

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->before_setting:Z

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->before_setting:Z

    .line 120
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->dismiss()V

    .line 133
    return-void

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BookMarkDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCheckBox(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "view"

    .prologue
    .line 380
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 381
    .local v4, viewGroup:Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 383
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 385
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, v:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 391
    move-object v0, v3

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .local v1, checkbox:Landroid/widget/CheckBox;
    move-object v5, v1

    .line 397
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :goto_1
    return-object v5

    .line 383
    .restart local v2       #i:I
    .restart local v3       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private inNotifyDataSetChanged(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 539
    move v0, p1

    .line 540
    .local v0, pos:I
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    .line 137
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->setContentView(I)V

    .line 138
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRootView:Landroid/widget/LinearLayout;

    .line 139
    const v2, 0x7f030002

    .line 141
    .local v2, layoutId:I
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v3, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v9

    .line 145
    .local v9, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v9, :cond_0

    .line 146
    sput-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    .line 148
    .end local v9           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    const-string v0, "BookMarkDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init - mBookMarkArrayList size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    iget-wide v4, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mFilePath:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    sget-object v8, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;-><init>(Landroid/content/Context;IIJLjava/lang/String;ZLjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->list:Ljava/util/ArrayList;

    .line 152
    sget-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->exitDialog()V

    .line 154
    :cond_1
    return-void
.end method

.method private initGridView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    .line 161
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightSk:Landroid/widget/Button;

    .line 163
    iget v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    if-ne v1, v3, :cond_1

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    const v2, 0x7f070028

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightSk:Landroid/widget/Button;

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mRightSk:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    if-ne v1, v3, :cond_3

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    :goto_1
    return-void

    .line 165
    :cond_1
    iget v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, cnt:I
    if-lez v0, :cond_2

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mLeftSk:Landroid/widget/Button;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 208
    .end local v0           #cnt:I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$2;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method


# virtual methods
.method public initdatas(J)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->before_setting:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z

    .line 97
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    .line 98
    iput v5, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mVideoId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mFilePath:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->list:Ljava/util/ArrayList;

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f070035

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->nonebookmark:Landroid/widget/Toast;

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 106
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->init()V

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->initGridView()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->startThumbnailCreateThread()V

    .line 110
    return-void

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    const-string v1, "BookMarkDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 535
    return-void
.end method

.method public declared-synchronized startThumbnailCreateThread()V
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;-><init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mThumbnailCreateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
