.class final Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FrequentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_QUERY_ENTITIES:I = 0x5

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static mContentResover:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 201
    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->mContentResover:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 292
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 294
    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->mContentResover:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 287
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    .line 299
    .local v0, activity:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
    const-string v2, "FreqTAG"

    const-string v3, "onQueryComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    move-result-object v1

    .line 303
    .local v1, callsAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setLoading(Z)V

    .line 304
    invoke-virtual {v1, p3}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 305
    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    .line 306
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 310
    .end local v1           #callsAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
