.class public Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.super Landroid/app/Activity;
.source "LogsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;,
        Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_CLOSE_ITEM_RESULT:I = 0x2

.field private static final ANIMATION_SWEEP_CALL_ITEM_RESULT:I = 0x1

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACTS_ACTION_PHOTO_UPDATED:Ljava/lang/String; = "com.android.contacts.ContactPhotoUpdated"

.field public static final EX_KEY_VIEW_BY:Ljava/lang/String; = "ViewBy"

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field private static final QUERY_TOKEN:I = 0x35

.field private static final TAG:Ljava/lang/String; = "LogsListActivity"

.field private static final UPDATE_TOKEN:I = 0x36

.field public static final VIEW_BY_IDX_ALLCALLS:I = 0x0

.field public static final VIEW_BY_IDX_DIALLED:I = 0x2

.field public static final VIEW_BY_IDX_MISSED:I = 0x1

.field public static final VIEW_BY_IDX_RECEIVED:I = 0x3


# instance fields
.field private BackIcon:Landroid/widget/ImageView;

.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private CallIcon:Landroid/widget/ImageView;

.field private final IDX_CREATE:I

.field private final IDX_UPDATE:I

.field private MsgIcon:Landroid/widget/ImageView;

.field private final OPTION:Ljava/lang/String;

.field private Prevpos:I

.field private Prevpos2:I

.field private bAnimation:Z

.field private bResumeFromBackKey:Z

.field co:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

.field private iIntentOption:I

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mCursor:Landroid/database/Cursor;

.field mIsPause:Z

.field private mItemIndex:I

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mLogCnt:I

.field private mMainListView:Landroid/widget/ListView;

.field private mMaximumVelocity:I

.field private mPhotoUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

.field private mStrNumber:Ljava/lang/String;

.field private mTag:Ljava/lang/Integer;

.field private mTouchXPosition:F

.field private mTouchYPosition:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewByDlg:Landroid/app/AlertDialog;

.field private mVisiblePosition:I

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mWitchButton:I

.field private mstrName:Ljava/lang/String;

.field private scrollState:I

.field private touchInAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 171
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name_reversed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListState:Landroid/os/Parcelable;

    .line 106
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVisiblePosition:I

    .line 107
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    .line 115
    const-string v0, "OPTION"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->OPTION:Ljava/lang/String;

    .line 116
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->iIntentOption:I

    .line 125
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->IDX_CREATE:I

    .line 126
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->IDX_UPDATE:I

    .line 130
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    .line 131
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mItemIndex:I

    .line 132
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCursor:Landroid/database/Cursor;

    .line 133
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mLogCnt:I

    .line 134
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bAnimation:Z

    .line 139
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    .line 150
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos:I

    .line 151
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos2:I

    .line 152
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->scrollState:I

    .line 154
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bResumeFromBackKey:Z

    .line 160
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mPhotoUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mIsPause:Z

    .line 693
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCallHandler:Landroid/os/Handler;

    .line 713
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 770
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 816
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mWitchButton:I

    .line 865
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_CALL:I

    .line 866
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_SENDMSG:I

    .line 867
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_EDITNUMBER:I

    .line 868
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_VIEWCONTACT:I

    .line 869
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_SAVECONTACT:I

    .line 870
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_BLOCKCONTACT:I

    .line 871
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 872
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CONTEXTMENU_REMOVELOG:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mLogCnt:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mLogCnt:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTag:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTag:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mItemIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListHasFocus:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListHasFocus:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mWitchButton:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->scrollState:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->iIntentOption:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->iIntentOption:I

    return p1
.end method

.method private closeItem(Landroid/view/View;Landroid/content/Context;I)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "pos"

    .prologue
    .line 1040
    const/high16 v0, 0x7f04

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1041
    .local v6, anim:Landroid/view/animation/Animation;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;IILandroid/view/View;Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1042
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->resetSwept()V

    .line 1044
    return-void
.end method

