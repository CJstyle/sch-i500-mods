.class Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 172
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$100(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, shareInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 177
    .local v5, mimeType:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 179
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    #setter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v8, v7}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$302(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    .line 188
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 190
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 192
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 194
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v4, v5}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$400(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v1           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->video_uri:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$500(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->videoId:J
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$600(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)J

    move-result-wide v9

    #calls: Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->singleSend(Ljava/lang/String;J)V
    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$700(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Ljava/lang/String;J)V

    .line 200
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    return-void
.end method
