.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$600(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$702(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z

    .line 319
    sget-object v0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$800(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070036

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->changeListView(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$900(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mListType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$600(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->ExceptThumnail:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$702(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->deleteBookmarkListArrayList()Z
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$3;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->changeListView(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$900(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V

    goto :goto_0
.end method