.method private closeSweptItem()V
    .locals 6

    .prologue
    const v5, 0x7f06002c

    .line 1047
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v1

    .line 1048
    .local v1, sweptPos:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v1, v4

    .line 1053
    .local v0, pos:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1054
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1057
    const/4 v2, 0x0

    .line 1058
    .local v2, textAni:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textAni:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1060
    .restart local v2       #textAni:Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1061
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->closeItem(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private openSaveToDialog()V
    .locals 3

    .prologue
    .line 824
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050001

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 839
    return-void
.end method

.method private openViewByDialog()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 821
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 659
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private setObservier()V
    .locals 4

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 698
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

    .line 699
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 700
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    const-string v7, "date DESC"

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->setLoading(Z)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->cancelOperation(I)V

    .line 669
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mWitchButton:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 691
    :cond_1
    return-void

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v5, "type=3"

    const-string v6, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v5, "type=2"

    const-string v6, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v5, "type=1"

    const-string v6, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public detectFling(IFFFFFF)Z
    .locals 18
    .parameter "dx"
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 477
    const/4 v12, 0x0

    .line 478
    .local v12, textAni:Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    .line 479
    .local v4, bSame:Z
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    const/16 v16, 0x64

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object v15, v0

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v6

    .line 483
    .local v6, itemPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v10

    .line 485
    .local v10, sweptPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v15

    sub-int v8, v6, v15

    .line 490
    .local v8, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object v15, v0

    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v9, v15, v16

    .line 492
    .local v9, pos2:I
    if-eq v8, v9, :cond_0

    .line 493
    const/4 v15, 0x0

    .line 566
    .end local v6           #itemPos:I
    .end local v8           #pos:I
    .end local v9           #pos2:I
    .end local v10           #sweptPos:I
    .end local p1
    :goto_0
    return v15

    .line 495
    .restart local v6       #itemPos:I
    .restart local v8       #pos:I
    .restart local v9       #pos2:I
    .restart local v10       #sweptPos:I
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos:I

    move v15, v0

    if-ne v15, v8, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos2:I

    move v15, v0

    if-ne v15, v9, :cond_1

    .line 496
    const/4 v4, 0x1

    .line 499
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 502
    .local v13, view:Landroid/view/View;
    if-nez v13, :cond_2

    .line 503
    const/4 v15, 0x0

    goto :goto_0

    .line 506
    :cond_2
    const v15, 0x7f060027

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #textAni:Landroid/widget/RelativeLayout;
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 510
    .restart local v12       #textAni:Landroid/widget/RelativeLayout;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 511
    .local v5, iTag:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 512
    const v15, 0x7f060038

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 513
    .local v14, viewNumber:Ljava/lang/String;
    const v15, 0x7f060038

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090030

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 516
    const/4 v15, 0x0

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090031

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 518
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 519
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090032

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 520
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 522
    :cond_5
    const/4 v15, 0x0

    cmpl-float v15, p6, v15

    if-lez v15, :cond_9

    .line 523
    if-ne v10, v6, :cond_6

    .line 524
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 526
    :cond_6
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bAnimation:Z

    .line 527
    const v15, 0x7f060028

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->MsgIcon:Landroid/widget/ImageView;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->MsgIcon:Landroid/widget/ImageView;

    move-object v15, v0

    const v16, 0x7f0200fe

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 529
    const v15, 0x7f060029

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CallIcon:Landroid/widget/ImageView;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->CallIcon:Landroid/widget/ImageView;

    move-object v15, v0

    const v16, 0x7f020100

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 531
    const v15, 0x7f06002a

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->BackIcon:Landroid/widget/ImageView;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->BackIcon:Landroid/widget/ImageView;

    move-object v15, v0

    const v16, 0x7f0200fc

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 533
    const v15, 0x7f06002b

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 534
    .local v11, text:Landroid/widget/TextView;
    const v15, 0x7f060034

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    sget-boolean v15, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    move v15, v0

    if-nez v15, :cond_7

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->closeSweptItem()V

    .line 543
    const v15, 0x7f06002c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->showCallAnimation(Landroid/view/View;Landroid/content/Context;I)V

    .line 545
    :cond_7
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos:I

    .line 546
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->Prevpos2:I

    .line 562
    .end local v7           #name:Ljava/lang/String;
    .end local v11           #text:Landroid/widget/TextView;
    :cond_8
    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 548
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bAnimation:Z

    move v15, v0

    if-eqz v15, :cond_a

    if-eqz v4, :cond_a

    .line 549
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bAnimation:Z

    .line 550
    const v15, 0x7f06002c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #textAni:Landroid/widget/RelativeLayout;
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 552
    .restart local v12       #textAni:Landroid/widget/RelativeLayout;
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    sget-boolean v15, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    move v15, v0

    if-nez v15, :cond_8

    .line 556
    const v15, 0x7f06002c

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->closeItem(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_1

    .line 559
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 564
    .end local v14           #viewNumber:Ljava/lang/String;
    .restart local p1
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 566
    .end local v5           #iTag:Ljava/lang/Integer;
    .end local v6           #itemPos:I
    .end local v8           #pos:I
    .end local v9           #pos2:I
    .end local v10           #sweptPos:I
    .end local v13           #view:Landroid/view/View;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 417
    const/16 v16, 0x0

    .line 419
    .local v16, retVal:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 420
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 422
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 425
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 426
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 428
    .local v8, y:F
    packed-switch v11, :pswitch_data_0

    .line 472
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 430
    :pswitch_1
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchXPosition:F

    .line 431
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchYPosition:F

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v12

    .line 433
    .local v12, curSweptItem:I
    const/4 v3, -0x1

    if-eq v12, v3, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchXPosition:F

    move v4, v0

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchYPosition:F

    move v5, v0

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v15

    .line 435
    .local v15, position:I
    if-eq v15, v12, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->closeSweptItem()V

    goto :goto_0

    .line 445
    .end local v12           #curSweptItem:I
    .end local v15           #position:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    .line 446
    .local v17, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMaximumVelocity:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, v17

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 447
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v13, v3

    .line 448
    .local v13, initialXVelocity:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v14, v3

    .line 449
    .local v14, initialYVelocity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchXPosition:F

    move v3, v0

    sub-float v18, v3, v6

    .line 451
    .local v18, xMove:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->scrollState:I

    move v3, v0

    if-nez v3, :cond_2

    .line 453
    move/from16 v0, v18

    float-to-int v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchXPosition:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchYPosition:F

    move v7, v0

    int-to-float v9, v13

    int-to-float v10, v14

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->detectFling(IFFFFFF)Z

    move-result v16

    .line 457
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 459
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 461
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchXPosition:F

    .line 462
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTouchYPosition:F

    .line 464
    if-eqz v16, :cond_4

    .line 465
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 467
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getIsPause()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mIsPause:Z

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v5, "_id"

    .line 980
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 982
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1036
    :goto_0
    return v13

    .line 984
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->openSaveToDialog()V

    goto :goto_0

    .line 995
    :pswitch_3
    const/4 v7, -0x1

    .line 996
    .local v7, contact_Id:I
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v5, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 999
    .local v10, phonesCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1000
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1001
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1002
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1004
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1007
    :cond_1
    invoke-static {p0, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_0

    .line 1011
    .end local v7           #contact_Id:I
    .end local v10           #phonesCursor:Landroid/database/Cursor;
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :pswitch_7
    const-string v11, "_id=?"

    .line 1024
    .local v11, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1025
    .local v8, iColumnIndex:I
    const/4 v9, 0x0

    .line 1026
    .local v9, iItemIndex:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 1027
    .local v6, c:Landroid/database/Cursor;
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mItemIndex:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1028
    const-string v0, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1029
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 596
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->requestWindowFeature(I)Z

    .line 597
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->setContentView(I)V

    .line 599
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 600
    const v2, 0x7f0600d8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    .line 601
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 605
    :cond_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;

    .line 606
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 611
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMaximumVelocity:I

    .line 613
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f05

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mWitchButton:I

    new-instance v5, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 623
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 624
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 625
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    .line 626
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 646
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.contacts.ContactPhotoUpdated"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mPhotoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 893
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mItemIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->isSweptView(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mTag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 901
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f090037

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 976
    :cond_2
    :goto_0
    return-void

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 908
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f090037

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 918
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 919
    .local v7, menu_call:Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 922
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f09001a

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 923
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const v3, 0x7f090016

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 926
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 929
    .local v8, phonesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    .line 930
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 931
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const v3, 0x7f090017

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 935
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 953
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 954
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 955
    .local v9, where:Ljava/lang/StringBuffer;
    const-string v0, "reject_number=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 956
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "reject_number"

    aput-object v1, v2, v0

    .line 957
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mStrNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 961
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    .line 968
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 974
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #where:Ljava/lang/StringBuffer;
    :cond_6
    :goto_4
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f090037

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 915
    .end local v7           #menu_call:Ljava/lang/String;
    .end local v8           #phonesCursor:Landroid/database/Cursor;
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 933
    .restart local v7       #menu_call:Ljava/lang/String;
    .restart local v8       #phonesCursor:Landroid/database/Cursor;
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const v3, 0x7f090018

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 937
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const v3, 0x7f090018

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 970
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #where:Ljava/lang/StringBuffer;
    :cond_a
    const-string v0, "LogsLisActivity"

    const-string v1, "onCreateContextMenu - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 791
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 793
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 794
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 795
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 574
    const-string v0, "LogsListActivity"

    const-string v1, "..... Calling onDestroy ....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mPhotoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearCache()V

    .line 589
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 590
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 383
    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const/16 v4, 0x5f

    if-ne p1, v4, :cond_3

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    .line 386
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 410
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return v4

    .line 389
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_1
    const-string v4, "number"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, idxNumber:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, number:Ljava/lang/String;
    const-string v4, "-2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 396
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 397
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_4

    .line 398
    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    .line 399
    goto :goto_0

    .line 402
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const v4, 0x7f090011

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 403
    goto :goto_0

    .line 406
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #idxNumber:I
    .end local v2           #number:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 407
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bResumeFromBackKey:Z

    move v4, v6

    .line 408
    goto :goto_0

    .line 410
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, i:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 862
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 846
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->openViewByDialog()V

    move v1, v3

    .line 847
    goto :goto_0

    .line 852
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-class v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "ViewBy"

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mWitchButton:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v3

    .line 855
    goto :goto_0

    .line 858
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-class v1, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 859
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 860
    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "LogsListActivity"

    const-string v1, "..... Calling onPause ....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "liststate"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "focused"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mIsPause:Z

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->stopRequestProcessing()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->closeOptionsMenu()V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 342
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0600e6

    const v4, 0x7f0200dc

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 800
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->iIntentOption:I

    if-ne v0, v2, :cond_0

    move v0, v3

    .line 813
    :goto_0
    return v0

    .line 803
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 804
    const v0, 0x7f0600e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 805
    const v0, 0x7f0600e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 806
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mLogCnt:I

    if-eqz v0, :cond_1

    .line 807
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 811
    :goto_1
    const v0, 0x7f0600e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v2

    .line 813
    goto :goto_0

    .line 809
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListState:Landroid/os/Parcelable;

    .line 312
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListHasFocus:Z

    .line 313
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 347
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mIsPause:Z

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "liststate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListState:Landroid/os/Parcelable;

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "focused"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mListHasFocus:Z

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->setObservier()V

    .line 353
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->resetNewCallsFlag()V

    .line 354
    const-string v0, "LogsListActivity"

    const-string v1, "Calling onResume ... Calling setCallLogAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    .line 356
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bResumeFromBackKey:Z

    if-eqz v0, :cond_1

    .line 357
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->bResumeFromBackKey:Z

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startQuery()V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearCache()V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->resetSwept()V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearCache()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->startRequestProcessing()V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->checkBitmapCacheConsistency()V

    .line 378
    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 302
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    const-string v0, "focused"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mVisiblePosition:I

    .line 305
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 282
    const-string v1, "LogsListActivity"

    const-string v2, "..... Calling onStart ....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 285
    const-string v1, "OPTION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->iIntentOption:I

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->touchInAnimation:Z

    .line 289
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    .line 291
    sget-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 292
    const-string v1, "MM-dd-yyyy"

    sput-object v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 296
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasFocus"

    .prologue
    const-string v4, "LogsListActivity"

    .line 876
    if-eqz p1, :cond_0

    .line 878
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 879
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 880
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 889
    return-void

    .line 882
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    const-string v2, "LogsListActivity"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 884
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 885
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LogsListActivity"

    const-string v2, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected showCallAnimation(Landroid/view/View;Landroid/content/Context;I)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "pos"

    .prologue
    .line 272
    const v0, 0x7f040008

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 273
    .local v6, anim:Landroid/view/animation/Animation;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;IILandroid/view/View;Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->setSwept(I)V

    .line 276
    return-void
.end method
