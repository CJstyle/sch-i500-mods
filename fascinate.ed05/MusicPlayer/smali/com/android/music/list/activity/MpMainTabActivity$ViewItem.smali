.class Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewItem"
.end annotation


# instance fields
.field NaturalNumber:Z

.field mContentChange:Z

.field mCursor:Landroid/database/Cursor;

.field mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field mGridListExchage:I

.field mGridView:Lcom/android/music/list/view/MpListGridView;

.field mListPosition:I

.field mListView:Lcom/android/music/list/view/AbstractMpListView;

.field mMountChange:Z

.field mNoTracks:Landroid/view/View;

.field mOptionMenuGridList:I

.field mScrollView:Landroid/widget/LinearLayout;

.field playerButton:Landroid/widget/Button;

.field playerButtonLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 2125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/list/activity/MpMainTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2116
    invoke-direct {p0, p1}, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    return-void
.end method


# virtual methods
.method clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2136
    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2137
    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    .line 2138
    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 2139
    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    .line 2143
    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButton:Landroid/widget/Button;

    .line 2145
    return-void
.end method
