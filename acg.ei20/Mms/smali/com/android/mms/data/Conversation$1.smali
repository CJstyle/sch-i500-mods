.class Lcom/android/mms/data/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$exit:Ljava/lang/Runnable;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/data/Conversation$1;->val$exit:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v3, "(seen=0)"

    .line 357
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 358
    const/4 v7, 0x1

    .line 360
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "(seen=0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 364
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 366
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_0
    if-eqz v7, :cond_1

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": update seen for thread uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)V

    .line 374
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$300()Landroid/content/ContentValues;

    move-result-object v2

    const-string v5, "(seen=0)"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->val$exit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 379
    return-void

    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :cond_2
    move v7, v8

    .line 364
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
