.class Lcom/android/music/list/activity/MpMainTabActivity$1;
.super Landroid/database/ContentObserver;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$1;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    .line 269
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$1;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localObserver::onChange - selfChange : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$1;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$1;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 274
    .local v3, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v1

    .line 276
    .local v1, listType:I
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 277
    const/4 v4, -0x1

    invoke-static {v1, v4}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v2

    .line 278
    .local v2, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$1;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 280
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
