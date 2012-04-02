.class public Lcom/sec/android/app/videoplayer/activity/VideoList;
.super Landroid/app/Activity;
.source "VideoList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mListInfoArrayList:Ljava/util/ArrayList;
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
.field private final CHANGEVIEW:I

.field private MediaToast:Landroid/widget/Toast;

.field private SDToast:Landroid/widget/Toast;

.field private final TAG:Ljava/lang/String;

.field private mBatteryChecker:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mLeftButton:Landroid/widget/Button;

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLowBattery:Ljava/lang/Runnable;

.field private mLowBtteryPopup:Landroid/app/AlertDialog;

.field private mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMenu:Landroid/view/Menu;

.field private mOldPostion:I

.field private mPausing:Z

.field private mPopupLowBattShow:Z

.field private mPrevCheckBox:Landroid/widget/CheckBox;

.field private final mProcessingRemove:Landroid/os/Handler;

.field private mRightButton:Landroid/widget/Button;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSelectAllView:Landroid/view/View;

.field private mShowRestoreList:Z

.field private mSortType:I

.field private mThumbnailCreateThread:Ljava/lang/Thread;

.field private mThumbnailHandler:Landroid/os/Handler;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const-string v0, "VideoList"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->TAG:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mBatteryChecker:Landroid/os/AsyncTask;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailHandler:Landroid/os/Handler;

    .line 78
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->CHANGEVIEW:I

    .line 81
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    .line 82
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    .line 83
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I

    .line 84
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    .line 85
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z

    .line 86
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mShowRestoreList:Z

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRightButton:Landroid/widget/Button;

    .line 92
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->SDToast:Landroid/widget/Toast;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1221
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/VideoList$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$10;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;

    .line 1487
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/VideoList$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$14;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLowBattery:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getCheckBox(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPrevCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/activity/VideoList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mOldPostion:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->setSelectAllUnCheckView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/activity/VideoList;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->isSelectAllExist(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getSelectAllCheckView()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/db/VideoDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/activity/VideoList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/videoplayer/activity/VideoList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->SDToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/activity/VideoList;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->batteryCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/activity/VideoList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->createListInfoArrayList()V

    return-void
.end method

.method private addSelectAll()Landroid/view/View;
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 836
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 837
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f03000b

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 838
    .local v5, linearLayout:Landroid/view/View;
    const v10, 0x7f0a0021

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 839
    .local v0, checkListTextView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    const v11, 0x7f070001

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    const v10, 0x7f0a0022

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 842
    .local v1, checkbox:Landroid/widget/CheckBox;
    const-wide/16 v7, 0x0

    .line 843
    .local v7, mlong:J
    const/4 v2, 0x0

    .line 844
    .local v2, fileTotalCnt:I
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 846
    iget v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-eq v10, v14, :cond_0

    iget v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 848
    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_1

    .line 849
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 851
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v6

    .line 853
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 855
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 857
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v9, v10, v14

    .line 859
    .local v9, removeListCnt:I
    if-ne v9, v2, :cond_3

    .line 860
    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 872
    .end local v3           #i:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #removeListCnt:I
    :cond_2
    :goto_1
    return-object v5

    .line 863
    .restart local v3       #i:I
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #removeListCnt:I
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 864
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 853
    .end local v9           #removeListCnt:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v9, "batteryCheck : read in length is 0.."

    const-string v7, "VideoList"

    .line 1350
    .line 1354
    const/4 v0, 0x0

    .line 1355
    const-string v1, "/sys/class/power_supply/battery/charging_source"

    .line 1357
    const/4 v1, 0x0

    .line 1358
    new-array v2, v10, [B

    .line 1362
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1372
    if-eqz v1, :cond_0

    .line 1373
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v1, v8

    invoke-direct {v0, v2, v6, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1377
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1380
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1382
    const-string v1, "VideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batteryCheck : charging_source is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    if-nez v0, :cond_5

    move v0, v6

    move v1, v6

    .line 1388
    :goto_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 1390
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getVoltage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1375
    :cond_0
    const-string v1, "VideoList"

    const-string v1, "batteryCheck : read in length is 0.."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v3

    .line 1366
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1370
    throw v1

    move-result v3

    .line 1372
    if-eqz v3, :cond_1

    .line 1373
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v8

    invoke-direct {v0, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1377
    :goto_3
    throw v1

    goto :goto_1

    .line 1375
    :cond_1
    const-string v2, "VideoList"

    const-string v2, "batteryCheck : read in length is 0.."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1370
    :catchall_0
    move-exception v0

    throw v1

    move-result v3

    .line 1372
    if-eqz v3, :cond_2

    .line 1373
    new-instance v4, Ljava/lang/String;

    sub-int/2addr v3, v8

    invoke-direct {v4, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1377
    :goto_4
    throw v1

    throw v0

    .line 1375
    :cond_2
    const-string v2, "VideoList"

    const-string v2, "batteryCheck : read in length is 0.."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1393
    :catch_1
    move-exception v0

    .line 1395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1396
    const-string v2, "VideoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryCheck : IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_3
    div-int/lit8 v0, v1, 0x5

    if-gt v0, v10, :cond_4

    .line 1401
    const-string v0, "VideoList"

    const-string v0, "batteryCheck : Low Battery.."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1410
    :goto_5
    return v0

    :cond_4
    move v0, v8

    .line 1406
    goto :goto_5

    :cond_5
    move v0, v8

    .line 1410
    goto :goto_5
.end method

.method private changeListView(I)V
    .locals 1
    .parameter "listType"

    .prologue
    .line 805
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-eq v0, p1, :cond_0

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    .line 810
    :cond_0
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    .line 811
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setListType(I)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 816
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->initAdapter()V

    .line 817
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->initMainView()V

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startThumbnailCreateThread()V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    .line 822
    :cond_2
    return-void
.end method

.method private createListInfoArrayList()V
    .locals 9

    .prologue
    const-string v8, "VideoList"

    .line 952
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 954
    :cond_0
    const-string v5, "VideoList"

    const-string v5, "createListInfoArrayList() - mCursor null or count is 0"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_0
    return-void

    .line 958
    :cond_1
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 959
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 961
    :cond_2
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 962
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 966
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 968
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 970
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 971
    .local v3, id:J
    sget-object v5, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 968
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 975
    .end local v3           #id:J
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 993
    const-string v5, "VideoList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createListInfoArrayList() - size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 979
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "VideoList"

    const-string v5, "createListInfoArrayList - IllegalStateException"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 984
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    const-string v5, "VideoList"

    const-string v5, "createListInfoArrayList - UnsupportedOperationException"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 987
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 989
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v5, "VideoList"

    const-string v5, "createListInfoArrayList - CursorIndexOutOfBoundsException"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private createListbyPopup()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1293
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1297
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 1315
    :goto_0
    const v2, 0x7f040003

    new-instance v3, Lcom/sec/android/app/videoplayer/activity/VideoList$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$11;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1344
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1346
    return-void

    .line 1300
    :pswitch_0
    const/4 v1, 0x0

    .line 1301
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 1304
    goto :goto_0

    .line 1306
    :pswitch_2
    const/4 v1, 0x2

    .line 1307
    goto :goto_0

    .line 1309
    :pswitch_3
    const/4 v1, 0x3

    .line 1310
    goto :goto_0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getCheckBox(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "view"

    .prologue
    .line 911
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 913
    .local v4, viewGroup:Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 915
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 917
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 919
    .local v3, v:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 921
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 923
    move-object v0, v3

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .local v1, checkbox:Landroid/widget/CheckBox;
    move-object v5, v1

    .line 929
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :goto_1
    return-object v5

    .line 915
    .restart local v2       #i:I
    .restart local v3       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getSelectAllCheckView()Landroid/widget/CheckBox;
    .locals 6

    .prologue
    .line 888
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 890
    .local v4, viewGroup:Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 892
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 894
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 896
    .local v3, v:Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 900
    move-object v0, v3

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .local v1, checkbox:Landroid/widget/CheckBox;
    move-object v5, v1

    .line 906
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :goto_1
    return-object v5

    .line 892
    .restart local v2       #i:I
    .restart local v3       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 1416
    .line 1417
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 1423
    new-array v0, v2, [B

    move v1, v5

    .line 1425
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1427
    aput-byte v5, v0, v1

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1432
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1443
    if-eqz v2, :cond_3

    .line 1445
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v3

    .line 1448
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1451
    :goto_2
    return-object v0

    .line 1434
    :catch_0
    move-exception v1

    .line 1436
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1437
    const-string v2, "VideoList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoltage : FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    throw v7

    move-result v1

    .line 1443
    if-eqz v1, :cond_2

    .line 1445
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v6

    invoke-direct {v2, v0, v5, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    .line 1448
    :goto_3
    throw v7

    goto :goto_2

    .line 1441
    :catchall_0
    move-exception v1

    throw v7

    move-result v2

    .line 1443
    if-eqz v2, :cond_1

    .line 1445
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v2, v6

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1448
    :cond_1
    throw v7

    throw v1

    :cond_2
    move-object v0, v7

    goto :goto_3

    :cond_3
    move-object v0, v7

    goto :goto_1
.end method

.method private getviewIds()[I
    .locals 3

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, viewIds:[I
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 800
    :goto_0
    return-object v0

    .line 793
    :pswitch_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 794
    const/4 v1, 0x0

    const v2, 0x7f0a0016

    aput v2, v0, v1

    .line 795
    const/4 v1, 0x1

    const v2, 0x7f0a0019

    aput v2, v0, v1

    goto :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$9;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1219
    return-void
.end method

.method private inNotifyDataSetChanged(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1195
    move v0, p1

    .line 1197
    .local v0, pos:I
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/VideoList$8;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList$8;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    return-void
.end method

.method private initAdapter()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const-string v10, "VideoList"

    .line 424
    const/4 v7, 0x0

    .line 426
    .local v7, allTotalCnt:I
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v1, :cond_2

    .line 427
    const v3, 0x7f030008

    .line 431
    .local v3, layoutId:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 438
    const-string v1, "VideoList"

    const-string v1, "initAdapter() - mCursor is not null"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 440
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    .line 443
    :cond_1
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSortType(I)V

    .line 444
    const-string v1, "VideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAdapter() - mListType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSortType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v1, "VideoList"

    const-string v1, "initAdapter() - NOT support INTERNAL_SD."

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v9, 0x0

    .line 456
    .local v9, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 458
    const-string v1, "mounted"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(II)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    .line 464
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 467
    const-string v1, "VideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAdapter() - Cursor Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_2
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v1, :cond_6

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorRestore()Landroid/database/Cursor;

    move-result-object v8

    .line 476
    .local v8, restoreCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5

    if-nez v8, :cond_5

    .line 479
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startNoActivity(I)V

    .line 498
    .end local v8           #restoreCursor:Landroid/database/Cursor;
    :goto_3
    return-void

    .line 429
    .end local v3           #layoutId:I
    .end local v9           #status:Ljava/lang/String;
    :cond_2
    const v3, 0x7f030009

    .restart local v3       #layoutId:I
    goto/16 :goto_0

    .line 461
    .restart local v9       #status:Ljava/lang/String;
    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 470
    :cond_4
    const-string v1, "VideoList"

    const-string v1, "initAdapter() - mCursor is null."

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 483
    .restart local v8       #restoreCursor:Landroid/database/Cursor;
    :cond_5
    if-nez v7, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mShowRestoreList:Z

    if-nez v1, :cond_6

    .line 485
    const-string v1, "VideoList"

    const-string v1, "initAdapter() - SD card exist. But file is 0."

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startNoActivity(I)V

    goto :goto_3

    .line 491
    .end local v8           #restoreCursor:Landroid/database/Cursor;
    :cond_6
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/ListType;->getViewColums(I)[Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, columns:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getviewIds()[I

    move-result-object v6

    .line 494
    .local v6, viewIds:[I
    new-instance v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 497
    .local v0, videoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    goto :goto_3
.end method

.method private initMainView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 502
    const/4 v0, -0x1

    .line 504
    .local v0, layoutId:I
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v2, :cond_4

    .line 505
    const v0, 0x7f030007

    .line 509
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->setContentView(I)V

    .line 510
    const v2, 0x7f0a0012

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    .line 512
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 515
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v2, v5, :cond_3

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->addSelectAll()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 522
    const v2, 0x7f0a0024

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v1

    .line 527
    .local v1, selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v2, v4, :cond_6

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 532
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 537
    :goto_2
    const v2, 0x7f0a0025

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRightButton:Landroid/widget/Button;

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRightButton:Landroid/widget/Button;

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .end local v1           #selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    const/high16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 546
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->setTouchListenr()V

    .line 547
    return-void

    .line 506
    :cond_4
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-eq v2, v4, :cond_5

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v2, v5, :cond_0

    .line 507
    :cond_5
    const v0, 0x7f030006

    goto/16 :goto_0

    .line 529
    .restart local v1       #selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v2, v5, :cond_2

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 535
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private isSelectAllExist(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 828
    .local v0, is:Z
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 831
    :cond_0
    return v0
.end method

.method private popupLowBattery(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z

    if-nez v0, :cond_0

    .line 1458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z

    .line 1460
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1461
    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1463
    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/VideoList$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$12;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1472
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$13;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1481
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1484
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 1485
    return-void
.end method

.method private registerMediaReceiver()V
    .locals 2

    .prologue
    .line 209
    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$1;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method private removeFileToListInfoArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 999
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v4}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;)V

    .line 1000
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$5;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private restoreFileToListInfoArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1026
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1, v4}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;)V

    .line 1027
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->getInstance()Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$6;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/app/videoplayer/util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method private setSelectAllUnCheckView()V
    .locals 2

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getSelectAllCheckView()Landroid/widget/CheckBox;

    move-result-object v0

    .line 879
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 881
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 884
    :cond_0
    return-void
.end method

.method private setTouchListenr()V
    .locals 3

    .prologue
    .line 553
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/VideoList$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$2;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 776
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v1, :cond_1

    .line 778
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCurIdx()I

    move-result v0

    .line 780
    .local v0, curIdx:I
    if-ltz v0, :cond_1

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 783
    .end local v0           #curIdx:I
    :cond_1
    return-void

    .line 571
    :cond_2
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/VideoList$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$3;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/videoplayer/activity/VideoList$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$4;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method private startNoActivity(I)V
    .locals 3
    .parameter

    .prologue
    .line 1055
    const-string v0, "VideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNoActivity() - show sd card no activity. type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1057
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startActivity(Landroid/content/Intent;)V

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    .line 1060
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v0, v2, :cond_0

    .line 936
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->destroySelectedFileIdList()V

    .line 937
    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    move v0, v2

    .line 947
    :goto_0
    return v0

    .line 940
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 942
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->destroySelectedFileIdList()V

    .line 943
    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    move v0, v2

    .line 944
    goto :goto_0

    .line 947
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, 0x96

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1252
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mProcessingDone:Z

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1257
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v0, v1, :cond_1

    .line 1258
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1260
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->removeFileToListInfoArray()V

    goto :goto_0

    .line 1263
    :cond_1
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v0, v3, :cond_0

    .line 1265
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1268
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->restoreFileToListInfoArray()V

    goto :goto_0

    .line 1275
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-ne v0, v3, :cond_3

    .line 1276
    :cond_2
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->destroySelectedFileIdList()V

    .line 1279
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetInvalidated()V

    .line 1280
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    goto :goto_0

    .line 1253
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0024
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1246
    const-string v0, "VideoList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfiguraionchanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v3, "VideoList"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0, v6}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, settings:Landroid/content/SharedPreferences;
    iput v6, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    .line 109
    const-string v3, "ListSortType"

    const/4 v4, 0x4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 112
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->createSelectedFileIdList()V

    .line 113
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->clearCachedBitmap()V

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, app:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    const v4, 0x7f07005e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->SDToast:Landroid/widget/Toast;

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;

    const v4, 0x7f07003a

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "VideoList_Restore"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mShowRestoreList:Z

    .line 123
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/VideoList;->setVolumeControlStream(I)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 347
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMenu:Landroid/view/Menu;

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "VideoList"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    .line 328
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->destroySelectedFileIdList()V

    .line 329
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->clearCachedBitmap()V

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menuItem"

    .prologue
    const/4 v1, 0x1

    .line 403
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 406
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    move v0, v1

    .line 407
    goto :goto_0

    .line 410
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    move v0, v1

    .line 411
    goto :goto_0

    .line 414
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->createListbyPopup()V

    move v0, v1

    .line 415
    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x7f0a004b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    const-string v0, "VideoList"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mBatteryChecker:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mBatteryChecker:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mBatteryChecker:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const-string v7, "VideoList"

    .line 353
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 355
    const/4 v3, 0x0

    .line 356
    .local v3, restoreCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 357
    .local v1, iAllListCnt:I
    const/4 v2, 0x0

    .line 359
    .local v2, iRestoreCnt:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v4, :cond_0

    .line 361
    const-string v4, "VideoList"

    const-string v4, "onPrepareOptionsMenu() - mVideoDB is null"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 398
    :goto_0
    return v4

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursorRestore()Landroid/database/Cursor;

    move-result-object v3

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 370
    :cond_1
    if-eqz v3, :cond_2

    .line 372
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 373
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_2
    const-string v4, "VideoList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareOptionsMenu() - restore list count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move v4, v6

    .line 379
    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 383
    .local v0, i:Landroid/view/MenuInflater;
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I

    if-nez v4, :cond_4

    .line 385
    if-lez v1, :cond_6

    .line 387
    if-lez v2, :cond_5

    .line 388
    const v4, 0x7f090001

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    goto :goto_0

    .line 390
    :cond_5
    const v4, 0x7f090002

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 392
    :cond_6
    if-lez v2, :cond_7

    .line 393
    const v4, 0x7f090003

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_7
    move v4, v6

    .line 395
    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "VideoList"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "VideoList"

    .line 134
    const-string v2, "VideoList"

    const-string v2, "onResume()"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkMediaScannerRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->MediaToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLowBatteryFinishVideoPlayer:Z

    if-eqz v2, :cond_2

    .line 150
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->batteryCheck()Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    const-string v2, "VideoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() BatteryChecker IOException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const/4 v1, 0x0

    .line 172
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    :cond_4
    const-string v2, "VideoList"

    const-string v2, "onResume() - NOT support INTERNAL_SD and SD card not exist."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startNoActivity(I)V

    goto :goto_0

    .line 184
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mShowRestoreList:Z

    if-eqz v2, :cond_6

    .line 187
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V

    .line 188
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mShowRestoreList:Z

    .line 201
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->registerMediaReceiver()V

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 192
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    :cond_7
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->initAdapter()V

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->initMainView()V

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startThumbnailCreateThread()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "VideoList"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->saveActivityPreferences()V

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 313
    return-void
.end method

.method protected saveActivityPreferences()V
    .locals 4

    .prologue
    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 337
    .local v1, myPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 339
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ListSortType"

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    return-void
.end method

.method public declared-synchronized startThumbnailCreateThread()V
    .locals 2

    .prologue
    const-string v0, "VideoList"

    .line 1064
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoList"

    const-string v1, "startThumbnailCreateThread() - start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1068
    const-string v0, "VideoList"

    const-string v1, "startThumbnailCreateThread() - mThumbnailCreateThread not null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1072
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/VideoList$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$7;-><init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList;->mThumbnailCreateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    monitor-exit p0

    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
