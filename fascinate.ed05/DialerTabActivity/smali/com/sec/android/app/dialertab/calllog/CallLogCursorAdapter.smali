.class public Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;,
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CALL:I = 0x1

.field public static final ACTION_MSG:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field public static final CALL_ITEM_VIEW:I = 0x1

.field private static final CALL_VIEW_TIME:I = 0x96

.field public static final CLOSE_ITEM:I = 0x1

.field public static final CONTACT_PHOTO_PROJECTION:[Ljava/lang/String; = null

.field private static final FETCH_IMAGE_MSG:I = 0x1

.field public static final MSG_ITEM_VIEW:I = 0x2

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final REDRAW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CallLogCursorAdapter"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field public static final UPDATE_ITEM:I = 0x2

.field private static sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

.field public static touchInAnimation:Z


# instance fields
.field private hasRedrawMessage:Z

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCalendar:Ljava/util/Calendar;

.field private mCallerIdThread:Ljava/lang/Thread;

.field final mContactInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field public mCurrentSweptView:Landroid/view/View;

.field mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

.field private volatile mDone:Z

.field private mFirst:Z

.field public mHandler:Landroid/os/Handler;

.field private mImageFetchHandler:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

.field private mImageFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;

.field public mIsReverseName:Z

.field private mItemsMissingImages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Z

.field private mOwnerActivity:Landroid/app/Activity;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field mScrollStatus:I

.field private mSweptId:J

.field private mTimer:Ljava/util/Timer;

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    .line 98
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    .line 120
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "photo_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->CONTACT_PHOTO_PROJECTION:[Ljava/lang/String;

    .line 188
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6
    .parameter "context"
    .parameter "act"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 439
    invoke-direct {p0, p1, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 85
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->INCORRECT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mSweptId:J

    .line 97
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mTimer:Ljava/util/Timer;

    .line 101
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    .line 102
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    .line 103
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 105
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    .line 112
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mLoading:Z

    .line 118
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 128
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 129
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 132
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    .line 133
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->hasRedrawMessage:Z

    .line 134
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 441
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 443
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    .line 447
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mImageFetchHandler:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

    .line 448
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 451
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    .line 453
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    .line 457
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 459
    return-void

    :cond_0
    move v0, v4

    .line 455
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->hasRedrawMessage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/view/View;Landroid/content/Context;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->updateItem(Landroid/view/View;Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/view/View;Landroid/content/Context;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->handleItemButton(Landroid/view/View;Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mImageFetchHandler:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    return-object v0
.end method

.method private attachCallBtnListener(Landroid/database/Cursor;Landroid/view/View;I)V
    .locals 2
    .parameter "cursor"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 952
    const v1, 0x7f060028

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 953
    .local v0, callImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;

    invoke-direct {v1, p0, v0, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    return-void
.end method

.method private attachCloseItemBtnListener(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 934
    const v1, 0x7f06002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 935
    .local v0, closeImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    return-void
.end method

.method private attachMessageBtnListener(Landroid/database/Cursor;Landroid/view/View;I)V
    .locals 2
    .parameter "cursor"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 973
    const v1, 0x7f060029

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 974
    .local v0, msgImage:Landroid/widget/ImageView;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

    invoke-direct {v1, p0, v0, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    return-void
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "number"
    .parameter "name"
    .parameter "contactId"

    .prologue
    .line 328
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;-><init>()V

    .line 329
    .local v0, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    .line 330
    iput-wide p3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    .line 331
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    if-eqz v1, :cond_0

    .line 332
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    return-void

    .line 334
    :cond_0
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 10
    .parameter "date"

    .prologue
    const/16 v6, 0xa

    const-string v9, ":"

    const-string v8, "0"

    const-string v7, " "

    .line 804
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 806
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 807
    .local v3, min:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 808
    .local v0, ampm:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 810
    .local v1, dateBuffer:Ljava/lang/StringBuffer;
    sget-boolean v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    if-eqz v4, :cond_2

    .line 811
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 812
    .local v2, hour:I
    if-ge v2, v6, :cond_0

    .line 817
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 818
    const-string v4, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    if-ge v3, v6, :cond_1

    .line 820
    const-string v4, "0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 823
    const-string v4, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 825
    .end local v2           #hour:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 828
    .restart local v2       #hour:I
    if-nez v2, :cond_5

    .line 829
    const/16 v2, 0xc

    .line 838
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 839
    const-string v4, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    if-ge v3, v6, :cond_4

    .line 841
    const-string v4, "0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 844
    const-string v4, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    if-nez v0, :cond_6

    .line 846
    const-string v4, "AM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 833
    :cond_5
    if-ge v2, v6, :cond_3

    goto :goto_1

    .line 848
    :cond_6
    const-string v4, "PM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getSweptView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 867
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 868
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030001

    invoke-virtual {v9, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 869
    .local v8, view:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 870
    const v9, 0x7f06002c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 871
    .local v3, item:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 873
    const v9, 0x7f060027

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 874
    .local v6, section:Landroid/widget/RelativeLayout;
    const v9, 0x7f060028

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200fe

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 875
    const v9, 0x7f060029

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020100

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 876
    const v9, 0x7f06002a

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0200fc

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 877
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    const v9, 0x7f06002b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 882
    .local v7, text:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, number:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, Logname:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 887
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 890
    .local v0, ContactId:Ljava/lang/Integer;
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 892
    .local v2, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-nez v2, :cond_2

    .line 895
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 896
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {p0, v5, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 912
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 913
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    :goto_1
    iget-object v9, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 923
    move-object v4, v1

    .line 926
    :cond_1
    invoke-direct {p0, v8, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->attachCloseItemBtnListener(Landroid/view/View;I)V

    .line 927
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-direct {p0, v9, v8, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->attachCallBtnListener(Landroid/database/Cursor;Landroid/view/View;I)V

    .line 928
    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-direct {p0, v9, v8, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->attachMessageBtnListener(Landroid/database/Cursor;Landroid/view/View;I)V

    .line 929
    iput-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    .line 930
    return-object v8

    .line 898
    :cond_2
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    if-eq v2, v9, :cond_0

    .line 903
    iget-object v9, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 905
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {p0, v5, v1, v9, v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 907
    :cond_3
    iget-object v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_4
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleItemButton(Landroid/view/View;Landroid/content/Context;II)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "pos"
    .parameter "ACTION_STATE"

    .prologue
    .line 995
    const v7, 0x7f060028

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 996
    .local v0, iconCall:Landroid/widget/ImageView;
    const v7, 0x7f060029

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 997
    .local v2, iconMsg:Landroid/widget/ImageView;
    const v7, 0x7f06002a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 998
    .local v1, iconClose:Landroid/widget/ImageView;
    const-string v4, ""

    .line 999
    .local v4, number:Ljava/lang/String;
    new-instance v7, Ljava/util/Timer;

    const-string v8, "timer"

    invoke-direct {v7, v8}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mTimer:Ljava/util/Timer;

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1001
    .local v5, parent:Landroid/view/View;
    const v7, 0x7f060027

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1002
    .local v3, item:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1003
    const v7, 0x7f06002b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1004
    .local v6, text:Landroid/widget/TextView;
    packed-switch p4, :pswitch_data_0

    .line 1022
    :goto_0
    return-void

    .line 1006
    :pswitch_0
    const v7, 0x7f090010

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1007
    const v7, 0x7f0200fe

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1008
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1009
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v7, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 1010
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1011
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mTimer:Ljava/util/Timer;

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v9, 0x96

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1014
    :pswitch_1
    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1015
    const v7, 0x7f020100

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1016
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v7, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 1018
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1019
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mTimer:Ljava/util/Timer;

    new-instance v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v9, 0x96

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1004
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processMissingImageItems()V
    .locals 3

    .prologue
    .line 1180
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1181
    .local v1, iv:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sendFetchImageMessage(Landroid/view/View;)V

    goto :goto_0

    .line 1183
    .end local v1           #iv:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private queryContactInfo(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;)V
    .locals 10
    .parameter "ciq"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 347
    .local v7, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-eqz v7, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    if-eq v7, v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :goto_0
    if-eqz v7, :cond_1

    .line 405
    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->updateCallLog(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;)V

    .line 407
    :cond_1
    return-void

    .line 352
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 355
    :cond_2
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .end local v7           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    invoke-direct {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;-><init>()V

    .line 357
    .restart local v7       #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    iget v1, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    iget-object v2, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->GetCityID(Landroid/database/Cursor;ILjava/lang/String;)Lcom/cequint/cityid/android/CityIdContact;

    move-result-object v6

    .line 358
    .local v6, cityId:Lcom/cequint/cityid/android/CityIdContact;
    iget-object v0, v6, Lcom/cequint/cityid/android/CityIdContact;->m_strCityName:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->city:Ljava/lang/String;

    .line 359
    iget-object v0, v6, Lcom/cequint/cityid/android/CityIdContact;->m_strCountryName:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->country:Ljava/lang/String;

    .line 360
    iget-object v0, v6, Lcom/cequint/cityid/android/CityIdContact;->m_strStateName:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->state:Ljava/lang/String;

    .line 361
    iget-object v0, v6, Lcom/cequint/cityid/android/CityIdContact;->m_strStateAbrv:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->stateAbbr:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 368
    .local v8, phonesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_7

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 370
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    .line 373
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 374
    const-string v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->number:Ljava/lang/String;

    .line 375
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    .line 376
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    .line 377
    const-string v0, "label"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 381
    .local v9, rawCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 382
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 383
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    .line 386
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 390
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    .end local v9           #rawCursor:Landroid/database/Cursor;
    :cond_6
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 393
    .restart local v9       #rawCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 395
    .end local v9           #rawCursor:Landroid/database/Cursor;
    :cond_8
    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private sendFetchImageMessage(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1186
    const v2, 0x7f06002e

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;

    .line 1187
    .local v0, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;
    if-nez v0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;->contactId:Ljava/lang/Integer;

    .line 1191
    .local v1, photoId:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;

    invoke-direct {v2, p0, v1, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Ljava/lang/Integer;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mImageFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;

    .line 1195
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    monitor-enter v2

    .line 1197
    :try_start_0
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_2

    .line 1201
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 1203
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mImageFetcher:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageDbFetcher;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1204
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setViewVisibility(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 474
    const v2, 0x7f06002c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 475
    .local v0, item:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 476
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 479
    :cond_0
    const v2, 0x7f060027

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 480
    .local v1, section:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 481
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 483
    :cond_1
    return-void
.end method

.method private updateCallLog(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;)V
    .locals 9
    .parameter "ciq"
    .parameter "ci"

    .prologue
    const-string v8, "Exception while updating call info"

    const-string v7, "Call Log Cursor Adapter"

    .line 290
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 304
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "contactid"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v3, "name_reversed"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "raw_contact_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    .local v2, where:Ljava/lang/StringBuffer;
    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 319
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 320
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 321
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 322
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 323
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateItem(Landroid/view/View;Landroid/content/Context;II)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "pos"
    .parameter "ACTION"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f06002c

    const/4 v5, 0x0

    .line 1076
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1081
    .local v3, parent:Landroid/view/View;
    packed-switch p4, :pswitch_data_0

    .line 1099
    :goto_0
    return-void

    .line 1083
    :pswitch_0
    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1084
    .local v2, item:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1085
    const v4, 0x7f040002

    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1086
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;

    const/4 v5, 0x2

    invoke-direct {v4, p0, p3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;IILcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1087
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1090
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v2           #item:Landroid/view/View;
    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1091
    .restart local v2       #item:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1092
    const/high16 v4, 0x7f04

    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1093
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1094
    .local v1, animView:Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p3, v5, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;IILcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1095
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->resetSwept()V

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public GetCityID(Landroid/database/Cursor;ILjava/lang/String;)Lcom/cequint/cityid/android/CityIdContact;
    .locals 4
    .parameter "cursor"
    .parameter "callType"
    .parameter "number"

    .prologue
    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, cidContact:Lcom/cequint/cityid/android/CityIdContact;
    const-string v1, "CallLogCursorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callType =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, p3, v2}, Lcom/cequint/cityid/android/CityIdContact;->doLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/cequint/cityid/android/CityIdContact;

    move-result-object v0

    .line 1161
    return-object v0

    .line 1160
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 487
    if-nez p3, :cond_0

    .line 741
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->setViewVisibility(Landroid/view/View;)V

    .line 491
    const/16 v29, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-gez v29, :cond_2

    .line 492
    const v29, 0x7f060044

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 493
    .local v7, Seperate:Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 494
    const/16 v29, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 499
    .local v12, iTag:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    .end local v7           #Seperate:Landroid/widget/TextView;
    .end local v12           #iTag:Ljava/lang/Integer;
    :cond_2
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 502
    .restart local v12       #iTag:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 504
    const v29, 0x7f060034

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 505
    .local v15, mainText:Landroid/widget/TextView;
    const v29, 0x7f060038

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/sec/android/app/dialertab/util/TextViewDT;

    .line 506
    .local v25, subText:Lcom/sec/android/app/dialertab/util/TextViewDT;
    const v29, 0x7f06003b

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 507
    .local v26, timeText:Landroid/widget/TextView;
    const v29, 0x7f060036

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 508
    .local v8, callIndiImage:Landroid/widget/ImageView;
    const v29, 0x7f06003e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 511
    .local v14, logTypeImage:Landroid/widget/ImageView;
    const/16 v29, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 512
    .local v19, number:Ljava/lang/String;
    const-string v29, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090030

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 516
    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 517
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 524
    :cond_3
    :goto_1
    const/16 v29, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 525
    .local v9, date:J
    const/16 v29, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 527
    .local v11, iCallType:I
    const/4 v6, 0x0

    .line 528
    .local v6, Logname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 529
    const/16 v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 532
    :goto_2
    const/16 v17, 0x0

    .line 535
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 538
    .local v13, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    const/16 v29, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 540
    .local v5, ContactId:Ljava/lang/Integer;
    if-nez v13, :cond_c

    .line 543
    sget-object v13, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 545
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v6

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 571
    :cond_4
    :goto_3
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 572
    move-object/from16 v17, v6

    .line 575
    :cond_5
    move-object/from16 v18, v19

    .line 576
    .local v18, num:Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 577
    const/16 v29, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x320

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 578
    const-string v29, "messageid"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 579
    .local v16, message_id:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 581
    const v29, 0x7f02010a

    move-object v0, v14

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    new-instance v29, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    .end local v16           #message_id:Ljava/lang/String;
    :cond_6
    :goto_4
    move-object/from16 v28, p1

    .line 615
    .local v28, viewToUse:Landroid/view/View;
    const v29, 0x7f06002f

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 616
    .local v27, viewToImage:Landroid/widget/ImageView;
    const v29, 0x7f060030

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/QuickContactBadge;

    .line 617
    .local v21, photoQ:Landroid/widget/QuickContactBadge;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    .line 618
    .local v22, position:I
    const v29, 0x7f06002e

    new-instance v30, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;

    move-object/from16 v0, v30

    move/from16 v1, v22

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$Info;-><init>(ILjava/lang/Integer;)V

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 619
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    if-eqz v29, :cond_15

    .line 620
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 621
    const/16 v29, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    const/16 v20, 0x0

    .line 624
    .local v20, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;

    .line 625
    .local v23, ref:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    if-nez v23, :cond_12

    .line 626
    const v29, 0x7f02009d

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sendFetchImageMessage(Landroid/view/View;)V

    .line 660
    .end local v20           #photo:Landroid/graphics/Bitmap;
    .end local v23           #ref:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    :cond_7
    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setExtendedData(Ljava/lang/String;)V

    .line 663
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_16

    .line 665
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 706
    const v29, 0x7f09002f

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 707
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    new-instance v29, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    .line 730
    :pswitch_0
    const v29, 0x7f0200b3

    move-object v0, v8

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 518
    .end local v5           #ContactId:Ljava/lang/Integer;
    .end local v6           #Logname:Ljava/lang/String;
    .end local v9           #date:J
    .end local v11           #iCallType:I
    .end local v13           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #num:Ljava/lang/String;
    .end local v21           #photoQ:Landroid/widget/QuickContactBadge;
    .end local v22           #position:I
    .end local v27           #viewToImage:Landroid/widget/ImageView;
    .end local v28           #viewToUse:Landroid/view/View;
    :cond_9
    const-string v29, "-2"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090031

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 520
    :cond_a
    const-string v29, "-3"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f090032

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 531
    .restart local v6       #Logname:Ljava/lang/String;
    .restart local v9       #date:J
    .restart local v11       #iCallType:I
    :cond_b
    const/16 v29, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 546
    .restart local v5       #ContactId:Ljava/lang/Integer;
    .restart local v13       #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    .restart local v17       #name:Ljava/lang/String;
    :cond_c
    sget-object v29, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    move-object v0, v13

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mIsReverseName:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 551
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v6

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 556
    :cond_d
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 558
    :cond_e
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v6

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 563
    :cond_f
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 597
    .restart local v18       #num:Ljava/lang/String;
    :cond_10
    const/16 v29, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 598
    const v29, 0x7f0200f7

    move-object v0, v14

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    const-string v29, "CallLogCursorAdapter"

    const-string v30, "correctly detected log type for Call"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v29, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 608
    :cond_11
    const v29, 0x7f0200f7

    move-object v0, v14

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 611
    const-string v29, "CallLogCursorAdapter"

    const-string v30, "correctly detected log type for Video Call"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 636
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    .restart local v21       #photoQ:Landroid/widget/QuickContactBadge;
    .restart local v22       #position:I
    .restart local v23       #ref:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    .restart local v27       #viewToImage:Landroid/widget/ImageView;
    .restart local v28       #viewToUse:Landroid/view/View;
    :cond_12
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    .line 637
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->Photo:Ljava/lang/ref/SoftReference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v20

    .end local v20           #photo:Landroid/graphics/Bitmap;
    check-cast v20, Landroid/graphics/Bitmap;

    .line 638
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    :cond_13
    if-nez v20, :cond_14

    .line 639
    const v29, 0x7f02009d

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 643
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->LookupKey:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_5

    .line 641
    :cond_14
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 646
    .end local v20           #photo:Landroid/graphics/Bitmap;
    .end local v23           #ref:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    :cond_15
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    const v29, 0x7f02009d

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 648
    const/16 v29, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_5

    .line 669
    :cond_16
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    const-string v24, ""

    .line 673
    .local v24, sOut:Ljava/lang/String;
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->city:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_17

    .line 674
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->city:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 677
    :cond_17
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->stateAbbr:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_18

    .line 678
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1b

    const-string v30, ", "

    :goto_9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->stateAbbr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 681
    :cond_18
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->country:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_19

    .line 682
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1c

    const-string v30, ", "

    :goto_a
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->country:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 686
    :cond_19
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->city:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1a

    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->state:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_1a

    .line 687
    move-object v0, v13

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->state:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 690
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_1d

    .line 691
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setFullText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 678
    :cond_1b
    const-string v30, ""

    goto :goto_9

    .line 682
    :cond_1c
    const-string v30, ""

    goto :goto_a

    .line 693
    :cond_1d
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 710
    .end local v24           #sOut:Ljava/lang/String;
    :cond_1e
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 711
    const v29, 0x7f090034

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 712
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 733
    :pswitch_1
    const v29, 0x7f02009e

    move-object v0, v8

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 736
    :pswitch_2
    const v29, 0x7f0200a9

    move-object v0, v8

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 464
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearImageFetching()V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 469
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->hasRedrawMessage:Z

    .line 471
    return-void

    .line 469
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public checkBitmapCacheConsistency()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 257
    .local v11, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v11, :cond_1

    .line 285
    :cond_0
    return-void

    .line 261
    :cond_1
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 262
    .local v10, key:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;

    .line 263
    .local v12, pInfo:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;
    if-eqz v12, :cond_2

    .line 264
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    .local v6, buffer:Ljava/lang/StringBuffer;
    const-string v0, "_id"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->CONTACT_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 271
    .local v7, contactCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    const-string v0, "photo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 274
    .local v9, idx:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 275
    .local v13, photoId:I
    iget v0, v12, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$PhotoInfo;->photoId:I

    if-eq v13, v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v9           #idx:I
    .end local v13           #photoId:I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 249
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    return-void

    .line 246
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 249
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public clearImageFetching()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    monitor-enter v0

    .line 1170
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 1171
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1172
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 1174
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mImageFetchHandler:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ImageFetchHandler;->clearImageFecthing()V

    .line 1177
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public closeSweptItem()V
    .locals 7

    .prologue
    const v6, 0x7f06002c

    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v3

    .line 1145
    .local v3, sweptPos:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, item:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #item:Landroid/view/View;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1148
    .restart local v2       #item:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1149
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f04

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1150
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, animView:Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;IILcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1152
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1153
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->resetSwept()V

    .line 1155
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #animView:Landroid/view/View;
    .end local v2           #item:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    .locals 1
    .parameter "number"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContactInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    return-object p0
.end method

.method public getSweptPosition()I
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    iget-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mSweptId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getPositionById(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1138
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->INCORRECT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->isSweptView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    .line 771
    :cond_0
    if-eqz p2, :cond_1

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getInt(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 775
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030003

    if-eq v0, v1, :cond_1

    .line 776
    const/4 p2, 0x0

    .line 783
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f030001

    if-eq v0, v1, :cond_1

    .line 779
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const-string v3, "test"

    const-string v2, "isEmpty() "

    .line 216
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEmpty() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_0
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEmpty() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    if-nez v0, :cond_0

    move v0, v2

    .line 760
    :goto_0
    return v0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 748
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getCount()I

    move-result v0

    if-le p1, v0, :cond_2

    :cond_1
    move v0, v2

    .line 749
    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getInt(I)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v2

    .line 754
    goto :goto_0

    .line 756
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 760
    goto :goto_0
.end method

.method protected isSweptView(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    if-eqz v1, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    iget-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mSweptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getPositionById(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1070
    .local v0, pos:I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 1072
    .end local v0           #pos:I
    :goto_0
    return v1

    .restart local v0       #pos:I
    :cond_0
    move v1, v4

    .line 1070
    goto :goto_0

    .end local v0           #pos:I
    :cond_1
    move v1, v4

    .line 1072
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f030003

    const v2, 0x7f030001

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 793
    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 794
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 800
    :goto_0
    return-object v0

    .line 796
    :cond_0
    invoke-static {p1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 797
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method public resetSwept()V
    .locals 2

    .prologue
    .line 863
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->INCORRECT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mSweptId:J

    .line 864
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 415
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mDone:Z

    if-nez v2, :cond_2

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    move-object v1, v0

    .line 431
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v1, :cond_0

    .line 433
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->queryContactInfo(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;)V

    goto :goto_0

    .line 425
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 426
    :catch_0
    move-exception v2

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 436
    .end local v1           #ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    :cond_2
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mLoading:Z

    .line 194
    return-void
.end method

.method setScroll(I)V
    .locals 2
    .parameter "scroll"

    .prologue
    .line 199
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    .line 201
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->hasRedrawMessage:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->hasRedrawMessage:Z

    .line 206
    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->clearImageFetching()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->processMissingImageItems()V

    goto :goto_0
.end method

.method public setSwept(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->moveToPosition(I)Z

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mSweptId:J

    .line 860
    :cond_0
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mDone:Z

    .line 232
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mDone:Z

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 241
    :cond_0
    return-void
.end method
